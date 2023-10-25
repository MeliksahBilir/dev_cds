@AbapCatalog.sqlViewName: 'ZMBR_V_CDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lesson CDS 1'
define view ZMBR_LESSON_CDS
  as select from ekko
    inner join   ekpo on ekpo.ebeln = ekko.ebeln
    inner join   mara on mara.matnr = ekpo.matnr
    inner join   lfa1 on lfa1.lifnr = ekko.lifnr
    inner join   makt on  makt.matnr = mara.matnr
                      and makt.spras = $session.system_language
{
  ekpo.ebeln,
  ekpo.ebelp,
  ekpo.matnr,
  makt.maktx,
  ekpo.werks,
  ekpo.lgort,
  ekpo.meins,
  lfa1.lifnr,
  lfa1.name1,
  concat_with_space( lfa1.stras, lfa1.mcod3, 1 ) as satici_adresi

}
