# Utility Payments-Transactions

```ruby
utility_payments_transactions_controller = client.utility_payments_transactions
```

## Class Name

`UtilityPaymentsTransactionsController`

## Methods

* [Reloadly-Utility-Payments-Transactions](../../doc/controllers/utility-payments-transactions.md#reloadly-utility-payments-transactions)
* [Reloadly-Utility-Payments-Transaction-by-Id](../../doc/controllers/utility-payments-transactions.md#reloadly-utility-payments-transaction-by-id)


# Reloadly-Utility-Payments-Transactions

```ruby
def reloadly_utility_payments_transactions(accept,
                                           authorization,
                                           reference_id: nil,
                                           page: nil,
                                           size: nil,
                                           start_date: nil,
                                           end_date: nil,
                                           status: nil,
                                           service_type: nil,
                                           biller_type: nil,
                                           biller_country_code: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `reference_id` | `String` | Query, Optional | The reference ID you may have specified while placing the transaction. |
| `page` | `Integer` | Query, Optional | The page to be retrieved from the transaction list. |
| `size` | `Integer` | Query, Optional | Number of items to include in a single page. |
| `start_date` | `String` | Query, Optional | Indicates the start date for the range of transactions to be retrieved. |
| `end_date` | `String` | Query, Optional | Indicates the end date for the range of transactions to be retrieved. |
| `status` | `String` | Query, Optional | The transaction's status. Can be either PROCESSING, SUCCESSFUL, FAILED, or REFUNDED. |
| `service_type` | `String` | Query, Optional | The biller's service type. Can be either PREPAID or POSTPAID. |
| `biller_type` | `String` | Query, Optional | The biller's type. Can be either ELECTRICITY_BILL_PAYMENT, WATER_BILL_PAYMENT, TV_BILL_PAYMENT, or INTERNET_BILL_PAYMENT |
| `biller_country_code` | `String` | Query, Optional | Indicates the ISO code of the country where the biller is located. |

## Server

`Server::UTILITY_PAYMENTS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.utilities-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
reference_id = 'april-electricity-bill'
page = 10
size = 1
start_date = '2021-06-01 00:00:00'
end_date = '2022-06-01 10:00:00'
status = 'PROCESSING'
service_type = 'PREPAID'
biller_type = 'ELECTRICITY_BILL_PAYMENT'
biller_country_code = 'NG'

result = utility_payments_transactions_controller.reloadly_utility_payments_transactions(accept, authorization, reference_id: reference_id, page: page, size: size, start_date: start_date, end_date: end_date, status: status, service_type: service_type, biller_type: biller_type, biller_country_code: biller_country_code)
```

## Example Response

```
[
  {
    "code": "PAYMENT_PROCESSED_SUCCESSFULLY",
    "message": "The payment was processed successfully",
    "transaction": {
      "id": 13,
      "status": "SUCCESSFUL",
      "referenceId": "april-electricity-bill",
      "amount": 1000,
      "amountCurrencyCode": "NGN",
      "deliveryAmount": 1000,
      "deliveryAmountCurrencyCode": "NGN",
      "fee": 0.25,
      "feeCurrencyCode": "USD",
      "discount": 0,
      "discountCurrencyCode": "USD",
      "submittedAt": "2022-03-29 07:04:21",
      "balanceInfo": {
        "oldBalance": 9997.34912,
        "newBalance": 9994.69824,
        "cost": 2.65088,
        "currencyCode": "USD",
        "curencyName": "US Dollar",
        "updatedAt": "2022-03-29 11:04:21"
      },
      "billDetails": {
        "type": "ELECTRICITY_BILL_PAYMENT",
        "billerId": 2,
        "billerName": "Abuja Electricity Postpaid",
        "billerCountryCode": "NG",
        "serviceType": "POSTPAID",
        "completedAt": "2022-03-29 07:04:25",
        "subscriberDetails": {
          "accountNumber": 4223568280
        }
      }
    }
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


# Reloadly-Utility-Payments-Transaction-by-Id

```ruby
def reloadly_utility_payments_transaction_by_id(accept,
                                                authorization,
                                                id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `id` | `Integer` | Template, Required | The utility payment's identification number. |

## Server

`Server::UTILITY_PAYMENTS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.utilities-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
id = 10

result = utility_payments_transactions_controller.reloadly_utility_payments_transaction_by_id(accept, authorization, id)
```

## Example Response

```
[
  {
    "code": "PAYMENT_PROCESSED_SUCCESSFULLY",
    "message": "The payment was processed successfully",
    "transaction": {
      "id": 13,
      "status": "SUCCESSFUL",
      "referenceId": "april-electricity-bill",
      "amount": 1000,
      "amountCurrencyCode": "NGN",
      "deliveryAmount": 1000,
      "deliveryAmountCurrencyCode": "NGN",
      "fee": 0.25,
      "feeCurrencyCode": "USD",
      "discount": 0,
      "discountCurrencyCode": "USD",
      "submittedAt": "2022-03-29 07:04:21",
      "balanceInfo": {
        "oldBalance": 9997.34912,
        "newBalance": 9994.69824,
        "cost": 2.65088,
        "currencyCode": "USD",
        "curencyName": "US Dollar",
        "updatedAt": "2022-03-29 11:04:21"
      },
      "billDetails": {
        "type": "ELECTRICITY_BILL_PAYMENT",
        "billerId": 2,
        "billerName": "Abuja Electricity Postpaid",
        "billerCountryCode": "NG",
        "serviceType": "POSTPAID",
        "completedAt": "2022-03-29 07:04:25",
        "subscriberDetails": {
          "accountNumber": 4223568280
        }
      }
    }
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not found | `APIException` |

