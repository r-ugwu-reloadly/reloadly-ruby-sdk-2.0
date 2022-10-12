# reloadly_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ReloadlySdk
  # AirtimeNumberLookupController
  class AirtimeNumberLookupController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # TODO: type endpoint description here
    # @param [String] accept Required parameter: Example:
    # @param [String] authorization Required parameter: Example:
    # @param [Integer] phone Required parameter: This is the mobile number whose
    # details are to be retrieved.
    # @param [String] countrycode Required parameter: This is the ISO code of
    # the country where the mobile number is registered.
    # @param [String] suggested_amounts_map Optional parameter: Indicates if
    # this field should be returned as a response. Default value is false.
    # @param [String] suggested_amounts Optional parameter: Indicates if this
    # field should be returned as a response. Default value is false.
    # @return [Mixed] response from the API call
    def reloadly_number_lookup_get(accept,
                                   authorization,
                                   phone,
                                   countrycode,
                                   suggested_amounts_map: nil,
                                   suggested_amounts: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::AIRTIME)
      _query_builder << '/operators/mnp-lookup/phone/{phone}/countries/{countrycode}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'phone' => { 'value' => phone, 'encode' => true },
        'countrycode' => { 'value' => countrycode, 'encode' => true }
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'suggestedAmountsMap' => suggested_amounts_map,
        'suggestedAmounts' => suggested_amounts
      )
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

    # TODO: type endpoint description here
    # @param [String] accept Required parameter: Example:
    # @param [String] authorization Required parameter: Example:
    # @param [String] content_type Required parameter: Example:
    # @param [Object] body Required parameter: Request Payload
    # @return [Mixed] response from the API call
    def reloadly_number_lookup_post(accept,
                                    authorization,
                                    content_type,
                                    body)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::AIRTIME)
      _query_builder << '/mnp-lookup/operators'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Authorization' => authorization,
        'Content-Type' => content_type
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: APIHelper.json_serialize(body)
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
