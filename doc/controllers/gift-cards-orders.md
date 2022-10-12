# Gift Cards-Orders

```ruby
gift_cards_orders_controller = client.gift_cards_orders
```

## Class Name

`GiftCardsOrdersController`

## Methods

* [Reloadly-Gift-Cards-Redeem-Codes](../../doc/controllers/gift-cards-orders.md#reloadly-gift-cards-redeem-codes)
* [Reloadly-Gift-Cards-Orders](../../doc/controllers/gift-cards-orders.md#reloadly-gift-cards-orders)


# Reloadly-Gift-Cards-Redeem-Codes

```ruby
def reloadly_gift_cards_redeem_codes(accept,
                                     authorization,
                                     transactionid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `transactionid` | `Integer` | Template, Required | Indicates the transaction identification number of the gift card's redeem code to be retrieved. |

## Server

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
transactionid = 2

result = gift_cards_orders_controller.reloadly_gift_cards_redeem_codes(accept, authorization, transactionid)
```

## Example Response

```
{
  "cardNumber": 6120200345149064,
  "pinCode": 5821
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Invalid transaction ID | `APIException` |


# Reloadly-Gift-Cards-Orders

```ruby
def reloadly_gift_cards_orders(accept,
                               authorization,
                               body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `body` | `Object` | Body, Required | Request Payload |

## Server

`Server::GIFT_CARDS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.giftcards-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
body = JSON.parse('{"productId":120,"countryCode":"US","quantity":1,"unitPrice":1,"customIdentifier":"obucks10","senderName":"John Doe","recipientEmail":"anyone@email.com","recipientPhoneDetails":{"countryCode":"ES","phoneNumber":"657228901"}}')

result = gift_cards_orders_controller.reloadly_gift_cards_orders(accept, authorization, body)
```

## Example Response

```
{
  "transactionId": 1,
  "amount": 34536.21,
  "discount": 1709.72,
  "currencyCode": "NGN",
  "fee": 285,
  "recipientEmail": "anyone@email.com",
  "customIdentifier": "obucks1dime0",
  "status": "SUCCESSFUL",
  "product": {
    "productId": 1,
    "productName": "1-800-PetSupplies",
    "countryCode": "PS",
    "quantity": 1,
    "unitPrice": 59.99,
    "totalPrice": 59.99,
    "currencyCode": "USD",
    "brand": {
      "brandId": 6,
      "brandName": "1-800-PetSupplies"
    }
  },
  "smsFee": 56.91,
  "recipientPhone": 34657829900,
  "transactionCreatedTime": "2022-02-28 13:46:00"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid price, please ensure you selected the right price | `APIException` |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not found | `APIException` |

