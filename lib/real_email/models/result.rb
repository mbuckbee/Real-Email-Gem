# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module RealEmail
  class Result

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :valid

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :domain_error

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :domain

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_freemail

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :syntax_error

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_disposable

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :typos_fixed

    def initialize(valid = nil,
                   domain_error = nil,
                   domain = nil,
                   is_freemail = nil,
                   syntax_error = nil,
                   email = nil,
                   is_disposable = nil,
                   typos_fixed = nil)
      @valid = valid
      @domain_error = domain_error
      @domain = domain
      @is_freemail = is_freemail
      @syntax_error = syntax_error
      @email = email
      @is_disposable = is_disposable
      @typos_fixed = typos_fixed

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        valid = hash["valid"]
        domain_error = hash["domain_error"]
        domain = hash["domain"]
        is_freemail = hash["is_freemail"]
        syntax_error = hash["syntax_error"]
        email = hash["email"]
        is_disposable = hash["is_disposable"]
        typos_fixed = hash["typos_fixed"]
        # Create object from extracted values
        Result.new(valid,
                   domain_error,
                   domain,
                   is_freemail,
                   syntax_error,
                   email,
                   is_disposable,
                   typos_fixed)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['valid'] = valid
      hash['domain_error'] = domain_error
      hash['domain'] = domain
      hash['is_freemail'] = is_freemail
      hash['syntax_error'] = syntax_error
      hash['email'] = email
      hash['is_disposable'] = is_disposable
      hash['typos_fixed'] = typos_fixed
      hash
    end
  end
end
