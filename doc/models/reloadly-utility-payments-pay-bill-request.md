
# Reloadly Utility Payments Pay Bill Request

## Structure

`ReloadlyUtilityPaymentsPayBillRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscriber_account_number` | `String` | Required | - |
| `amount` | `Integer` | Required | - |
| `biller_id` | `Integer` | Required | - |
| `use_local_amount` | `TrueClass\|FalseClass` | Required | - |

## Example (as JSON)

```json
{
  "subscriberAccountNumber": "04223568280",
  "amount": 1000,
  "billerId": 5,
  "useLocalAmount": false
}
```

