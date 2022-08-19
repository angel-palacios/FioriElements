@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Status view entity'
@ObjectModel.resultSet.sizeCategory: #XS -- dropdown menu for value help
define view entity zi_fe_stat_002039
  as select from zfe_astat_002039 as Status
{
      @UI.textArrangement: #TEXT_ONLY
      @ObjectModel.text.element: [ 'TravelStatusText' ]
  key Status.travel_status_id   as TravelStatusId,
      @UI.hidden: true
      Status.travel_status_text as TravelStatusText

}
