@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION VIEW FOR ZCDS_CURRSTOCK_DS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZPCDS_CURRSTOCK_DS provider contract transactional_query as projection on Zcds_CURRSTOCK_DS
{
@UI.facet: [{
 
          id: 'STOCK',
          purpose: #STANDARD,
          position: 10,
          label: 'MAT_ID',
          type: #IDENTIFICATION_REFERENCE     
      }]
    @UI.lineItem: [{ position : 10 }]
    @UI.identification: [{ position : 10 }]
    @UI.selectionField: [{ position : 10 }]  
    key Materialid,
    @UI.lineItem: [{ position : 20 }]
      @UI.identification: [{ position : 20 }]
       @UI.selectionField: [{ position : 20 }]
      Plant,
       @UI.lineItem: [{ position : 30 }]
      @UI.identification: [{ position : 30 }]
       @UI.selectionField: [{ position : 30 }]
      Storagelocation,
       @UI.lineItem: [{ position : 40 }]
      @UI.identification: [{ position : 40 }]
      Stocktype,
       @UI.lineItem: [{ position : 50 }]
      @UI.identification: [{ position : 50 }]
      Quantity,
       @UI.lineItem: [{ position : 60 }]
      @UI.identification: [{ position : 60 }]
      Unitofmeasure,
      @Semantics.amount.currencyCode: 'currency'
       @UI.lineItem: [{ position : 70 }]
      @UI.identification: [{ position : 70 }]
      Value,
       @UI.lineItem: [{ position : 80 }]
      @UI.identification: [{ position : 80 }]
      Currency,
    /* Associations */
    _MATERIALMOVE: redirected to composition child ZPCDS_MATE_MOVE,
    _SLOWMOVE: redirected to composition child ZPCDS_SLOW_MOV_DS,
    _STOCKVAL: redirected to composition child ZPCDS_STOCK_VALUE
}
