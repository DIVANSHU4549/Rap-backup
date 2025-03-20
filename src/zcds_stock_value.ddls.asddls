@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW FOR ZINV_STOCK_VALUE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_STOCK_VALUE as select from ZINV_STOCK_VALUE
association to parent Zcds_CURRSTOCK_DS as _STOCK
    on $projection.Materialid = _STOCK.Materialid
{
    key materialid as Materialid,
    plant as Plant,
    valuationtype as Valuationtype,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    @SEMANTICS.amount.currencyCode: 'Currency'
    value as Value,
    currency as Currency,
    valuationdate as Valuationdate,
    _STOCK
}
