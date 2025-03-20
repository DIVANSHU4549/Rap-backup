@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS FOR ZINV_MATE_MOVE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_MATE_MOVE as select from ZINV_MATE_MOVE
association to parent Zcds_CURRSTOCK_DS as _STOCK
    on $projection.Materialid = _STOCK.Materialid
{
    key materialid as Materialid,
    key movementid as Movementid,
    plant as Plant,
    storagelocation as Storagelocation,
    movementtype as Movementtype,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    movementdate as Movementdate,
    _STOCK
}
