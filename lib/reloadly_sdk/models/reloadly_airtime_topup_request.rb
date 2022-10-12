# reloadly_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ReloadlySdk
  # ReloadlyAirtimeTopupRequest Model.
  class ReloadlyAirtimeTopupRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :operator_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [TrueClass|FalseClass]
    attr_accessor :use_local_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :custom_identifier

    # TODO: Write general description for this method
    # @return [RecipientPhone]
    attr_accessor :recipient_phone

    # TODO: Write general description for this method
    # @return [SenderPhone]
    attr_accessor :sender_phone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['operator_id'] = 'operatorId'
      @_hash['amount'] = 'amount'
      @_hash['use_local_amount'] = 'useLocalAmount'
      @_hash['custom_identifier'] = 'customIdentifier'
      @_hash['recipient_phone'] = 'recipientPhone'
      @_hash['sender_phone'] = 'senderPhone'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(operator_id = nil,
                   amount = nil,
                   use_local_amount = nil,
                   custom_identifier = nil,
                   recipient_phone = nil,
                   sender_phone = nil)
      @operator_id = operator_id
      @amount = amount
      @use_local_amount = use_local_amount
      @custom_identifier = custom_identifier
      @recipient_phone = recipient_phone
      @sender_phone = sender_phone
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      operator_id = hash.key?('operatorId') ? hash['operatorId'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil
      use_local_amount =
        hash.key?('useLocalAmount') ? hash['useLocalAmount'] : nil
      custom_identifier =
        hash.key?('customIdentifier') ? hash['customIdentifier'] : nil
      recipient_phone = RecipientPhone.from_hash(hash['recipientPhone']) if hash['recipientPhone']
      sender_phone = SenderPhone.from_hash(hash['senderPhone']) if hash['senderPhone']

      # Create object from extracted values.
      ReloadlyAirtimeTopupRequest.new(operator_id,
                                      amount,
                                      use_local_amount,
                                      custom_identifier,
                                      recipient_phone,
                                      sender_phone)
    end
  end
end
