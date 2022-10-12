# Gift Cards-Transactions

```ruby
gift_cards_transactions_controller = client.gift_cards_transactions
```

## Class Name

`GiftCardsTransactionsController`

## Methods

* [Reloadly-Gift-Cards-Transactions](../../doc/controllers/gift-cards-transactions.md#reloadly-gift-cards-transactions)
* [Reloadly-Gift-Cards-Transaction-by-Id](../../doc/controllers/gift-cards-transactions.md#reloadly-gift-cards-transaction-by-id)


# Reloadly-Gift-Cards-Transactions

```ruby
def reloadly_gift_cards_transactions(accept,
                                     authorization,
                                     size: nil,
                                     page: nil,
                                     start_date: nil,
                                     end_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `size` | `String` | Query, Optional | This indicates the number of transactions to be retrieved on a page. |
| `page` | `String` | Query, Optional | This indicates the page of the transactions list being retrieved. |
| `start_date` | `String` | Query, Optional | Indicates the start date for the range of transactions to be retrieved. |
| `end_date` | `String` | Query, Optional | Indicates the end date for the range of transactions to be retrieved. |

## Server

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
size = '10'
page = '1'
start_date = '2021-06-01 10:00:00'
end_date = '2021-07-20 19:17:02'

result = gift_cards_transactions_controller.reloadly_gift_cards_transactions(accept, authorization, size: size, page: page, start_date: start_date, end_date: end_date)
```

## Example Response

```
[
  {
    "transactionId": 1,
    "amount": 60553.3575,
    "discount": 0,
    "currencyCode": "NGN",
    "fee": 198.35026,
    "customIdentifier": "obucks3",
    "status": "SUCCESSFUL",
    "product": {
      "productId": 4,
      "productName": "Amazon Spain",
      "countryCode": "ES",
      "quantity": 5,
      "unitPrice": 25,
      "totalPrice": 125,
      "currencyCode": "EUR",
      "brand": {
        "brandId": 2,
        "brandName": "Amazon"
      }
    },
    "smsFee": 56.91,
    "receipientPhone": 34657829900,
    "transactionCreatedTime": "2022-02-28 13:46:00"
  },
  {},
  {}
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Could not retrieve/update resources at the moment, please try again later | `APIException` |


# Reloadly-Gift-Cards-Transaction-by-Id

```ruby
def reloadly_gift_cards_transaction_by_id(accept,
                                          authorization,
                                          transactionid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `transactionid` | `String` | Template, Required | Indicates the identification number of the transaction to be retrieved. |

## Server

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
transactionid = '2'

result = gift_cards_transactions_controller.reloadly_gift_cards_transaction_by_id(accept, authorization, transactionid)
```

## Example Response

```
[
  {
    "transactionId": 1,
    "amount": 60553.3575,
    "discount": 0,
    "currencyCode": "NGN",
    "fee": 198.35026,
    "customIdentifier": "obucks3",
    "status": "SUCCESSFUL",
    "product": {
      "productId": 4,
      "productName": "Amazon Spain",
      "countryCode": "ES",
      "quantity": 5,
      "unitPrice": 25,
      "totalPrice": 125,
      "currencyCode": "EUR",
      "brand": {
        "brandId": 2,
        "brandName": "Amazon"
      }
    },
    "smsFee": 56.91,
    "receipientPhone": 34657829900,
    "transactionCreatedTime": "2022-02-28 13:46:00"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Indicates the identification number of the transaction to be retrieved. | `APIException` |
| 404 | Could not retrieve/update resources at the moment, please try again later | `APIException` |

