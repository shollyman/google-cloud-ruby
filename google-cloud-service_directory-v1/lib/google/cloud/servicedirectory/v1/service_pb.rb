# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1/service.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/servicedirectory/v1/endpoint_pb'


descriptor_data = "\n.google/cloud/servicedirectory/v1/service.proto\x12 google.cloud.servicedirectory.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a/google/cloud/servicedirectory/v1/endpoint.proto\"\xeb\x02\n\x07Service\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12T\n\x0b\x61nnotations\x18\x04 \x03(\x0b\x32:.google.cloud.servicedirectory.v1.Service.AnnotationsEntryB\x03\xe0\x41\x01\x12\x42\n\tendpoints\x18\x03 \x03(\x0b\x32*.google.cloud.servicedirectory.v1.EndpointB\x03\xe0\x41\x03\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x7f\xea\x41|\n\'servicedirectory.googleapis.com/Service\x12Qprojects/{project}/locations/{location}/namespaces/{namespace}/services/{service}B\xf7\x01\n$com.google.cloud.servicedirectory.v1B\x0cServiceProtoP\x01ZPcloud.google.com/go/servicedirectory/apiv1/servicedirectorypb;servicedirectorypb\xf8\x01\x01\xaa\x02 Google.Cloud.ServiceDirectory.V1\xca\x02 Google\\Cloud\\ServiceDirectory\\V1\xea\x02#Google::Cloud::ServiceDirectory::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.servicedirectory.v1.Endpoint", "google/cloud/servicedirectory/v1/endpoint.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ServiceDirectory
      module V1
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1.Service").msgclass
      end
    end
  end
end
