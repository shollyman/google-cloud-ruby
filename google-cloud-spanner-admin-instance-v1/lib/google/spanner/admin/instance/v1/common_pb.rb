# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/admin/instance/v1/common.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/spanner/admin/instance/v1/common.proto\x12 google.spanner.admin.instance.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8b\x01\n\x11OperationProgress\x12\x18\n\x10progress_percent\x18\x01 \x01(\x05\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\xfd\x01\n$com.google.spanner.admin.instance.v1B\x0b\x43ommonProtoP\x01ZFcloud.google.com/go/spanner/admin/instance/apiv1/instancepb;instancepb\xaa\x02&Google.Cloud.Spanner.Admin.Instance.V1\xca\x02&Google\\Cloud\\Spanner\\Admin\\Instance\\V1\xea\x02+Google::Cloud::Spanner::Admin::Instance::V1b\x06proto3"

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
    module Spanner
      module Admin
        module Instance
          module V1
            OperationProgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.OperationProgress").msgclass
          end
        end
      end
    end
  end
end
