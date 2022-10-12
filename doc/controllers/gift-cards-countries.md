# Gift Cards-Countries

```ruby
gift_cards_countries_controller = client.gift_cards_countries
```

## Class Name

`GiftCardsCountriesController`

## Methods

* [Reloadly-Gift-Cards-Countries](../../doc/controllers/gift-cards-countries.md#reloadly-gift-cards-countries)
* [Reloadly-Gift-Cards-Country-by-Iso](../../doc/controllers/gift-cards-countries.md#reloadly-gift-cards-country-by-iso)


# Reloadly-Gift-Cards-Countries

```ruby
def reloadly_gift_cards_countries(accept,
                                  authorization)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |

## Server

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'

result = gift_cards_countries_controller.reloadly_gift_cards_countries(accept, authorization)
```

## Example Response

```
[
  {
    "isoName": "AF",
    "name": "Afghanistan",
    "continent": "Asia",
    "currencyCode": "AFN",
    "currencyName": "Afghan Afghani",
    "currencySymbol": "؋",
    "flag": "https://s3.amazonaws.com/rld-flags/af.svg",
    "callingCodes": [
      "+93"
    ]
  },
  {},
  {}
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |


# Reloadly-Gift-Cards-Country-by-Iso

```ruby
def reloadly_gift_cards_country_by_iso(accept,
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

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
countrycode = 'PK'

result = gift_cards_countries_controller.reloadly_gift_cards_country_by_iso(accept, authorization, countrycode)
```

## Example Response

```
[
  {
    "isoName": "AG",
    "name": "Antigua and Barbuda",
    "continent": "North America",
    "currencyCode": "XCD",
    "currencyName": "East Caribbean Dollar",
    "currencySymbol": "XCD",
    "flag": "https://s3.amazonaws.com/rld-flags/ag.svg",
    "callingCodes": [
      "+1268"
    ]
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Country not found and/or not currently supported | `APIException` |

