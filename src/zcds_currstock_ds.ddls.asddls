@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for ZDT_CURRSTOCK_DS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zcds_CURRSTOCK_DS as select from zdt_currstock_ds
composition[0..*] of ZCDS_MATE_MOVE as _MATERIALMOVE
composition[0..1] of ZCDS_SLOW_MOV_DS as _SLOWMOVE
composition[0..1] of ZCDS_STOCK_VALUE as _STOCKVAL
{
    key materialid as Materialid,
    plant as Plant,
    storagelocation as Storagelocation,
    stocktype as Stocktype,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode: 'Currency'
    value as Value,
    currency as Currency,
    _MATERIALMOVE,
    _SLOWMOVE,
    _STOCKVAL
    
}
