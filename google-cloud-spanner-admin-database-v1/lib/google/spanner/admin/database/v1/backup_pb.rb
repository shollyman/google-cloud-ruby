# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/admin/database/v1/backup.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/spanner/admin/database/v1/common_pb'


descriptor_data = "\n-google/spanner/admin/database/v1/backup.proto\x12 google.spanner.admin.database.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a-google/spanner/admin/database/v1/common.proto\"\xc3\x06\n\x06\x42\x61\x63kup\x12\x36\n\x08\x64\x61tabase\x18\x02 \x01(\tB$\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x30\n\x0cversion_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x65xpire_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x17\n\nsize_bytes\x18\x05 \x01(\x03\x42\x03\xe0\x41\x03\x12\x42\n\x05state\x18\x06 \x01(\x0e\x32..google.spanner.admin.database.v1.Backup.StateB\x03\xe0\x41\x03\x12\x46\n\x15referencing_databases\x18\x07 \x03(\tB\'\xe0\x41\x03\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12N\n\x0f\x65ncryption_info\x18\x08 \x01(\x0b\x32\x30.google.spanner.admin.database.v1.EncryptionInfoB\x03\xe0\x41\x03\x12P\n\x10\x64\x61tabase_dialect\x18\n \x01(\x0e\x32\x31.google.spanner.admin.database.v1.DatabaseDialectB\x03\xe0\x41\x03\x12\x42\n\x13referencing_backups\x18\x0b \x03(\tB%\xe0\x41\x03\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x38\n\x0fmax_expire_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02:\\\xea\x41Y\n\x1dspanner.googleapis.com/Backup\x12\x38projects/{project}/instances/{instance}/backups/{backup}\"\x85\x02\n\x13\x43reateBackupRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12=\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32(.google.spanner.admin.database.v1.BackupB\x03\xe0\x41\x02\x12^\n\x11\x65ncryption_config\x18\x04 \x01(\x0b\x32>.google.spanner.admin.database.v1.CreateBackupEncryptionConfigB\x03\xe0\x41\x01\"\xf8\x01\n\x14\x43reateBackupMetadata\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x36\n\x08\x64\x61tabase\x18\x02 \x01(\tB$\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x45\n\x08progress\x18\x03 \x01(\x0b\x32\x33.google.spanner.admin.database.v1.OperationProgress\x12/\n\x0b\x63\x61ncel_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xb6\x02\n\x11\x43opyBackupRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\rsource_backup\x18\x03 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x34\n\x0b\x65xpire_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\x12\\\n\x11\x65ncryption_config\x18\x05 \x01(\x0b\x32<.google.spanner.admin.database.v1.CopyBackupEncryptionConfigB\x03\xe0\x41\x01\"\xf9\x01\n\x12\x43opyBackupMetadata\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x39\n\rsource_backup\x18\x02 \x01(\tB\"\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x45\n\x08progress\x18\x03 \x01(\x0b\x32\x33.google.spanner.admin.database.v1.OperationProgress\x12/\n\x0b\x63\x61ncel_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x8a\x01\n\x13UpdateBackupRequest\x12=\n\x06\x62\x61\x63kup\x18\x01 \x01(\x0b\x32(.google.spanner.admin.database.v1.BackupB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"G\n\x10GetBackupRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\"J\n\x13\x44\x65leteBackupRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\"\x84\x01\n\x12ListBackupsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"i\n\x13ListBackupsResponse\x12\x39\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32(.google.spanner.admin.database.v1.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x8d\x01\n\x1bListBackupOperationsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"j\n\x1cListBackupOperationsResponse\x12\x31\n\noperations\x18\x01 \x03(\x0b\x32\x1d.google.longrunning.Operation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xe2\x01\n\nBackupInfo\x12\x32\n\x06\x62\x61\x63kup\x18\x01 \x01(\tB\"\xfa\x41\x1f\n\x1dspanner.googleapis.com/Backup\x12\x30\n\x0cversion_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12=\n\x0fsource_database\x18\x03 \x01(\tB$\xfa\x41!\n\x1fspanner.googleapis.com/Database\"\xdd\x02\n\x1c\x43reateBackupEncryptionConfig\x12k\n\x0f\x65ncryption_type\x18\x01 \x01(\x0e\x32M.google.spanner.admin.database.v1.CreateBackupEncryptionConfig.EncryptionTypeB\x03\xe0\x41\x02\x12?\n\x0ckms_key_name\x18\x02 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\"\x8e\x01\n\x0e\x45ncryptionType\x12\x1f\n\x1b\x45NCRYPTION_TYPE_UNSPECIFIED\x10\x00\x12\x1b\n\x17USE_DATABASE_ENCRYPTION\x10\x01\x12\x1d\n\x19GOOGLE_DEFAULT_ENCRYPTION\x10\x02\x12\x1f\n\x1b\x43USTOMER_MANAGED_ENCRYPTION\x10\x03\"\xe9\x02\n\x1a\x43opyBackupEncryptionConfig\x12i\n\x0f\x65ncryption_type\x18\x01 \x01(\x0e\x32K.google.spanner.admin.database.v1.CopyBackupEncryptionConfig.EncryptionTypeB\x03\xe0\x41\x02\x12?\n\x0ckms_key_name\x18\x02 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\"\x9e\x01\n\x0e\x45ncryptionType\x12\x1f\n\x1b\x45NCRYPTION_TYPE_UNSPECIFIED\x10\x00\x12+\n\'USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION\x10\x01\x12\x1d\n\x19GOOGLE_DEFAULT_ENCRYPTION\x10\x02\x12\x1f\n\x1b\x43USTOMER_MANAGED_ENCRYPTION\x10\x03\x42\xfd\x01\n$com.google.spanner.admin.database.v1B\x0b\x42\x61\x63kupProtoP\x01ZFcloud.google.com/go/spanner/admin/database/apiv1/databasepb;databasepb\xaa\x02&Google.Cloud.Spanner.Admin.Database.V1\xca\x02&Google\\Cloud\\Spanner\\Admin\\Database\\V1\xea\x02+Google::Cloud::Spanner::Admin::Database::V1b\x06proto3"

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
    ["google.spanner.admin.database.v1.EncryptionInfo", "google/spanner/admin/database/v1/common.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.longrunning.Operation", "google/longrunning/operations.proto"],
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
            Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.Backup").msgclass
            Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.Backup.State").enummodule
            CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CreateBackupRequest").msgclass
            CreateBackupMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CreateBackupMetadata").msgclass
            CopyBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CopyBackupRequest").msgclass
            CopyBackupMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CopyBackupMetadata").msgclass
            UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.UpdateBackupRequest").msgclass
            GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.GetBackupRequest").msgclass
            DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.DeleteBackupRequest").msgclass
            ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupsRequest").msgclass
            ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupsResponse").msgclass
            ListBackupOperationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupOperationsRequest").msgclass
            ListBackupOperationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupOperationsResponse").msgclass
            BackupInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.BackupInfo").msgclass
            CreateBackupEncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CreateBackupEncryptionConfig").msgclass
            CreateBackupEncryptionConfig::EncryptionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CreateBackupEncryptionConfig.EncryptionType").enummodule
            CopyBackupEncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CopyBackupEncryptionConfig").msgclass
            CopyBackupEncryptionConfig::EncryptionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CopyBackupEncryptionConfig.EncryptionType").enummodule
          end
        end
      end
    end
  end
end
