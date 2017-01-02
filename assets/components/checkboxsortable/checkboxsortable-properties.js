Ext.ns('CheckboxSortable');

CheckboxSortable.tvProperties = function(config) {
    config = config || {};
    this.record = config.record || {};

    Ext.apply(config, {
        xtype: 'panel'
        ,layout: 'form'
        ,autoHeight: true
        ,labelAlign: 'top'
        ,cls: 'form-with-labels'
        ,border: false
        ,defaults: {
            anchor: '100%'
            ,listeners: {
                change: {
                    fn: function() {
                        Ext.getCmp('modx-panel-tv').markDirty();
                    }
                    ,scope: this
                }
            }
        }
        ,items: [{
            xtype: 'combo-boolean'
            ,fieldLabel: _('checkboxsortable.property_autoplace')
            ,description: MODx.expandHelp ? '' : _('checkboxsortable.property_autoplace_desc')
            ,name: 'inopt_autoplace'
            ,hiddenName: 'inopt_autoplace'
            ,id: 'inopt_autoplace{/literal}{$tv}{literal}'
            ,value: !(this.record['autoplace'] == 0 || this.record['autoplace'] == 'false')
            ,listWidth: false
        },{
            xtype: MODx.expandHelp ? 'label' : 'hidden'
            ,html: _('checkboxsortable.property_autoplace_desc')
            ,cls: 'desc-under'
        }]
        ,listeners: {
            afterRender: function() {
                var container = Ext.getCmp('modx-tv-form');
                if (container) {
                    this.listenForResize(container.ownerCt, ['tabChange', 'resize']);
                }
            }
            ,scope: this
        }

    });
    CheckboxSortable.tvProperties.superclass.constructor.call(this, config);
};
Ext.extend(CheckboxSortable.tvProperties, MODx.Panel, {
    /**
     * Add listeners for the given component (tab panel here)
     * @param {object} target The component to set listeners on
     * @param events An array of events to listen for
     */
    listenForResize: function(target, events) {
        Ext.each(events, function(event, idx, array) {
            target.on(event, function() {
                this._checkForResize(target.getActiveTab());
            }, this);
        }, this);
    }

    /**
     * Check if the desired component is in the given tab before redoing layout
     * @private
     */
    ,_checkForResize: function(tab) {
        if (tab.id == 'modx-panel-tv-input-properties') {
            this.doLayout();
        }
    }
});
Ext.reg('checkboxsortable-tv-properties', CheckboxSortable.tvProperties);