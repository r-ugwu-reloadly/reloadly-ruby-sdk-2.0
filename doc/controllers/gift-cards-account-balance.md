# Gift Cards-Account Balance

```ruby
gift_cards_account_balance_controller = client.gift_cards_account_balance
```

## Class Name

`GiftCardsAccountBalanceController`


# Reloadly-Gift-Cards-Account-Balance

```ruby
def reloadly_gift_cards_account_balance(accept,
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

result = gift_cards_account_balance_controller.reloadly_gift_cards_account_balance(accept, authorization)
```

## Example Response

```
{
  "balance": 6000,
  "currencyCode": "USD",
  "currencyName": "US Dollar",
  "updatedAt": "2022-02-04 17:45:51"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |

