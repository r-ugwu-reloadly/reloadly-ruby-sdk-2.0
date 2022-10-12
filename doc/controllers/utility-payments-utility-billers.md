# Utility Payments-Utility Billers

```ruby
utility_payments_utility_billers_controller = client.utility_payments_utility_billers
```

## Class Name

`UtilityPaymentsUtilityBillersController`


# Reloadly-Utility-Payments-Billers

```ruby
def reloadly_utility_payments_billers(accept,
                                      authorization,
                                      id: nil,
                                      name: nil,
                                      type: nil,
                                      service_type: nil,
                                      country_iso_code: nil,
                                      page: nil,
                                      size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `id` | `Integer` | Query, Optional | This is the unique identification number of each biller. It uniquely identifies the biller servicing the utility. |
| `name` | `String` | Query, Optional | This indicates the biller's name. In situations where the biller's name is exceptionally long, partial names are used. |
| `type` | `String` | Query, Optional | This indicates the type of utility payment handled by the biller. Values included are ELECTRICITY_BILL_PAYMENT, WATER_BILL_PAYMENT, TV_BILL_PAYMENT and INTERNET_BILL_PAYMENT. |
| `service_type` | `String` | Query, Optional | This indicates the payment service type being rendered by the utility biller service. Examples are PREPAID and POSTPAID. |
| `country_iso_code` | `String` | Query, Optional | This indicates the ISO code of the country where the utility biller is operating in. |
| `page` | `Integer` | Query, Optional | This indicates the page of the billers list being retrieved. Default value is 1. |
| `size` | `Integer` | Query, Optional | This indicates the number of billers to be retrieved on a page. Default value is 200. |

## Server

`Server::UTILITY_PAYMENTS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.utilities-v1+json'
authorization = 'Bearer <YOUR TOKEN HERE>'
id = 12
name = 'Eko Electricity'
type = 'ELECTRICITY_BILL_PAYMENT'
service_type = 'PREPAID'
country_iso_code = 'KE'
page = 1
size = 10

result = utility_payments_utility_billers_controller.reloadly_utility_payments_billers(accept, authorization, id: id, name: name, type: type, service_type: service_type, country_iso_code: country_iso_code, page: page, size: size)
```

## Example Response

```
{
  "content": [
    {
      "id": 1,
      "name": "Ikeja Electricity Postpaid",
      "countryIsoCode": "NG",
      "type": "ELECTRICITY_BILL_PAYMENT",
      "serviceType": "POSTPAID",
      "localAmountSupported": true,
      "localTransactionCurrencyCode": "NGN",
      "minLocalTransactionAmount": 1000,
      "maxLocalTransactionAmount": 300000,
      "localTransactionFee": 227.83997,
      "localTransactionFeeCurrencyCode": "NGN",
      "localDiscountPercentage": 0,
      "internatonalAmountSupported": true,
      "internationalTransactionCurrencyCode": "INR",
      "minInternationalTransactionAmount": 194.73483,
      "maxInternationalTransactionAmount": 45567.996,
      "internationalTransactionFee": 227.83997,
      "internationalTransactionFeeCurrencyCode": "INR",
      "internationalDiscountPercentage": 0,
      "fx": [
        {
          "rate": 5.20265
        },
        {
          "curencyCode": "INR"
        }
      ]
    },
    {},
    {}
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |

