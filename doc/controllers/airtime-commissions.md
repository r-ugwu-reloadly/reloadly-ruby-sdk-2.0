# Airtime-Commissions

```ruby
airtime_commissions_controller = client.airtime_commissions
```

## Class Name

`AirtimeCommissionsController`

## Methods

* [Reloadly-Airtime-Commissions](../../doc/controllers/airtime-commissions.md#reloadly-airtime-commissions)
* [Reloadly-Airtime-Commission-by-Id](../../doc/controllers/airtime-commissions.md#reloadly-airtime-commission-by-id)


# Reloadly-Airtime-Commissions

```ruby
def reloadly_airtime_commissions(accept,
                                 authorization,
                                 size: nil,
                                 page: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `size` | `Integer` | Query, Optional | This indicates the number of operators offering discounts to be retrieved on a page. Default value is 200. |
| `page` | `Integer` | Query, Optional | This indicates the page of the discounts list being retrieved. Default value is 1. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
size = 10
page = 1

result = airtime_commissions_controller.reloadly_airtime_commissions(accept, authorization, size: size, page: page)
```

## Example Response

```
{
  "content": [
    {
      "operator": {
        "operatorId": 1,
        "name": "Afghan Wireless Afghanistan",
        "countryCode": "AF",
        "status": true,
        "bundle": false
      },
      "percentage": 10,
      "internationalPercentage": 10,
      "localPercentage": 0,
      "updatedAt": "2021-06-26 03:36:16"
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


# Reloadly-Airtime-Commission-by-Id

```ruby
def reloadly_airtime_commission_by_id(accept,
                                      authorization,
                                      operatorid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `operatorid` | `String` | Template, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
operatorid = '341'

result = airtime_commissions_controller.reloadly_airtime_commission_by_id(accept, authorization, operatorid)
```

## Example Response

```
{
  "operator": {
    "operatorId": 1,
    "name": "Afghan Wireless Afghanistan",
    "countryCode": "AF",
    "status": true,
    "bundle": false
  },
  "percentage": 10,
  "internationalPercentage": 10,
  "localPercentage": 0,
  "updatedAt": "2021-06-26 03:36:16"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Operator not found for given ID | `APIException` |

