
# Reloadly Auth Request

## Structure

`ReloadlyAuthRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_id` | `String` | Required | - |
| `client_secret` | `String` | Required | - |
| `grant_type` | `String` | Required | - |
| `audience` | `String` | Required | - |

## Example (as JSON)

```json
{
  "client_id": "CLIENT_ID_GOES_HERE",
  "client_secret": "CLIENT_SECRET_GOES_HERE",
  "grant_type": "client_credentials",
  "audience": "https://topups.reloadly.com"
}
```

