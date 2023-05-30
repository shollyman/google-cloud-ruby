# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/servicecontrol/v1/metric_value.proto

require 'google/protobuf'

require 'google/api/servicecontrol/v1/distribution_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n/google/api/servicecontrol/v1/metric_value.proto\x12\x1cgoogle.api.servicecontrol.v1\x1a/google/api/servicecontrol/v1/distribution.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x91\x03\n\x0bMetricValue\x12\x45\n\x06labels\x18\x01 \x03(\x0b\x32\x35.google.api.servicecontrol.v1.MetricValue.LabelsEntry\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x14\n\nbool_value\x18\x04 \x01(\x08H\x00\x12\x15\n\x0bint64_value\x18\x05 \x01(\x03H\x00\x12\x16\n\x0c\x64ouble_value\x18\x06 \x01(\x01H\x00\x12\x16\n\x0cstring_value\x18\x07 \x01(\tH\x00\x12H\n\x12\x64istribution_value\x18\x08 \x01(\x0b\x32*.google.api.servicecontrol.v1.DistributionH\x00\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x07\n\x05value\"g\n\x0eMetricValueSet\x12\x13\n\x0bmetric_name\x18\x01 \x01(\t\x12@\n\rmetric_values\x18\x02 \x03(\x0b\x32).google.api.servicecontrol.v1.MetricValueB\xee\x01\n com.google.api.servicecontrol.v1B\x13MetricValueSetProtoP\x01ZJcloud.google.com/go/servicecontrol/apiv1/servicecontrolpb;servicecontrolpb\xf8\x01\x01\xaa\x02\x1eGoogle.Cloud.ServiceControl.V1\xca\x02\x1eGoogle\\Cloud\\ServiceControl\\V1\xea\x02!Google::Cloud::ServiceControl::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.api.servicecontrol.v1.Distribution", "google/api/servicecontrol/v1/distribution.proto"],
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
    module ServiceControl
      module V1
        MetricValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicecontrol.v1.MetricValue").msgclass
        MetricValueSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicecontrol.v1.MetricValueSet").msgclass
      end
    end
  end
end
