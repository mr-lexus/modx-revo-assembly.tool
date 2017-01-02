/**
 * ToggleTVSet Init Script
 *
 * @package toggletvset
 * @subpackage init script
 */

Ext.onReady(function () {
    // Show/Hide a set of template variables
    ToggleTVSet.toggleTVSet = function (tvs, show) {
        var field;
        Ext.each(tvs, function (tv) {
            field = Ext.get('tv' + tv + '-tr');
            if (field) {
                if (show) {
                    field.setStyle('display', 'block');
                } else {
                    field.setStyle('display', 'none');
                }
            }
        });
        if (ToggleTVSet.options.debug) {
            console.log('ToggleTVSet triggered tvs(' + tvs + ') set to ' + ((show) ? 'show' : 'hide') + '.');
        }
    };

    // Toggle a set of template variables by the value of a TV
    ToggleTVSet.toggleTVSets = function (tv, init) {
        var hideTVs, showTVs;

        if (init) {
            hideTVs = tv.hideTVs;
            showTVs = tv.showTVs;
        } else {
            hideTVs = tv.store.data.keys.join().split(',');
            showTVs = tv.getValue().split(',');
        }

        ToggleTVSet.toggleTVSet(hideTVs, 0);
        ToggleTVSet.toggleTVSet(showTVs, 1);

        if (!init && ToggleTVSet.options.toggleTVsClearHidden) {
            var clearTVs = hideTVs.filter(function (el) {
                return showTVs.indexOf(el) === -1;
            });
            ToggleTVSet.clearTVSet(clearTVs);
        }
    };

    // Clear a set of template variables
    ToggleTVSet.clearTVSet = function (tvs) {
        Ext.each(tvs, function (tv) {
            var field = ToggleTVSet.options.resourceForm.findField('tv' + tv);
            if (field) {
                field.setValue('');
            }
        });
    };

    if (ToggleTVSet.options.debug) {
        Ext.util.Observable.capture(Ext.getCmp('modx-panel-resource'), function (e) {
            console.log(e, arguments);
        });
    }

    ToggleTVSet.options.resourcePanel = Ext.getCmp('modx-panel-resource');
    ToggleTVSet.options.resourceForm = ToggleTVSet.options.resourcePanel.getForm();
    ToggleTVSet.options.initialized = false;

    ToggleTVSet.options.resourcePanel.on('afterlayout', function () {

        if (!ToggleTVSet.options.initialized) {
            Ext.each(ToggleTVSet.options.toggleTVs, function (toggleTV) {
                ToggleTVSet.toggleTVSets(ToggleTVSet.options, true);

                var field = ToggleTVSet.options.resourceForm.findField('tv' + toggleTV);
                if (field) {
                    field.on('select', function () {
                        ToggleTVSet.toggleTVSets(this, false);
                    });
                }
            });
        }
        ToggleTVSet.options.initialized = true;
    });
});