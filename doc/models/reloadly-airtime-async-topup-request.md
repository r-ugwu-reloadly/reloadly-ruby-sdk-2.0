
# Reloadly Airtime Async Topup Request

## Structure

`ReloadlyAirtimeAsyncTopupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `operator_id` | `String` | Required | - |
| `amount` | `String` | Required | - |
| `use_local_amount` | `TrueClass\|FalseClass` | Required | - |
| `custom_identifier` | `String` | Required | - |
| `recipient_phone` | [`RecipientPhone`](../../doc/models/recipient-phone.md) | Required | - |
| `sender_phone` | [`SenderPhone`](../../doc/models/sender-phone.md) | Required | - |

## Example (as JSON)

```json
{
  "operatorId": "444",
  "amount": "1",
  "useLocalAmount": false,
  "customIdentifier": "This is example identifier",
  "recipientPhone": {
    "countryCode": "ES",
    "number": "657228901"
  },
  "senderPhone": {
    "countryCode": "CA",
    "number": "1231231231"
  }
}
```

