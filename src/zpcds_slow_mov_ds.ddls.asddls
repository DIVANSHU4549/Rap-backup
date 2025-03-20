@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION VIEW FOR ZCDS_SLOW_MOV_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPCDS_SLOW_MOV_DS as projection on ZCDS_SLOW_MOV_DS
{
        @UI.facet: [{
 
          id: 'SLOW',
          purpose: #STANDARD,
          position: 10,
          label: 'SLOW_MOVE',
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
    Storagelocation,
     @UI.lineItem: [{ position : 40 }]
     @UI.identification: [{ position : 40 }] 
    Lastmovdate,
     @UI.lineItem: [{ position : 50 }]
     @UI.identification: [{ position : 50 }] 
    Dayswithoutmovement,
     @UI.lineItem: [{ position : 60 }]
     @UI.identification: [{ position : 60 }] 
    Quantity,
     @UI.lineItem: [{ position : 70 }]
     @UI.identification: [{ position : 70 }] 
    Unitofmeasure,
     @UI.lineItem: [{ position : 80 }]
     @UI.identification: [{ position : 80 }] 
     @Semantics.amount.currencyCode: 'Currency'
    Value,
     @UI.lineItem: [{ position : 90 }]
     @UI.identification: [{ position : 90 }] 
    Currency,
    /* Associations */
    _STOCK: redirected to parent ZPCDS_CURRSTOCK_DS
}
