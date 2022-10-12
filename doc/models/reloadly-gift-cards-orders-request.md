
# Reloadly Gift Cards Orders Request

## Structure

`ReloadlyGiftCardsOrdersRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `Integer` | Required | - |
| `country_code` | `String` | Required | - |
| `quantity` | `Integer` | Required | - |
| `unit_price` | `Integer` | Required | - |
| `custom_identifier` | `String` | Required | - |
| `sender_name` | `String` | Required | - |
| `recipient_email` | `String` | Required | - |
| `recipient_phone_details` | [`RecipientPhoneDetails`](../../doc/models/recipient-phone-details.md) | Required | - |

## Example (as JSON)

```json
{
  "productId": 120,
  "countryCode": "US",
  "quantity": 1,
  "unitPrice": 1,
  "customIdentifier": "obucks10",
  "senderName": "John Doe",
  "recipientEmail": "anyone@email.com",
  "recipientPhoneDetails": {
    "countryCode": "ES",
    "phoneNumber": "657228901"
  }
}
```

