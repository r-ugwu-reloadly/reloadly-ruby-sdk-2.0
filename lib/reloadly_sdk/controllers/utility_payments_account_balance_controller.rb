# reloadly_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ReloadlySdk
  # UtilityPaymentsAccountBalanceController
  class UtilityPaymentsAccountBalanceController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # TODO: type endpoint description here
    # @param [String] accept Required parameter: Example:
    # @param [String] authorization Required parameter: Example:
    # @return [Mixed] response from the API call
    def reloadly_utility_payments_account_balance(accept,
                                                  authorization)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::UTILITY_PAYMENTS)
      _query_builder << '/accounts/balance'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Authorization' => authorization
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Full authentication is required to access this resource',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body) unless
        _response.raw_body.nil? ||
        _response.raw_body.to_s.strip.empty?
      decoded
    end
  end
end
