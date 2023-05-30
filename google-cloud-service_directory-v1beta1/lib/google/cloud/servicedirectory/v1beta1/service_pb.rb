# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1beta1/service.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/servicedirectory/v1beta1/endpoint_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/servicedirectory/v1beta1/service.proto\x12%google.cloud.servicedirectory.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/servicedirectory/v1beta1/endpoint.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd8\x03\n\x07Service\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12S\n\x08metadata\x18\x02 \x03(\x0b\x32<.google.cloud.servicedirectory.v1beta1.Service.MetadataEntryB\x03\xe0\x41\x01\x12G\n\tendpoints\x18\x03 \x03(\x0b\x32/.google.cloud.servicedirectory.v1beta1.EndpointB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x7f\xea\x41|\n\'servicedirectory.googleapis.com/Service\x12Qprojects/{project}/locations/{location}/namespaces/{namespace}/services/{service}B\x90\x02\n)com.google.cloud.servicedirectory.v1beta1B\x0cServiceProtoP\x01ZUcloud.google.com/go/servicedirectory/apiv1beta1/servicedirectorypb;servicedirectorypb\xf8\x01\x01\xaa\x02%Google.Cloud.ServiceDirectory.V1Beta1\xca\x02%Google\\Cloud\\ServiceDirectory\\V1beta1\xea\x02(Google::Cloud::ServiceDirectory::V1beta1b\x06proto3"

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
    ["google.cloud.servicedirectory.v1beta1.Endpoint", "google/cloud/servicedirectory/v1beta1/endpoint.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
      module V1beta1
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.Service").msgclass
      end
    end
  end
end
