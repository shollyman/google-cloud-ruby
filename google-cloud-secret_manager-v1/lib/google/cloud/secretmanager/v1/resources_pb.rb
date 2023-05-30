# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/secretmanager/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/cloud/secretmanager/v1/resources.proto\x12\x1dgoogle.cloud.secretmanager.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf4\x06\n\x06Secret\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12G\n\x0breplication\x18\x02 \x01(\x0b\x32*.google.cloud.secretmanager.v1.ReplicationB\x06\xe0\x41\x05\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x41\n\x06labels\x18\x04 \x03(\x0b\x32\x31.google.cloud.secretmanager.v1.Secret.LabelsEntry\x12\x39\n\x06topics\x18\x05 \x03(\x0b\x32$.google.cloud.secretmanager.v1.TopicB\x03\xe0\x41\x01\x12\x36\n\x0b\x65xpire_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01H\x00\x12-\n\x03ttl\x18\x07 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x04H\x00\x12\x11\n\x04\x65tag\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12>\n\x08rotation\x18\t \x01(\x0b\x32\'.google.cloud.secretmanager.v1.RotationB\x03\xe0\x41\x01\x12W\n\x0fversion_aliases\x18\x0b \x03(\x0b\x32\x39.google.cloud.secretmanager.v1.Secret.VersionAliasesEntryB\x03\xe0\x41\x01\x12P\n\x0b\x61nnotations\x18\r \x03(\x0b\x32\x36.google.cloud.secretmanager.v1.Secret.AnnotationsEntryB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x35\n\x13VersionAliasesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:M\xea\x41J\n#secretmanager.googleapis.com/Secret\x12#projects/{project}/secrets/{secret}B\x0c\n\nexpiration\"\xa2\x04\n\rSecretVersion\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x35\n\x0c\x64\x65stroy_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x46\n\x05state\x18\x04 \x01(\x0e\x32\x32.google.cloud.secretmanager.v1.SecretVersion.StateB\x03\xe0\x41\x03\x12L\n\x12replication_status\x18\x05 \x01(\x0b\x32\x30.google.cloud.secretmanager.v1.ReplicationStatus\x12\x11\n\x04\x65tag\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12.\n!client_specified_payload_checksum\x18\x07 \x01(\x08\x42\x03\xe0\x41\x03\"H\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x12\r\n\tDESTROYED\x10\x03:n\xea\x41k\n*secretmanager.googleapis.com/SecretVersion\x12=projects/{project}/secrets/{secret}/versions/{secret_version}\"\x90\x04\n\x0bReplication\x12I\n\tautomatic\x18\x01 \x01(\x0b\x32\x34.google.cloud.secretmanager.v1.Replication.AutomaticH\x00\x12N\n\x0cuser_managed\x18\x02 \x01(\x0b\x32\x36.google.cloud.secretmanager.v1.Replication.UserManagedH\x00\x1ao\n\tAutomatic\x12\x62\n\x1b\x63ustomer_managed_encryption\x18\x01 \x01(\x0b\x32\x38.google.cloud.secretmanager.v1.CustomerManagedEncryptionB\x03\xe0\x41\x01\x1a\xe5\x01\n\x0bUserManaged\x12U\n\x08replicas\x18\x01 \x03(\x0b\x32>.google.cloud.secretmanager.v1.Replication.UserManaged.ReplicaB\x03\xe0\x41\x02\x1a\x7f\n\x07Replica\x12\x10\n\x08location\x18\x01 \x01(\t\x12\x62\n\x1b\x63ustomer_managed_encryption\x18\x02 \x01(\x0b\x32\x38.google.cloud.secretmanager.v1.CustomerManagedEncryptionB\x03\xe0\x41\x01\x42\r\n\x0breplication\"6\n\x19\x43ustomerManagedEncryption\x12\x19\n\x0ckms_key_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\xeb\x04\n\x11ReplicationStatus\x12U\n\tautomatic\x18\x01 \x01(\x0b\x32@.google.cloud.secretmanager.v1.ReplicationStatus.AutomaticStatusH\x00\x12Z\n\x0cuser_managed\x18\x02 \x01(\x0b\x32\x42.google.cloud.secretmanager.v1.ReplicationStatus.UserManagedStatusH\x00\x1a{\n\x0f\x41utomaticStatus\x12h\n\x1b\x63ustomer_managed_encryption\x18\x01 \x01(\x0b\x32>.google.cloud.secretmanager.v1.CustomerManagedEncryptionStatusB\x03\xe0\x41\x03\x1a\x8f\x02\n\x11UserManagedStatus\x12g\n\x08replicas\x18\x01 \x03(\x0b\x32P.google.cloud.secretmanager.v1.ReplicationStatus.UserManagedStatus.ReplicaStatusB\x03\xe0\x41\x03\x1a\x90\x01\n\rReplicaStatus\x12\x15\n\x08location\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12h\n\x1b\x63ustomer_managed_encryption\x18\x02 \x01(\x0b\x32>.google.cloud.secretmanager.v1.CustomerManagedEncryptionStatusB\x03\xe0\x41\x03\x42\x14\n\x12replication_status\"D\n\x1f\x43ustomerManagedEncryptionStatus\x12!\n\x14kms_key_version_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"_\n\x05Topic\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02:C\xea\x41@\n\x1bpubsub.googleapis.com/Topic\x12!projects/{project}/topics/{topic}\"\x80\x01\n\x08Rotation\x12;\n\x12next_rotation_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\x12\x37\n\x0frotation_period\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x04\"L\n\rSecretPayload\x12\x0c\n\x04\x64\x61ta\x18\x01 \x01(\x0c\x12\x1d\n\x0b\x64\x61ta_crc32c\x18\x02 \x01(\x03\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x42\x0e\n\x0c_data_crc32cB\xea\x01\n!com.google.cloud.secretmanager.v1B\x0eResourcesProtoP\x01ZGcloud.google.com/go/secretmanager/apiv1/secretmanagerpb;secretmanagerpb\xf8\x01\x01\xa2\x02\x03GSM\xaa\x02\x1dGoogle.Cloud.SecretManager.V1\xca\x02\x1dGoogle\\Cloud\\SecretManager\\V1\xea\x02 Google::Cloud::SecretManager::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module SecretManager
      module V1
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Secret").msgclass
        SecretVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.SecretVersion").msgclass
        SecretVersion::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.SecretVersion.State").enummodule
        Replication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Replication").msgclass
        Replication::Automatic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Replication.Automatic").msgclass
        Replication::UserManaged = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Replication.UserManaged").msgclass
        Replication::UserManaged::Replica = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Replication.UserManaged.Replica").msgclass
        CustomerManagedEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.CustomerManagedEncryption").msgclass
        ReplicationStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ReplicationStatus").msgclass
        ReplicationStatus::AutomaticStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ReplicationStatus.AutomaticStatus").msgclass
        ReplicationStatus::UserManagedStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ReplicationStatus.UserManagedStatus").msgclass
        ReplicationStatus::UserManagedStatus::ReplicaStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ReplicationStatus.UserManagedStatus.ReplicaStatus").msgclass
        CustomerManagedEncryptionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.CustomerManagedEncryptionStatus").msgclass
        Topic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Topic").msgclass
        Rotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.Rotation").msgclass
        SecretPayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.SecretPayload").msgclass
      end
    end
  end
end
