@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW FOR ZINV_SLOW_MOV_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_SLOW_MOV_DS as select from ZINV_SLOW_MOV_DS
association to parent Zcds_CURRSTOCK_DS as _STOCK
    on $projection.Materialid = _STOCK.Materialid
{
    key materialid as Materialid,
    plant as Plant,
    storagelocation as Storagelocation,
    lastmovdate as Lastmovdate,
    dayswithoutmovement as Dayswithoutmovement,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    @SEMANTICS.amount.currencyCode: 'Currency'
    value as Value,
    currency as Currency,
    _STOCK
}
