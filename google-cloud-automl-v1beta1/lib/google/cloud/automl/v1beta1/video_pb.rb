# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/video.proto

require 'google/protobuf'

require 'google/cloud/automl/v1beta1/classification_pb'


descriptor_data = "\n\'google/cloud/automl/v1beta1/video.proto\x12\x1bgoogle.cloud.automl.v1beta1\x1a\x30google/cloud/automl/v1beta1/classification.proto\"$\n\"VideoClassificationDatasetMetadata\"$\n\"VideoObjectTrackingDatasetMetadata\"\"\n VideoClassificationModelMetadata\"\"\n VideoObjectTrackingModelMetadataB\xa7\x01\n\x1f\x63om.google.cloud.automl.v1beta1B\nVideoProtoP\x01Z7cloud.google.com/go/automl/apiv1beta1/automlpb;automlpb\xca\x02\x1bGoogle\\Cloud\\AutoMl\\V1beta1\xea\x02\x1eGoogle::Cloud::AutoML::V1beta1b\x06proto3"

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
    module AutoML
      module V1beta1
        VideoClassificationDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoClassificationDatasetMetadata").msgclass
        VideoObjectTrackingDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoObjectTrackingDatasetMetadata").msgclass
        VideoClassificationModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoClassificationModelMetadata").msgclass
        VideoObjectTrackingModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.VideoObjectTrackingModelMetadata").msgclass
      end
    end
  end
end
