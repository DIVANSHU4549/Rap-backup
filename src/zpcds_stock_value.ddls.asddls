@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION VIEW FOR ZCDS_STOCK_VALUE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPCDS_STOCK_VALUE as projection on ZCDS_STOCK_VALUE
{
     @UI.facet: [{
 
          id: 'STOCK',
          purpose: #STANDARD,
          position: 10,
          label: 'STOCK_VALUE',
          type: #IDENTIFICATION_REFERENCE
 
      }]
     @UI.lineItem: [{ position : 10 }]
     @UI.identification: [{ position : 10 }] 
    key Materialid,
     @UI.lineItem: [{ position : 20 }]
     @UI.identification: [{ position : 20 }] 
    Plant,
     @UI.lineItem: [{ position : 30 }]
     @UI.identification: [{ position : 30 }] 
    Valuationtype,
     @UI.lineItem: [{ position : 40 }]
     @UI.identification: [{ position : 40 }] 
    Quantity,
     @UI.lineItem: [{ position : 50 }]
     @UI.identification: [{ position : 50 }] 
    Unitofmeasure,
     @UI.lineItem: [{ position : 60 }]
     @UI.identification: [{ position : 60 }] 
     @Semantics.amount.currencyCode: 'Currency'
    Value,
     @UI.lineItem: [{ position : 70 }]
     @UI.identification: [{ position : 70 }] 
    Currency,
     @UI.lineItem: [{ position : 80 }]
     @UI.identification: [{ position : 80 }] 
    Valuationdate,
    /* Associations */
    _STOCK: redirected to parent ZPCDS_CURRSTOCK_DS
}
