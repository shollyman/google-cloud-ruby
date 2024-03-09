# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/table.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/bigtable/admin/v2/types_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n$google/bigtable/admin/v2/table.proto\x12\x18google.bigtable.admin.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a$google/bigtable/admin/v2/types.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\x9b\x01\n\x0bRestoreInfo\x12@\n\x0bsource_type\x18\x01 \x01(\x0e\x32+.google.bigtable.admin.v2.RestoreSourceType\x12;\n\x0b\x62\x61\x63kup_info\x18\x02 \x01(\x0b\x32$.google.bigtable.admin.v2.BackupInfoH\x00\x42\r\n\x0bsource_info\"I\n\x12\x43hangeStreamConfig\x12\x33\n\x10retention_period\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xda\t\n\x05Table\x12\x0c\n\x04name\x18\x01 \x01(\t\x12O\n\x0e\x63luster_states\x18\x02 \x03(\x0b\x32\x32.google.bigtable.admin.v2.Table.ClusterStatesEntryB\x03\xe0\x41\x03\x12L\n\x0f\x63olumn_families\x18\x03 \x03(\x0b\x32\x33.google.bigtable.admin.v2.Table.ColumnFamiliesEntry\x12N\n\x0bgranularity\x18\x04 \x01(\x0e\x32\x34.google.bigtable.admin.v2.Table.TimestampGranularityB\x03\xe0\x41\x05\x12@\n\x0crestore_info\x18\x06 \x01(\x0b\x32%.google.bigtable.admin.v2.RestoreInfoB\x03\xe0\x41\x03\x12J\n\x14\x63hange_stream_config\x18\x08 \x01(\x0b\x32,.google.bigtable.admin.v2.ChangeStreamConfig\x12\x1b\n\x13\x64\x65letion_protection\x18\t \x01(\x08\x1a\xc6\x02\n\x0c\x43lusterState\x12]\n\x11replication_state\x18\x01 \x01(\x0e\x32=.google.bigtable.admin.v2.Table.ClusterState.ReplicationStateB\x03\xe0\x41\x03\x12\x46\n\x0f\x65ncryption_info\x18\x02 \x03(\x0b\x32(.google.bigtable.admin.v2.EncryptionInfoB\x03\xe0\x41\x03\"\x8e\x01\n\x10ReplicationState\x12\x13\n\x0fSTATE_NOT_KNOWN\x10\x00\x12\x10\n\x0cINITIALIZING\x10\x01\x12\x17\n\x13PLANNED_MAINTENANCE\x10\x02\x12\x19\n\x15UNPLANNED_MAINTENANCE\x10\x03\x12\t\n\x05READY\x10\x04\x12\x14\n\x10READY_OPTIMIZING\x10\x05\x1a\x62\n\x12\x43lusterStatesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12;\n\x05value\x18\x02 \x01(\x0b\x32,.google.bigtable.admin.v2.Table.ClusterState:\x02\x38\x01\x1a]\n\x13\x43olumnFamiliesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x35\n\x05value\x18\x02 \x01(\x0b\x32&.google.bigtable.admin.v2.ColumnFamily:\x02\x38\x01\"I\n\x14TimestampGranularity\x12%\n!TIMESTAMP_GRANULARITY_UNSPECIFIED\x10\x00\x12\n\n\x06MILLIS\x10\x01\"q\n\x04View\x12\x14\n\x10VIEW_UNSPECIFIED\x10\x00\x12\r\n\tNAME_ONLY\x10\x01\x12\x0f\n\x0bSCHEMA_VIEW\x10\x02\x12\x14\n\x10REPLICATION_VIEW\x10\x03\x12\x13\n\x0f\x45NCRYPTION_VIEW\x10\x05\x12\x08\n\x04\x46ULL\x10\x04:_\xea\x41\\\n\"bigtableadmin.googleapis.com/Table\x12\x36projects/{project}/instances/{instance}/tables/{table}\"\xe3\x05\n\x0e\x41uthorizedView\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12J\n\x0bsubset_view\x18\x02 \x01(\x0b\x32\x33.google.bigtable.admin.v2.AuthorizedView.SubsetViewH\x00\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\x12\x1b\n\x13\x64\x65letion_protection\x18\x04 \x01(\x08\x1a?\n\rFamilySubsets\x12\x12\n\nqualifiers\x18\x01 \x03(\x0c\x12\x1a\n\x12qualifier_prefixes\x18\x02 \x03(\x0c\x1a\xf0\x01\n\nSubsetView\x12\x14\n\x0crow_prefixes\x18\x01 \x03(\x0c\x12^\n\x0e\x66\x61mily_subsets\x18\x02 \x03(\x0b\x32\x46.google.bigtable.admin.v2.AuthorizedView.SubsetView.FamilySubsetsEntry\x1al\n\x12\x46\x61milySubsetsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x45\n\x05value\x18\x02 \x01(\x0b\x32\x36.google.bigtable.admin.v2.AuthorizedView.FamilySubsets:\x02\x38\x01\"Q\n\x0cResponseView\x12\x1d\n\x19RESPONSE_VIEW_UNSPECIFIED\x10\x00\x12\r\n\tNAME_ONLY\x10\x01\x12\t\n\x05\x42\x41SIC\x10\x02\x12\x08\n\x04\x46ULL\x10\x03:\xac\x01\xea\x41\xa8\x01\n+bigtableadmin.googleapis.com/AuthorizedView\x12Xprojects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}*\x0f\x61uthorizedViews2\x0e\x61uthorizedViewB\x11\n\x0f\x61uthorized_view\"u\n\x0c\x43olumnFamily\x12\x31\n\x07gc_rule\x18\x01 \x01(\x0b\x32 .google.bigtable.admin.v2.GcRule\x12\x32\n\nvalue_type\x18\x03 \x01(\x0b\x32\x1e.google.bigtable.admin.v2.Type\"\xd5\x02\n\x06GcRule\x12\x1a\n\x10max_num_versions\x18\x01 \x01(\x05H\x00\x12,\n\x07max_age\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00\x12\x45\n\x0cintersection\x18\x03 \x01(\x0b\x32-.google.bigtable.admin.v2.GcRule.IntersectionH\x00\x12\x37\n\x05union\x18\x04 \x01(\x0b\x32&.google.bigtable.admin.v2.GcRule.UnionH\x00\x1a?\n\x0cIntersection\x12/\n\x05rules\x18\x01 \x03(\x0b\x32 .google.bigtable.admin.v2.GcRule\x1a\x38\n\x05Union\x12/\n\x05rules\x18\x01 \x03(\x0b\x32 .google.bigtable.admin.v2.GcRuleB\x06\n\x04rule\"\xd9\x02\n\x0e\x45ncryptionInfo\x12U\n\x0f\x65ncryption_type\x18\x03 \x01(\x0e\x32\x37.google.bigtable.admin.v2.EncryptionInfo.EncryptionTypeB\x03\xe0\x41\x03\x12\x32\n\x11\x65ncryption_status\x18\x04 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12I\n\x0fkms_key_version\x18\x02 \x01(\tB0\xe0\x41\x03\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"q\n\x0e\x45ncryptionType\x12\x1f\n\x1b\x45NCRYPTION_TYPE_UNSPECIFIED\x10\x00\x12\x1d\n\x19GOOGLE_DEFAULT_ENCRYPTION\x10\x01\x12\x1f\n\x1b\x43USTOMER_MANAGED_ENCRYPTION\x10\x02\"\xe0\x03\n\x08Snapshot\x12\x0c\n\x04name\x18\x01 \x01(\t\x12:\n\x0csource_table\x18\x02 \x01(\x0b\x32\x1f.google.bigtable.admin.v2.TableB\x03\xe0\x41\x03\x12\x1c\n\x0f\x64\x61ta_size_bytes\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12/\n\x0b\x64\x65lete_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12<\n\x05state\x18\x06 \x01(\x0e\x32(.google.bigtable.admin.v2.Snapshot.StateB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x07 \x01(\t\"5\n\x05State\x12\x13\n\x0fSTATE_NOT_KNOWN\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02:{\xea\x41x\n%bigtableadmin.googleapis.com/Snapshot\x12Oprojects/{project}/instances/{instance}/clusters/{cluster}/snapshots/{snapshot}\"\xbb\x04\n\x06\x42\x61\x63kup\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1c\n\x0csource_table\x18\x02 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x02\x12\x1a\n\rsource_backup\x18\n \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x17\n\nsize_bytes\x18\x06 \x01(\x03\x42\x03\xe0\x41\x03\x12:\n\x05state\x18\x07 \x01(\x0e\x32&.google.bigtable.admin.v2.Backup.StateB\x03\xe0\x41\x03\x12\x46\n\x0f\x65ncryption_info\x18\t \x01(\x0b\x32(.google.bigtable.admin.v2.EncryptionInfoB\x03\xe0\x41\x03\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02:u\xea\x41r\n#bigtableadmin.googleapis.com/Backup\x12Kprojects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}\"\xc0\x01\n\nBackupInfo\x12\x13\n\x06\x62\x61\x63kup\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0csource_table\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rsource_backup\x18\n \x01(\tB\x03\xe0\x41\x03*D\n\x11RestoreSourceType\x12#\n\x1fRESTORE_SOURCE_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x42\x41\x43KUP\x10\x01\x42\xfc\x02\n\x1c\x63om.google.bigtable.admin.v2B\nTableProtoP\x01Z=google.golang.org/genproto/googleapis/bigtable/admin/v2;admin\xaa\x02\x1eGoogle.Cloud.Bigtable.Admin.V2\xca\x02\x1eGoogle\\Cloud\\Bigtable\\Admin\\V2\xea\x02\"Google::Cloud::Bigtable::Admin::V2\xea\x41\xa6\x01\n(cloudkms.googleapis.com/CryptoKeyVersion\x12zprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.bigtable.admin.v2.Type", "google/bigtable/admin/v2/types.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module Bigtable
      module Admin
        module V2
          RestoreInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.RestoreInfo").msgclass
          ChangeStreamConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ChangeStreamConfig").msgclass
          Table = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table").msgclass
          Table::ClusterState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.ClusterState").msgclass
          Table::ClusterState::ReplicationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.ClusterState.ReplicationState").enummodule
          Table::TimestampGranularity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.TimestampGranularity").enummodule
          Table::View = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Table.View").enummodule
          AuthorizedView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AuthorizedView").msgclass
          AuthorizedView::FamilySubsets = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AuthorizedView.FamilySubsets").msgclass
          AuthorizedView::SubsetView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AuthorizedView.SubsetView").msgclass
          AuthorizedView::ResponseView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AuthorizedView.ResponseView").enummodule
          ColumnFamily = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ColumnFamily").msgclass
          GcRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule").msgclass
          GcRule::Intersection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule.Intersection").msgclass
          GcRule::Union = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GcRule.Union").msgclass
          EncryptionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.EncryptionInfo").msgclass
          EncryptionInfo::EncryptionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.EncryptionInfo.EncryptionType").enummodule
          Snapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Snapshot").msgclass
          Snapshot::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Snapshot.State").enummodule
          Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Backup").msgclass
          Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Backup.State").enummodule
          BackupInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.BackupInfo").msgclass
          RestoreSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.RestoreSourceType").enummodule
        end
      end
    end
  end
end
