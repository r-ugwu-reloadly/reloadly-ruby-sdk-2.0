# Utility Payments-Pay Bill

```ruby
utility_payments_pay_bill_controller = client.utility_payments_pay_bill
```

## Class Name

`UtilityPaymentsPayBillController`


# Reloadly-Utility-Payments-Pay-Bill

```ruby
def reloadly_utility_payments_pay_bill(accept,
                                       authorization,
                                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accept` | `String` | Header, Required | - |
| `authorization` | `String` | Header, Required | - |
| `body` | [`ReloadlyUtilityPaymentsPayBillRequest`](../../doc/models/reloadly-utility-payments-pay-bill-request.md) | Body, Required | Request Payload |

## Server

`Server::UTILITY_PAYMENTS`

## Response Type

`Mixed`

## Example Usage

```ruby
accept = 'application/com.reloadly.utilities-v1+json'
authorization = 'Bearer <YOUR_TOKEN_HERE>'
body = ReloadlyUtilityPaymentsPayBillRequest.new
body.subscriber_account_number = '04223568280'
body.amount = 1000
body.biller_id = 5
body.use_local_amount = false

result = utility_payments_pay_bill_controller.reloadly_utility_payments_pay_bill(accept, authorization, body)
```

## Example Response

```
{
  "id": 36,
  "status": "PROCESSING",
  "referenceId": "4a391847-n193-22k8-wqkl-9h3s7428m036",
  "code": "PAYMENT_PROCESSING_IN_PROGRESS",
  "message": "The payment is being processed, status will be updated when biller processes the payment.",
  "submittedAt": "2022-05-18 09:13:53",
  "finalStatusAvailabilityAt": "2022-05-19 09:13:52"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Full authentication is required to access this resource | `APIException` |
| 404 | Not Found | `APIException` |

