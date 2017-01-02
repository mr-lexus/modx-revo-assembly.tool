Ext.onReady(function() {
    var mainPanel = Ext.getCmp('modx-panel-resource')
    data = mainPanel.config.record,
        panelRight = Ext.getCmp('modx-resource-main-right'),
        tabpanel = Ext.getCmp('minishop2-product-settings-panel'),
        msoptionsprice_field = {

            xtype: 'numberfield',
            decimalPrecision: 2,
            value: '',
            name: 'msoptionsprice[]',
            fieldLabel: '',
            anchor: '30%',
            enableKeyEvents: true,
            listeners: {

                keyup: function() {

                    //console.log('клавиша');
                    var cmp = Ext.getCmp('modx-action-buttons');
                        if (cmp) {
                            for (var i in cmp.items.items) {
                                var el = cmp.items.items[i];
                                if ('button' == el.xtype && 'update' == el.process) {
                                    el.enable();
                                }
                            }
                        }

                },
            },

        },
        msoptionsprice_no = {

            html: _('msoptionsprice_intro_msg_no'),
            border: false,
            bodyStyle: 'background-color: #fff;margin: 16px 15px 20px 0;'


        },

        index = 1;

    tabpanel.add({
        title: _('msoptionsprice_title'),
        id: 'modx-msoptionsprice-tabs',
        enableToggle  : true,
        items: [
            // Блок HTML с описанием этой вкладки
            {
                html: _('msoptionsprice_intro_msg'),
                border: false,
                bodyStyle: 'background-color: #fff;margin: 16px 15px 20px 0;'

            }, {
                layout: 'column',
                border: false,
                bodyCssClass: 'tab-panel-wrapper ',

                items: [{
                    columnWidth: .7,
                    xtype: 'panel',
                    border: false,
                    layout: 'form',
                    labelAlign: 'top',
                    id: 'modx-resource-msoptionsprice',
                    preventRender: true,
                }, {
                    border: false,
                    columnWidth: .3
                }],
            }

        ]

    });

    var panel = Ext.getCmp('modx-resource-msoptionsprice')
    var ms_op_options = msoptionsprice.Config.ms_op_options;
    var size = data[ms_op_options];

    if (data.properties === null) {
        data.properties = msoptionsprice;
    }

    if ((size.length == 0)) {
        panel.add(msoptionsprice_no);
    }
    if ((size.length == 1)) {
        msoptionsprice_no.html = _('msoptionsprice_intro_msg_1');
        panel.add(msoptionsprice_no);
    }

    if ((typeof data.properties.msoptionsprice === 'object')) {

        var sizeprice = data.properties.msoptionsprice;

        for (var i = 0; i < size.length; i++) {
            msoptionsprice_field.value = sizeprice[size[i].value] || 0;
            msoptionsprice_field.fieldLabel = _('msoptionsprice_' + ms_op_options) + size[i].value; //ms_op_options
            msoptionsprice_field.name = 'msoptionsprice[' + size[i].value + ']';

            panel.add(msoptionsprice_field);
            index += 1;
        }

        panel.doLayout();
        msoptionsprice_field.value = '';
        msoptionsprice_field.openTo = '';
    }


    if (!data.properties.msoptionsprice && (size.length > 1)) {

        for (var i = 0; i < size.length; i++) {
            msoptionsprice_field.value = 0;
            msoptionsprice_field.fieldLabel = _('msoptionsprice_' + ms_op_options) + size[i].value;
            msoptionsprice_field.name = 'msoptionsprice[' + size[i].value + ']';

            panel.add(msoptionsprice_field);
            index += 1;
        }

    }

    

});

