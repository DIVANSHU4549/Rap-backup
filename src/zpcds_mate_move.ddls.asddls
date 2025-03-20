@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION VIEW FOR ZCDS_MATE_MOVE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPCDS_MATE_MOVE as projection on ZCDS_MATE_MOVE
{
    @UI.facet: [{
 
          id: 'STOCK',
          purpose: #STANDARD,
          position: 10,
          label: 'MAT_MOV',
          type: #IDENTIFICATION_REFERENCE
 
      }]
     @UI.lineItem: [{ position : 10 }]
     @UI.identification: [{ position : 10 }]  
    key Materialid,
     @UI.lineItem: [{ position : 20 }]
     @UI.identification: [{ position : 20 }]
    key Movementid,
     @UI.lineItem: [{ position : 30 }]
     @UI.identification: [{ position : 30 }]
    Plant,
     @UI.lineItem: [{ position : 40 }]
     @UI.identification: [{ position : 40 }]
    Storagelocation,
     @UI.lineItem: [{ position : 50 }]
     @UI.identification: [{ position : 50 }]
    Movementtype,
     @UI.lineItem: [{ position : 60 }]
     @UI.identification: [{ position : 60 }]
    Quantity,
     @UI.lineItem: [{ position : 70 }]
     @UI.identification: [{ position : 70 }]
    Unitofmeasure,
     @UI.lineItem: [{ position : 80 }]
     @UI.identification: [{ position : 80 }]
    Movementdate,
    /* Associations */
    _STOCK: redirected to parent ZPCDS_CURRSTOCK_DS
}
