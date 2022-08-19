@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forTravel'
@ObjectModel.semanticKey: [ 'TravelID' ]
@Search.searchable: true
define root view entity ZC_FE_Travel_002039
  as projection on ZI_FE_Travel_002039
{
  key TravelUUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      @EndUserText.label: 'Travel'
      @ObjectModel.text.element: ['Description']
      TravelID,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: '/DMO/I_Agency',
          element: 'AgencyID'
        }
      } ]
      @EndUserText.label: 'Agency'
      @ObjectModel.text.element: ['AgencyName']
      AgencyID,
      _Agency.Name                   as AgencyName,
      @EndUserText.label: 'Customer'
      @ObjectModel.text.element: ['LastName']
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: '/DMO/I_Customer',
          element: 'CustomerID'
        }
      } ]
      CustomerID,
      _Customer.LastName             as LastName,
      @EndUserText.label: 'Start Date'
      BeginDate,
      @EndUserText.label: 'End Date'
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @EndUserText.label: 'Booking Fee'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @EndUserText.label: 'Total Price'
      TotalPrice,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'I_Currency',
          element: 'Currency'
        }
      } ]
      CurrencyCode,
      Description,
      @EndUserText.label: 'Status'
      @ObjectModel.text.element: ['TravelStatusText']
      @Consumption.valueHelpDefinition: [ {
        entity : {
            name: 'ZI_FE_STAT_002039',
            element: 'TravelStatusId'
         }
      }]
      OverallStatus,
      _TravelStatus.TravelStatusText as TravelStatusText,
      OverallStatusCriticality,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      @EndUserText.label: 'Last Changed'
      LocalLastChangedAt,
      _Booking : redirected to composition child ZC_FE_Booking_002039,
      _Agency,
      _Currency,
      _Customer,
      _TravelStatus

}
