=begin
#Clever API

#The Clever API

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module CleverAPI

  class School
    attr_accessor :id

    attr_accessor :created

    attr_accessor :district

    attr_accessor :high_grade

    attr_accessor :last_modified

    attr_accessor :location

    attr_accessor :low_grade

    attr_accessor :name

    attr_accessor :nces_id

    attr_accessor :phone

    attr_accessor :principal

    attr_accessor :school_number

    attr_accessor :sis_id

    attr_accessor :state_id

    attr_accessor :mdr_number


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created' => :'created',
        :'district' => :'district',
        :'high_grade' => :'high_grade',
        :'last_modified' => :'last_modified',
        :'location' => :'location',
        :'low_grade' => :'low_grade',
        :'name' => :'name',
        :'nces_id' => :'nces_id',
        :'phone' => :'phone',
        :'principal' => :'principal',
        :'school_number' => :'school_number',
        :'sis_id' => :'sis_id',
        :'state_id' => :'state_id',
        :'mdr_number' => :'mdr_number'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'created' => :'String',
        :'district' => :'String',
        :'high_grade' => :'String',
        :'last_modified' => :'String',
        :'location' => :'Location',
        :'low_grade' => :'String',
        :'name' => :'String',
        :'nces_id' => :'String',
        :'phone' => :'String',
        :'principal' => :'Principal',
        :'school_number' => :'String',
        :'sis_id' => :'String',
        :'state_id' => :'String',
        :'mdr_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'district')
        self.district = attributes[:'district']
      end

      if attributes.has_key?(:'high_grade')
        self.high_grade = attributes[:'high_grade']
      end

      if attributes.has_key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'low_grade')
        self.low_grade = attributes[:'low_grade']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nces_id')
        self.nces_id = attributes[:'nces_id']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'principal')
        self.principal = attributes[:'principal']
      end

      if attributes.has_key?(:'school_number')
        self.school_number = attributes[:'school_number']
      end

      if attributes.has_key?(:'sis_id')
        self.sis_id = attributes[:'sis_id']
      end

      if attributes.has_key?(:'state_id')
        self.state_id = attributes[:'state_id']
      end

      if attributes.has_key?(:'mdr_number')
        self.mdr_number = attributes[:'mdr_number']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created == o.created &&
          district == o.district &&
          high_grade == o.high_grade &&
          last_modified == o.last_modified &&
          location == o.location &&
          low_grade == o.low_grade &&
          name == o.name &&
          nces_id == o.nces_id &&
          phone == o.phone &&
          principal == o.principal &&
          school_number == o.school_number &&
          sis_id == o.sis_id &&
          state_id == o.state_id &&
          mdr_number == o.mdr_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created, district, high_grade, last_modified, location, low_grade, name, nces_id, phone, principal, school_number, sis_id, state_id, mdr_number].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CleverAPI.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
