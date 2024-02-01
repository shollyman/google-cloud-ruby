# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1beta1/lookup_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/servicedirectory/v1beta1/service_pb'


descriptor_data = "\n:google/cloud/servicedirectory/v1beta1/lookup_service.proto\x12%google.cloud.servicedirectory.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/servicedirectory/v1beta1/service.proto\"\x93\x01\n\x15ResolveServiceRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe2\x41\x01\x02\xfa\x41)\n\'servicedirectory.googleapis.com/Service\x12\x1b\n\rmax_endpoints\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x1d\n\x0f\x65ndpoint_filter\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"Y\n\x16ResolveServiceResponse\x12?\n\x07service\x18\x01 \x01(\x0b\x32..google.cloud.servicedirectory.v1beta1.Service2\xc7\x02\n\rLookupService\x12\xe0\x01\n\x0eResolveService\x12<.google.cloud.servicedirectory.v1beta1.ResolveServiceRequest\x1a=.google.cloud.servicedirectory.v1beta1.ResolveServiceResponse\"Q\x82\xd3\xe4\x93\x02K\"F/v1beta1/{name=projects/*/locations/*/namespaces/*/services/*}:resolve:\x01*\x1aS\xca\x41\x1fservicedirectory.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x96\x02\n)com.google.cloud.servicedirectory.v1beta1B\x12LookupServiceProtoP\x01ZUcloud.google.com/go/servicedirectory/apiv1beta1/servicedirectorypb;servicedirectorypb\xf8\x01\x01\xaa\x02%Google.Cloud.ServiceDirectory.V1Beta1\xca\x02%Google\\Cloud\\ServiceDirectory\\V1beta1\xea\x02(Google::Cloud::ServiceDirectory::V1beta1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.servicedirectory.v1beta1.Service", "google/cloud/servicedirectory/v1beta1/service.proto"],
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
        ResolveServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.ResolveServiceRequest").msgclass
        ResolveServiceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.ResolveServiceResponse").msgclass
      end
    end
  end
end
