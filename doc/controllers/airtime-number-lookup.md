# Airtime-Number Lookup

```ruby
airtime_number_lookup_controller = client.airtime_number_lookup
```

## Class Name

`AirtimeNumberLookupController`

## Methods

* [Reloadly-Number-Lookup-Get](../../doc/controllers/airtime-number-lookup.md#reloadly-number-lookup-get)
* [Reloadly-Number-Lookup-Post](../../doc/controllers/airtime-number-lookup.md#reloadly-number-lookup-post)


# Reloadly-Number-Lookup-Get

```ruby
def reloadly_number_lookup_get(accept,
                               authorization,
                               phone,
                               countrycode,
                               suggested_amounts_map: nil,
                               suggested_amounts: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `phone` | `Integer` | Template, Required | This is the mobile number whose details are to be retrieved. |
| `countrycode` | `String` | Template, Required | This is the ISO code of the country where the mobile number is registered. |
| `suggested_amounts_map` | `String` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |
| `suggested_amounts` | `String` | Query, Optional | Indicates if this field should be returned as a response. Default value is false. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
phone = 18
countrycode = 'NG'
suggested_amounts_map = 'false'
suggested_amounts = 'false'

result = airtime_number_lookup_controller.reloadly_number_lookup_get(accept, authorization, phone, countrycode, suggested_amounts_map: suggested_amounts_map, suggested_amounts: suggested_amounts)
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
| 404 | Not Found | `APIException` |


# Reloadly-Number-Lookup-Post

```ruby
def reloadly_number_lookup_post(accept,
                                authorization,
                                content_type,
                                body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `content_type` | `String` | Header, Required | - |
| `body` | `Object` | Body, Required | Request Payload |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
content_type = 'application/json'
body = JSON.parse('{"number":"03238582221","countryCode":"PK"}')

result = airtime_number_lookup_controller.reloadly_number_lookup_post(accept, authorization, content_type, body)
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
| 404 | Not Found | `APIException` |

