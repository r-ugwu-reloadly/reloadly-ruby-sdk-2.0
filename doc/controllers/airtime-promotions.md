# Airtime-Promotions

```ruby
airtime_promotions_controller = client.airtime_promotions
```

## Class Name

`AirtimePromotionsController`

## Methods

* [Reloadly-Airtime-Promotions](../../doc/controllers/airtime-promotions.md#reloadly-airtime-promotions)
* [Reloadly-Airtime-Promotion-by-Id](../../doc/controllers/airtime-promotions.md#reloadly-airtime-promotion-by-id)
* [Reloadly-Airtime-Promotion-by-Iso](../../doc/controllers/airtime-promotions.md#reloadly-airtime-promotion-by-iso)
* [Reloadly-Airtime-Promotion-by-Operator-Id](../../doc/controllers/airtime-promotions.md#reloadly-airtime-promotion-by-operator-id)


# Reloadly-Airtime-Promotions

```ruby
def reloadly_airtime_promotions(accept,
                                authorization,
                                size: nil,
                                page: nil,
                                language_code: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `size` | `Integer` | Query, Optional | This indicates the number of promotions to be retrieved on a page. Default value is 200. |
| `page` | `Integer` | Query, Optional | This indicates the page of the promotions list being retrieved. Default value is 1. |
| `language_code` | `Integer` | Query, Optional | This indicates the language you want the promotion information to be displayed in. The language code is to be specified in the ISO 639-1 format. Choices are 'EN', 'ES', 'FR', 'IT', 'PT', 'ZH', 'AR', 'HI', 'HT', 'JA' and 'DE'. Default is 'EN'. This is a case-insensitive field. The promotion information is returned in your requested language irrespective of the original language in which the promotion was launched. |

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

result = airtime_promotions_controller.reloadly_airtime_promotions(accept, authorization, size: size, page: page, )
```

## Example Response

```
{
  "content": [
    {
      "promotionId": 1,
      "operatorId": 129,
      "title": "Tigo El Salvador From 25 Jun 2018 00:00 To 25 July...",
      "title2": "Get 500 MB and 150 minutes for USA or Canada",
      "description": "For top ups of $10 or more, customer...",
      "startDate": "Mon, 25 Jun 2018 06:00:00 +0000",
      "endDate": "Tue, 26 Jun 2018 05:59:00 +0000",
      "denominations": "USD 10 and up",
      "localDenominations": null
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


# Reloadly-Airtime-Promotion-by-Id

```ruby
def reloadly_airtime_promotion_by_id(accept,
                                     authorization,
                                     promotionid,
                                     language_code: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `promotionid` | `String` | Template, Required | The promotion's identification number. |
| `language_code` | `String` | Query, Optional | This indicates the language you want the promotion information to be displayed in. The language code is to be specified in the ISO 639-1 format. Choices are 'EN', 'ES', 'FR', 'IT', 'PT', 'ZH', 'AR', 'HI', 'HT', 'JA' and 'DE'. Default is 'EN'. This is a case-insensitive field. The promotion information is returned in your requested language irrespective of the original language in which the promotion was launched. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
promotionid = '5583'
language_code = 'EN'

result = airtime_promotions_controller.reloadly_airtime_promotion_by_id(accept, authorization, promotionid, language_code: language_code)
```

## Example Response

```
{
  "content": {
    "promotionId": 1,
    "operatorId": 129,
    "title": "Tigo El Salvador From 25 Jun 2018 00:00 To 25 July...",
    "title2": "Get 500 MB and 150 minutes for USA or Canada",
    "description": "For top ups of $10 or more, customer...",
    "startDate": "Mon, 25 Jun 2018 06:00:00 +0000",
    "endDate": "Tue, 26 Jun 2018 05:59:00 +0000",
    "denominations": "USD 10 and up",
    "localDenominations": null
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Promotion not found | `APIException` |


# Reloadly-Airtime-Promotion-by-Iso

```ruby
def reloadly_airtime_promotion_by_iso(accept,
                                      authorization,
                                      countrycode)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `countrycode` | `String` | Template, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
countrycode = 'US'

result = airtime_promotions_controller.reloadly_airtime_promotion_by_iso(accept, authorization, countrycode)
```

## Example Response

```
{
  "content": [
    {
      "promotionId": 1,
      "operatorId": 129,
      "title": "Tigo El Salvador From 25 Jun 2018 00:00 To 25 July...",
      "title2": "Get 500 MB and 150 minutes for USA or Canada",
      "description": "For top ups of $10 or more, customer...",
      "startDate": "Mon, 25 Jun 2018 06:00:00 +0000",
      "endDate": "Tue, 26 Jun 2018 05:59:00 +0000",
      "denominations": "USD 10 and up",
      "localDenominations": null
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


# Reloadly-Airtime-Promotion-by-Operator-Id

```ruby
def reloadly_airtime_promotion_by_operator_id(accept,
                                              authorization,
                                              operatorid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Template, Required | - |
| `operatorid` | `String` | Template, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
operatorid = '129'

result = airtime_promotions_controller.reloadly_airtime_promotion_by_operator_id(accept, authorization, operatorid)
```

## Example Response

```
{
  "content": [
    {
      "promotionId": 1,
      "operatorId": 129,
      "title": "Tigo El Salvador From 25 Jun 2018 00:00 To 25 July...",
      "title2": "Get 500 MB and 150 minutes for USA or Canada",
      "description": "For top ups of $10 or more, customer...",
      "startDate": "Mon, 25 Jun 2018 06:00:00 +0000",
      "endDate": "Tue, 26 Jun 2018 05:59:00 +0000",
      "denominations": "USD 10 and up",
      "localDenominations": null
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

