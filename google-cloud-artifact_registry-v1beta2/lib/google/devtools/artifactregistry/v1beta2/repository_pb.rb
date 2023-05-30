# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/repository.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n9google/devtools/artifactregistry/v1beta2/repository.proto\x12(google.devtools.artifactregistry.v1beta2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb9\x07\n\nRepository\x12\x62\n\x0cmaven_config\x18\t \x01(\x0b\x32J.google.devtools.artifactregistry.v1beta2.Repository.MavenRepositoryConfigH\x00\x12\x0c\n\x04name\x18\x01 \x01(\t\x12K\n\x06\x66ormat\x18\x02 \x01(\x0e\x32;.google.devtools.artifactregistry.v1beta2.Repository.Format\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12P\n\x06labels\x18\x04 \x03(\x0b\x32@.google.devtools.artifactregistry.v1beta2.Repository.LabelsEntry\x12/\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x14\n\x0ckms_key_name\x18\x08 \x01(\t\x1a\xf8\x01\n\x15MavenRepositoryConfig\x12!\n\x19\x61llow_snapshot_overwrites\x18\x01 \x01(\x08\x12p\n\x0eversion_policy\x18\x02 \x01(\x0e\x32X.google.devtools.artifactregistry.v1beta2.Repository.MavenRepositoryConfig.VersionPolicy\"J\n\rVersionPolicy\x12\x1e\n\x1aVERSION_POLICY_UNSPECIFIED\x10\x00\x12\x0b\n\x07RELEASE\x10\x01\x12\x0c\n\x08SNAPSHOT\x10\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"^\n\x06\x46ormat\x12\x16\n\x12\x46ORMAT_UNSPECIFIED\x10\x00\x12\n\n\x06\x44OCKER\x10\x01\x12\t\n\x05MAVEN\x10\x02\x12\x07\n\x03NPM\x10\x03\x12\x07\n\x03\x41PT\x10\x05\x12\x07\n\x03YUM\x10\x06\x12\n\n\x06PYTHON\x10\x08:r\xea\x41o\n*artifactregistry.googleapis.com/Repository\x12\x41projects/{project}/locations/{location}/repositories/{repository}B\x0f\n\rformat_config\"\x84\x01\n\x17ListRepositoriesRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*artifactregistry.googleapis.com/Repository\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x7f\n\x18ListRepositoriesResponse\x12J\n\x0crepositories\x18\x01 \x03(\x0b\x32\x34.google.devtools.artifactregistry.v1beta2.Repository\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"X\n\x14GetRepositoryRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*artifactregistry.googleapis.com/Repository\"\xbe\x01\n\x17\x43reateRepositoryRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*artifactregistry.googleapis.com/Repository\x12\x15\n\rrepository_id\x18\x02 \x01(\t\x12H\n\nrepository\x18\x03 \x01(\x0b\x32\x34.google.devtools.artifactregistry.v1beta2.Repository\"\x94\x01\n\x17UpdateRepositoryRequest\x12H\n\nrepository\x18\x01 \x01(\x0b\x32\x34.google.devtools.artifactregistry.v1beta2.Repository\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"[\n\x17\x44\x65leteRepositoryRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*artifactregistry.googleapis.com/RepositoryB\x93\x02\n,com.google.devtools.artifactregistry.v1beta2B\x0fRepositoryProtoP\x01ZUcloud.google.com/go/artifactregistry/apiv1beta2/artifactregistrypb;artifactregistrypb\xaa\x02%Google.Cloud.ArtifactRegistry.V1Beta2\xca\x02%Google\\Cloud\\ArtifactRegistry\\V1beta2\xea\x02(Google::Cloud::ArtifactRegistry::V1beta2b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module ArtifactRegistry
      module V1beta2
        Repository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Repository").msgclass
        Repository::MavenRepositoryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Repository.MavenRepositoryConfig").msgclass
        Repository::MavenRepositoryConfig::VersionPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Repository.MavenRepositoryConfig.VersionPolicy").enummodule
        Repository::Format = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Repository.Format").enummodule
        ListRepositoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListRepositoriesRequest").msgclass
        ListRepositoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListRepositoriesResponse").msgclass
        GetRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.GetRepositoryRequest").msgclass
        CreateRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.CreateRepositoryRequest").msgclass
        UpdateRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.UpdateRepositoryRequest").msgclass
        DeleteRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.DeleteRepositoryRequest").msgclass
      end
    end
  end
end
