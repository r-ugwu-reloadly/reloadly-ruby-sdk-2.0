# Airtime-Countries

```ruby
airtime_countries_controller = client.airtime_countries
```

## Class Name

`AirtimeCountriesController`

## Methods

* [Reloadly-Airtime-Countries](../../doc/controllers/airtime-countries.md#reloadly-airtime-countries)
* [Reloadly-Airtime-Country-by-Iso](../../doc/controllers/airtime-countries.md#reloadly-airtime-country-by-iso)


# Reloadly-Airtime-Countries

```ruby
def reloadly_airtime_countries(accept,
                               authorization)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'

result = airtime_countries_controller.reloadly_airtime_countries(accept, authorization)
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


# Reloadly-Airtime-Country-by-Iso

```ruby
def reloadly_airtime_country_by_iso(accept,
                                    authorization,
                                    countrycode)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `countrycode` | `String` | Template, Required | The country's ISO Code. |

## Server

`Server::AIRTIME`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.topups-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
countrycode = 'US'

result = airtime_countries_controller.reloadly_airtime_country_by_iso(accept, authorization, countrycode)
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

