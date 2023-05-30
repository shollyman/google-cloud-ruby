# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/deploy.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n google/appengine/v1/deploy.proto\x12\x13google.appengine.v1\x1a\x1egoogle/protobuf/duration.proto\"\xbb\x02\n\nDeployment\x12\x39\n\x05\x66iles\x18\x01 \x03(\x0b\x32*.google.appengine.v1.Deployment.FilesEntry\x12\x35\n\tcontainer\x18\x02 \x01(\x0b\x32\".google.appengine.v1.ContainerInfo\x12)\n\x03zip\x18\x03 \x01(\x0b\x32\x1c.google.appengine.v1.ZipInfo\x12\x43\n\x13\x63loud_build_options\x18\x06 \x01(\x0b\x32&.google.appengine.v1.CloudBuildOptions\x1aK\n\nFilesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12,\n\x05value\x18\x02 \x01(\x0b\x32\x1d.google.appengine.v1.FileInfo:\x02\x38\x01\"C\n\x08\x46ileInfo\x12\x12\n\nsource_url\x18\x01 \x01(\t\x12\x10\n\x08sha1_sum\x18\x02 \x01(\t\x12\x11\n\tmime_type\x18\x03 \x01(\t\"\x1e\n\rContainerInfo\x12\r\n\x05image\x18\x01 \x01(\t\"b\n\x11\x43loudBuildOptions\x12\x15\n\rapp_yaml_path\x18\x01 \x01(\t\x12\x36\n\x13\x63loud_build_timeout\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"2\n\x07ZipInfo\x12\x12\n\nsource_url\x18\x03 \x01(\t\x12\x13\n\x0b\x66iles_count\x18\x04 \x01(\x05\x42\xbc\x01\n\x17\x63om.google.appengine.v1B\x0b\x44\x65ployProtoP\x01Z;cloud.google.com/go/appengine/apiv1/appenginepb;appenginepb\xaa\x02\x19Google.Cloud.AppEngine.V1\xca\x02\x19Google\\Cloud\\AppEngine\\V1\xea\x02\x1cGoogle::Cloud::AppEngine::V1b\x06proto3"

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
    module AppEngine
      module V1
        Deployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Deployment").msgclass
        FileInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.FileInfo").msgclass
        ContainerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ContainerInfo").msgclass
        CloudBuildOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.CloudBuildOptions").msgclass
        ZipInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ZipInfo").msgclass
      end
    end
  end
end
