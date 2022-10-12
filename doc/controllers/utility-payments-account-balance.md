# Utility Payments-Account Balance

```ruby
utility_payments_account_balance_controller = client.utility_payments_account_balance
```

## Class Name

`UtilityPaymentsAccountBalanceController`


# Reloadly-Utility-Payments-Account-Balance

```ruby
def reloadly_utility_payments_account_balance(accept,
                                              authorization)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |

## Server

`Server::UTILITY_PAYMENTS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.utilities-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'

result = utility_payments_account_balance_controller.reloadly_utility_payments_account_balance(accept, authorization)
```

## Example Response

```
{
  "balance": 5000,
  "currencyCode": "USD",
  "currencyName": "US Dollar",
  "updatedAt": "2021-12-04 08:45:51"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |

