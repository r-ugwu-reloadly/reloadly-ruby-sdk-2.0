# Airtime-FX Rates

```ruby
airtime_fx_rates_controller = client.airtime_fx_rates
```

## Class Name

`AirtimeFXRatesController`


# Reloadly-Airtime-Fx-Rates

```ruby
def reloadly_airtime_fx_rates(accept,
                              authorization,
                              body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `body` | `Object` | Body, Required | Payload description |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
body = JSON.parse('{"operatorId":"1","amount":"1"}')

result = airtime_fx_rates_controller.reloadly_airtime_fx_rates(accept, authorization, body)
```

## Example Response

```
{
  "id": 174,
  "name": "Natcom Haiti",
  "fxRate": 465,
  "currencyCode": "HTG"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |
| 500 | Fx rate is currently not available for this operator, please try again later or contact support. | `APIException` |

