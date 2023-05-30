# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1/artifact.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n2google/devtools/artifactregistry/v1/artifact.proto\x12#google.devtools.artifactregistry.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x98\x03\n\x0b\x44ockerImage\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x0c\n\x04tags\x18\x03 \x03(\t\x12\x18\n\x10image_size_bytes\x18\x04 \x01(\x03\x12/\n\x0bupload_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x12\n\nmedia_type\x18\x06 \x01(\t\x12.\n\nbuild_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x90\x01\xea\x41\x8c\x01\n+artifactregistry.googleapis.com/DockerImage\x12]projects/{project}/locations/{location}/repositories/{repository}/dockerImages/{docker_image}\"g\n\x17ListDockerImagesRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\"|\n\x18ListDockerImagesResponse\x12G\n\rdocker_images\x18\x01 \x03(\x0b\x32\x30.google.devtools.artifactregistry.v1.DockerImage\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Z\n\x15GetDockerImageRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+artifactregistry.googleapis.com/DockerImage\"\xf5\x02\n\rMavenArtifact\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07pom_uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08group_id\x18\x03 \x01(\t\x12\x13\n\x0b\x61rtifact_id\x18\x04 \x01(\t\x12\x0f\n\x07version\x18\x05 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x96\x01\xea\x41\x92\x01\n-artifactregistry.googleapis.com/MavenArtifact\x12\x61projects/{project}/locations/{location}/repositories/{repository}/mavenArtifacts/{maven_artifact}\"\x89\x01\n\x19ListMavenArtifactsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-artifactregistry.googleapis.com/MavenArtifact\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x82\x01\n\x1aListMavenArtifactsResponse\x12K\n\x0fmaven_artifacts\x18\x01 \x03(\x0b\x32\x32.google.devtools.artifactregistry.v1.MavenArtifact\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"^\n\x17GetMavenArtifactRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-artifactregistry.googleapis.com/MavenArtifact\"\xd0\x02\n\nNpmPackage\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0cpackage_name\x18\x03 \x01(\t\x12\x0f\n\x07version\x18\x04 \x01(\t\x12\x0c\n\x04tags\x18\x05 \x03(\t\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x8d\x01\xea\x41\x89\x01\n*artifactregistry.googleapis.com/NpmPackage\x12[projects/{project}/locations/{location}/repositories/{repository}/npmPackages/{npm_package}\"\x83\x01\n\x16ListNpmPackagesRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*artifactregistry.googleapis.com/NpmPackage\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"y\n\x17ListNpmPackagesResponse\x12\x45\n\x0cnpm_packages\x18\x01 \x03(\x0b\x32/.google.devtools.artifactregistry.v1.NpmPackage\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"X\n\x14GetNpmPackageRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*artifactregistry.googleapis.com/NpmPackage\"\xe0\x02\n\rPythonPackage\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0cpackage_name\x18\x03 \x01(\t\x12\x0f\n\x07version\x18\x04 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x96\x01\xea\x41\x92\x01\n-artifactregistry.googleapis.com/PythonPackage\x12\x61projects/{project}/locations/{location}/repositories/{repository}/pythonPackages/{python_package}\"\x89\x01\n\x19ListPythonPackagesRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-artifactregistry.googleapis.com/PythonPackage\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x82\x01\n\x1aListPythonPackagesResponse\x12K\n\x0fpython_packages\x18\x01 \x03(\x0b\x32\x32.google.devtools.artifactregistry.v1.PythonPackage\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"^\n\x17GetPythonPackageRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-artifactregistry.googleapis.com/PythonPackageB\xf8\x01\n\'com.google.devtools.artifactregistry.v1B\rArtifactProtoP\x01ZPcloud.google.com/go/artifactregistry/apiv1/artifactregistrypb;artifactregistrypb\xaa\x02 Google.Cloud.ArtifactRegistry.V1\xca\x02 Google\\Cloud\\ArtifactRegistry\\V1\xea\x02#Google::Cloud::ArtifactRegistry::V1b\x06proto3"

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
      module V1
        DockerImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.DockerImage").msgclass
        ListDockerImagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListDockerImagesRequest").msgclass
        ListDockerImagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListDockerImagesResponse").msgclass
        GetDockerImageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetDockerImageRequest").msgclass
        MavenArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.MavenArtifact").msgclass
        ListMavenArtifactsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListMavenArtifactsRequest").msgclass
        ListMavenArtifactsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListMavenArtifactsResponse").msgclass
        GetMavenArtifactRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetMavenArtifactRequest").msgclass
        NpmPackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.NpmPackage").msgclass
        ListNpmPackagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListNpmPackagesRequest").msgclass
        ListNpmPackagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListNpmPackagesResponse").msgclass
        GetNpmPackageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetNpmPackageRequest").msgclass
        PythonPackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.PythonPackage").msgclass
        ListPythonPackagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListPythonPackagesRequest").msgclass
        ListPythonPackagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ListPythonPackagesResponse").msgclass
        GetPythonPackageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetPythonPackageRequest").msgclass
      end
    end
  end
end
