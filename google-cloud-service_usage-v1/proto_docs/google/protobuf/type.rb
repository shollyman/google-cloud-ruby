# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Protobuf
    # A protocol buffer message type.
    # @!attribute [rw] name
    #   @return [::String]
    #     The fully qualified message name.
    # @!attribute [rw] fields
    #   @return [::Array<::Google::Protobuf::Field>]
    #     The list of fields.
    # @!attribute [rw] oneofs
    #   @return [::Array<::String>]
    #     The list of types appearing in `oneof` definitions in this type.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     The protocol buffer options.
    # @!attribute [rw] source_context
    #   @return [::Google::Protobuf::SourceContext]
    #     The source context.
    # @!attribute [rw] syntax
    #   @return [::Google::Protobuf::Syntax]
    #     The source syntax.
    # @!attribute [rw] edition
    #   @return [::String]
    #     The source edition string, only valid when syntax is SYNTAX_EDITIONS.
    class Type
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # A single field of a message type.
    # @!attribute [rw] kind
    #   @return [::Google::Protobuf::Field::Kind]
    #     The field type.
    # @!attribute [rw] cardinality
    #   @return [::Google::Protobuf::Field::Cardinality]
    #     The field cardinality.
    # @!attribute [rw] number
    #   @return [::Integer]
    #     The field number.
    # @!attribute [rw] name
    #   @return [::String]
    #     The field name.
    # @!attribute [rw] type_url
    #   @return [::String]
    #     The field type URL, without the scheme, for message or enumeration
    #     types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
    # @!attribute [rw] oneof_index
    #   @return [::Integer]
    #     The index of the field type in `Type.oneofs`, for message or enumeration
    #     types. The first type has index 1; zero means the type is not in the list.
    # @!attribute [rw] packed
    #   @return [::Boolean]
    #     Whether to use alternative packed wire representation.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     The protocol buffer options.
    # @!attribute [rw] json_name
    #   @return [::String]
    #     The field JSON name.
    # @!attribute [rw] default_value
    #   @return [::String]
    #     The string value of the default value of this field. Proto2 syntax only.
    class Field
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # Basic field types.
      module Kind
        # Field type unknown.
        TYPE_UNKNOWN = 0

        # Field type double.
        TYPE_DOUBLE = 1

        # Field type float.
        TYPE_FLOAT = 2

        # Field type int64.
        TYPE_INT64 = 3

        # Field type uint64.
        TYPE_UINT64 = 4

        # Field type int32.
        TYPE_INT32 = 5

        # Field type fixed64.
        TYPE_FIXED64 = 6

        # Field type fixed32.
        TYPE_FIXED32 = 7

        # Field type bool.
        TYPE_BOOL = 8

        # Field type string.
        TYPE_STRING = 9

        # Field type group. Proto2 syntax only, and deprecated.
        TYPE_GROUP = 10

        # Field type message.
        TYPE_MESSAGE = 11

        # Field type bytes.
        TYPE_BYTES = 12

        # Field type uint32.
        TYPE_UINT32 = 13

        # Field type enum.
        TYPE_ENUM = 14

        # Field type sfixed32.
        TYPE_SFIXED32 = 15

        # Field type sfixed64.
        TYPE_SFIXED64 = 16

        # Field type sint32.
        TYPE_SINT32 = 17

        # Field type sint64.
        TYPE_SINT64 = 18
      end

      # Whether a field is optional, required, or repeated.
      module Cardinality
        # For fields with unknown cardinality.
        CARDINALITY_UNKNOWN = 0

        # For optional fields.
        CARDINALITY_OPTIONAL = 1

        # For required fields. Proto2 syntax only.
        CARDINALITY_REQUIRED = 2

        # For repeated fields.
        CARDINALITY_REPEATED = 3
      end
    end

    # Enum type definition.
    # @!attribute [rw] name
    #   @return [::String]
    #     Enum type name.
    # @!attribute [rw] enumvalue
    #   @return [::Array<::Google::Protobuf::EnumValue>]
    #     Enum value definitions.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     Protocol buffer options.
    # @!attribute [rw] source_context
    #   @return [::Google::Protobuf::SourceContext]
    #     The source context.
    # @!attribute [rw] syntax
    #   @return [::Google::Protobuf::Syntax]
    #     The source syntax.
    # @!attribute [rw] edition
    #   @return [::String]
    #     The source edition string, only valid when syntax is SYNTAX_EDITIONS.
    class Enum
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Enum value definition.
    # @!attribute [rw] name
    #   @return [::String]
    #     Enum value name.
    # @!attribute [rw] number
    #   @return [::Integer]
    #     Enum value number.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     Protocol buffer options.
    class EnumValue
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # A protocol buffer option, which can be attached to a message, field,
    # enumeration, etc.
    # @!attribute [rw] name
    #   @return [::String]
    #     The option's name. For protobuf built-in options (options defined in
    #     descriptor.proto), this is the short name. For example, `"map_entry"`.
    #     For custom options, it should be the fully-qualified name. For example,
    #     `"google.api.http"`.
    # @!attribute [rw] value
    #   @return [::Google::Protobuf::Any]
    #     The option's value packed in an Any message. If the value is a primitive,
    #     the corresponding wrapper type defined in google/protobuf/wrappers.proto
    #     should be used. If the value is an enum, it should be stored as an int32
    #     value using the google.protobuf.Int32Value type.
    class Option
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # The syntax in which a protocol buffer element is defined.
    module Syntax
      # Syntax `proto2`.
      SYNTAX_PROTO2 = 0

      # Syntax `proto3`.
      SYNTAX_PROTO3 = 1

      # Syntax `editions`.
      SYNTAX_EDITIONS = 2
    end
  end
end
