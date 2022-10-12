# Airtime-Operators

```ruby
airtime_operators_controller = client.airtime_operators
```

## Class Name

`AirtimeOperatorsController`

## Methods

* [Reloadly-Airtime-Operators](../../doc/controllers/airtime-operators.md#reloadly-airtime-operators)
* [Reloadly-Airtime-Operator-Autodetect](../../doc/controllers/airtime-operators.md#reloadly-airtime-operator-autodetect)
* [Reloadly-Airtime-Operator-by-Id](../../doc/controllers/airtime-operators.md#reloadly-airtime-operator-by-id)
* [Reloadly-Airtime-Operator-by-Iso](../../doc/controllers/airtime-operators.md#reloadly-airtime-operator-by-iso)


# Reloadly-Airtime-Operators

```ruby
def reloadly_airtime_operators(accept,
                               authorization,
                               include_bundles: nil,
                               include_data: nil,
                               suggested_amounts_map: nil,
                               size: nil,
                               page: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `include_bundles` | `String` | Query, Optional | Indicates if any airtime and data bundles being offered by the operator should be included in the API response. Default value is true. |
| `include_data` | `String` | Query, Optional | Indicates if any airtime or data plans being offered by the operator should be included in the API response. Default value is true. |
| `suggested_amounts_map` | `String` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |
| `size` | `String` | Query, Optional | This indicates the number of operators to be retrieved on a page. Default value is 200. |
| `page` | `String` | Query, Optional | This indicates the page of the operator list being retrieved. Default value is 1. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
include_bundles = 'true'
include_data = 'true'
suggested_amounts_map = 'false'
size = '10'
page = '2'

result = airtime_operators_controller.reloadly_airtime_operators(accept, authorization, include_bundles: include_bundles, include_data: include_data, suggested_amounts_map: suggested_amounts_map, size: size, page: page)
```

## Example Response

```
{
  "content": [
    {
      "id": 88,
      "operatorId": 88,
      "name": "Movistar Colombia",
      "bundle": false,
      "data": false,
      "pin": false,
      "supportsLocalAmounts": false,
      "denominationType": "RANGE",
      "senderCurrencyCode": "USD",
      "senderCurrencySymbol": "$",
      "destinationCurrencyCode": "COP",
      "destinationCurrencySymbol": "$",
      "commission": 4.42,
      "internationalDiscount": 4.42,
      "localDiscount": 0,
      "mostPopularAmount": null,
      "minAmount": 5,
      "maxAmount": 5,
      "localMinAmount": null,
      "localMaxAmount": null,
      "country": {
        "isoName": "CO",
        "name": "Colombia"
      },
      "fx": {
        "rate": 2192.1867,
        "currencyCode": "COP"
      },
      "logoUrls": [
        "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-1.png",
        "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-2.png",
        "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-3.png"
      ],
      "fixedAmounts": [],
      "fixedAmountsDescriptions": [],
      "localFixedAmounts": [],
      "localFixedAmountsDescriptions": [],
      "suggestedAmounts": [
        7,
        10,
        15
      ],
      "suggestedAmountsMap": {
        "7": 19482.51,
        "10": 27832.16,
        "15": 41748.23
      },
      "promotions": []
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


# Reloadly-Airtime-Operator-Autodetect

```ruby
def reloadly_airtime_operator_autodetect(accept,
                                         authorization,
                                         phone,
                                         countryisocode,
                                         countrycode,
                                         suggested_amounts: nil,
                                         suggested_amounts_map: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `phone` | `String` | Template, Required | The mobile number whose details are to be retrieved. |
| `countryisocode` | `String` | Template, Required | The ISO code of the country where the mobile number is registered. |
| `countrycode` | `String` | Template, Required | - |
| `suggested_amounts` | `TrueClass\|FalseClass` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |
| `suggested_amounts_map` | `TrueClass\|FalseClass` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
phone = '8147658721'
countryisocode = 'US'
countrycode = 'countrycode6'
suggested_amounts = false
suggested_amounts_map = true

result = airtime_operators_controller.reloadly_airtime_operator_autodetect(accept, authorization, phone, countryisocode, countrycode, suggested_amounts: suggested_amounts, suggested_amounts_map: suggested_amounts_map)
```

## Example Response

```
{
  "id": 88,
  "operatorId": 88,
  "name": "Movistar Colombia",
  "bundle": false,
  "data": false,
  "pin": false,
  "supportsLocalAmounts": false,
  "denominationType": "RANGE",
  "senderCurrencyCode": "USD",
  "senderCurrencySymbol": "$",
  "destinationCurrencyCode": "COP",
  "destinationCurrencySymbol": "$",
  "commission": 4.42,
  "internationalDiscount": 4.42,
  "localDiscount": 0,
  "mostPopularAmount": null,
  "minAmount": 5,
  "maxAmount": 5,
  "localMinAmount": null,
  "localMaxAmount": null,
  "country": {
    "isoName": "CO",
    "name": "Colombia"
  },
  "fx": {
    "rate": 2192.1867,
    "currencyCode": "COP"
  },
  "logoUrls": [
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-1.png",
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-2.png",
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-3.png"
  ],
  "fixedAmounts": [],
  "fixedAmountsDescriptions": [],
  "localFixedAmounts": [],
  "localFixedAmountsDescriptions": [],
  "suggestedAmounts": [
    7,
    10,
    15
  ],
  "suggestedAmountsMap": {
    "7": 19482.51,
    "10": 27832.16,
    "15": 41748.23
  },
  "promotions": []
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Country code must be 2 characters ISO-Alpha-2 country code. See https://www.iban.com/country-codes | `APIException` |


# Reloadly-Airtime-Operator-by-Id

```ruby
def reloadly_airtime_operator_by_id(accept,
                                    authorization,
                                    operatorid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `operatorid` | `String` | Template, Required | The operator's identification number. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
operatorid = '88'

result = airtime_operators_controller.reloadly_airtime_operator_by_id(accept, authorization, operatorid)
```

## Example Response

```
{
  "id": 88,
  "operatorId": 88,
  "name": "Movistar Colombia",
  "bundle": false,
  "data": false,
  "pin": false,
  "supportsLocalAmounts": false,
  "denominationType": "RANGE",
  "senderCurrencyCode": "USD",
  "senderCurrencySymbol": "$",
  "destinationCurrencyCode": "COP",
  "destinationCurrencySymbol": "$",
  "commission": 4.42,
  "internationalDiscount": 4.42,
  "localDiscount": 0,
  "mostPopularAmount": null,
  "minAmount": 5,
  "maxAmount": 5,
  "localMinAmount": null,
  "localMaxAmount": null,
  "country": {
    "isoName": "CO",
    "name": "Colombia"
  },
  "fx": {
    "rate": 2192.1867,
    "currencyCode": "COP"
  },
  "logoUrls": [
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-1.png",
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-2.png",
    "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-3.png"
  ],
  "fixedAmounts": [],
  "fixedAmountsDescriptions": [],
  "localFixedAmounts": [],
  "localFixedAmountsDescriptions": [],
  "suggestedAmounts": [
    7,
    10,
    15
  ],
  "suggestedAmountsMap": {
    "7": 19482.51,
    "10": 27832.16,
    "15": 41748.23
  },
  "promotions": []
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Operator not found for given id | `APIException` |


# Reloadly-Airtime-Operator-by-Iso

```ruby
def reloadly_airtime_operator_by_iso(accept,
                                     authorization,
                                     countrycode,
                                     include_bundles,
                                     suggested_amounts_map: nil,
                                     suggested_amounts: nil,
                                     include_pin: nil,
                                     include_data: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Query, Required | - |
| `countrycode` | `String` | Template, Required | The ISO code of the country where the operator is registered. |
| `include_bundles` | `TrueClass\|FalseClass` | Query, Required | Indicates if any airtime and data bundles being offered by the operator should be returned as a response. Default value is true. |
| `suggested_amounts_map` | `TrueClass\|FalseClass` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |
| `suggested_amounts` | `String` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |
| `include_pin` | `TrueClass\|FalseClass` | Query, Optional | Indicates if PIN details if applicable to the operator, should be returned as a response. Default value is true. |
| `include_data` | `TrueClass\|FalseClass` | Query, Optional | Indicates if any data plans being offered by the operator should be returned as a response. Default value is true. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
countrycode = 'US'
include_bundles = false
suggested_amounts_map = false
suggested_amounts = 'false'
include_pin = false
include_data = false

result = airtime_operators_controller.reloadly_airtime_operator_by_iso(accept, authorization, countrycode, include_bundles, suggested_amounts_map: suggested_amounts_map, suggested_amounts: suggested_amounts, include_pin: include_pin, include_data: include_data)
```

## Example Response

```
{
  "example": {
    "id": 88,
    "operatorId": 88,
    "name": "Movistar Colombia",
    "bundle": false,
    "data": false,
    "pin": false,
    "supportsLocalAmounts": false,
    "denominationType": "RANGE",
    "senderCurrencyCode": "USD",
    "senderCurrencySymbol": "$",
    "destinationCurrencyCode": "COP",
    "destinationCurrencySymbol": "$",
    "commission": 4.42,
    "internationalDiscount": 4.42,
    "localDiscount": 0,
    "mostPopularAmount": null,
    "minAmount": 5,
    "maxAmount": 5,
    "localMinAmount": null,
    "localMaxAmount": null,
    "country": {
      "isoName": "CO",
      "name": "Colombia"
    },
    "fx": {
      "rate": 2192.1867,
      "currencyCode": "COP"
    },
    "logoUrls": [
      "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-1.png",
      "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-2.png",
      "https://s3.amazonaws.com/rld-operator/3f4a8bcd3268-size-3.png"
    ],
    "fixedAmounts": [],
    "fixedAmountsDescriptions": [],
    "localFixedAmounts": [],
    "localFixedAmountsDescriptions": [],
    "suggestedAmounts": [
      7,
      10,
      15
    ],
    "suggestedAmountsMap": {
      "7": 19482.51,
      "10": 27832.16,
      "15": 41748.23
    },
    "promotions": []
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Country not found and/or not currently supported | `APIException` |

