# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/admin/database/v1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n-google/spanner/admin/database/v1/common.proto\x12 google.spanner.admin.database.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\x8b\x01\n\x11OperationProgress\x12\x18\n\x10progress_percent\x18\x01 \x01(\x05\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"P\n\x10\x45ncryptionConfig\x12<\n\x0ckms_key_name\x18\x02 \x01(\tB&\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\"\xc2\x02\n\x0e\x45ncryptionInfo\x12S\n\x0f\x65ncryption_type\x18\x03 \x01(\x0e\x32\x35.google.spanner.admin.database.v1.EncryptionInfo.TypeB\x03\xe0\x41\x03\x12\x32\n\x11\x65ncryption_status\x18\x04 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12I\n\x0fkms_key_version\x18\x02 \x01(\tB0\xe0\x41\x03\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"\\\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x1d\n\x19GOOGLE_DEFAULT_ENCRYPTION\x10\x01\x12\x1f\n\x1b\x43USTOMER_MANAGED_ENCRYPTION\x10\x02*\\\n\x0f\x44\x61tabaseDialect\x12 \n\x1c\x44\x41TABASE_DIALECT_UNSPECIFIED\x10\x00\x12\x17\n\x13GOOGLE_STANDARD_SQL\x10\x01\x12\x0e\n\nPOSTGRESQL\x10\x02\x42\xa2\x04\n$com.google.spanner.admin.database.v1B\x0b\x43ommonProtoP\x01ZFcloud.google.com/go/spanner/admin/database/apiv1/databasepb;databasepb\xaa\x02&Google.Cloud.Spanner.Admin.Database.V1\xca\x02&Google\\Cloud\\Spanner\\Admin\\Database\\V1\xea\x02+Google::Cloud::Spanner::Admin::Database::V1\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}\xea\x41\xa6\x01\n(cloudkms.googleapis.com/CryptoKeyVersion\x12zprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}b\x06proto3"

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
    ["google.rpc.Status", "google/rpc/status.proto"],
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
        module Database
          module V1
            OperationProgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.OperationProgress").msgclass
            EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.EncryptionConfig").msgclass
            EncryptionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.EncryptionInfo").msgclass
            EncryptionInfo::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.EncryptionInfo.Type").enummodule
            DatabaseDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.DatabaseDialect").enummodule
          end
        end
      end
    end
  end
end
