# Airtime-Topups

```ruby
airtime_topups_controller = client.airtime_topups
```

## Class Name

`AirtimeTopupsController`

## Methods

* [Reloadly-Airtime-Async-Topup](../../doc/controllers/airtime-topups.md#reloadly-airtime-async-topup)
* [Reloadly-Airtime-Topup](../../doc/controllers/airtime-topups.md#reloadly-airtime-topup)
* [Reloadly-Airtime-Topup-Status](../../doc/controllers/airtime-topups.md#reloadly-airtime-topup-status)


# Reloadly-Airtime-Async-Topup

```ruby
def reloadly_airtime_async_topup(accept,
                                 authorization,
                                 body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `body` | `Object` | Body, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
body = JSON.parse('{"operatorId":"444","amount":"1","useLocalAmount":false,"customIdentifier":"This is example identifier","recipientPhone":{"countryCode":"ES","number":"657228901"},"senderPhone":{"countryCode":"CA","number":"1231231231"}}')

result = airtime_topups_controller.reloadly_airtime_async_topup(accept, authorization, body)
```

## Example Response

```
{
  "transactionId": 4602843
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Recipient phone number is not valid | `APIException` |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |


# Reloadly-Airtime-Topup

```ruby
def reloadly_airtime_topup(accept,
                           authorization,
                           body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `body` | `Object` | Body, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
body = JSON.parse('{"operatorId":"444","amount":"1","useLocalAmount":false,"customIdentifier":"This is example identifier","recipientPhone":{"countryCode":"ES","number":"657228901"},"senderPhone":{"countryCode":"CA","number":"1231231231"}}')

result = airtime_topups_controller.reloadly_airtime_topup(accept, authorization, body)
```

## Example Response

```
{
  "transactionId": 4602843,
  "status": "SUCCESSFUL",
  "operatorTransactionId": "7297929551:OrderConfirmed",
  "customIdentifier": "This is example identifier 130",
  "recipientPhone": 447951631337,
  "recipientEmail": null,
  "senderPhone": 11231231231,
  "countryCode": "GB",
  "operatorId": 535,
  "operatorName": "EE PIN England",
  "discount": 63.37,
  "discountCurrencyCode": "NGN",
  "requestedAmount": 3168.4,
  "requestedAmountCurrencyCode": "NGN",
  "deliveredAmount": 4.9985,
  "deliveredAmountCurrencyCode": "GBP",
  "transactionDate": "2021-12-06 08:13:39",
  "pinDetail": {
    "serial": 558111,
    "info1": "DIAL *611",
    "info2": "DIAL *611",
    "info3": "DIAL *611",
    "value": null,
    "code": 773709733097662,
    "ivr": "1-888-888-8888",
    "validity": "30 days"
  },
  "balanceInfo": {
    "oldBalance": 5109.53732,
    "newBalance": 2004.50532,
    "currencyCode": "NGN",
    "currencyName": "Nigerian Naira",
    "updatedAt": "2021-12-06 13:13:39"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Recipient phone number is not valid | `APIException` |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |


# Reloadly-Airtime-Topup-Status

```ruby
def reloadly_airtime_topup_status(accept,
                                  authorization,
                                  transactionid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `transactionid` | `String` | Template, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
transactionid = 'transactionid8'

result = airtime_topups_controller.reloadly_airtime_topup_status(accept, authorization, transactionid)
```

## Example Response

```
{
  "transactionId": 4602843,
  "status": "SUCCESSFUL",
  "operatorTransactionId": "7297929551:OrderConfirmed",
  "customIdentifier": "This is example identifier 130",
  "recipientPhone": 447951631337,
  "recipientEmail": null,
  "senderPhone": 11231231231,
  "countryCode": "GB",
  "operatorId": 535,
  "operatorName": "EE PIN England",
  "discount": 63.37,
  "discountCurrencyCode": "NGN",
  "requestedAmount": 3168.4,
  "requestedAmountCurrencyCode": "NGN",
  "deliveredAmount": 4.9985,
  "deliveredAmountCurrencyCode": "GBP",
  "transactionDate": "2021-12-06 08:13:39",
  "pinDetail": {
    "serial": 558111,
    "info1": "DIAL *611",
    "info2": "DIAL *611",
    "info3": "DIAL *611",
    "value": null,
    "code": 773709733097662,
    "ivr": "1-888-888-8888",
    "validity": "30 days"
  },
  "balanceInfo": {
    "oldBalance": 5109.53732,
    "newBalance": 2004.50532,
    "currencyCode": "NGN",
    "currencyName": "Nigerian Naira",
    "updatedAt": "2021-12-06 13:13:39"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |

