# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/prediction_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/automl/v1beta1/annotation_payload_pb'
require 'google/cloud/automl/v1beta1/data_items_pb'
require 'google/cloud/automl/v1beta1/io_pb'
require 'google/cloud/automl/v1beta1/operations_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n4google/cloud/automl/v1beta1/prediction_service.proto\x12\x1bgoogle.cloud.automl.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/automl/v1beta1/annotation_payload.proto\x1a,google/cloud/automl/v1beta1/data_items.proto\x1a$google/cloud/automl/v1beta1/io.proto\x1a,google/cloud/automl/v1beta1/operations.proto\x1a#google/longrunning/operations.proto\"\xfe\x01\n\x0ePredictRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\x12\x41\n\x07payload\x18\x02 \x01(\x0b\x32+.google.cloud.automl.v1beta1.ExamplePayloadB\x03\xe0\x41\x02\x12G\n\x06params\x18\x03 \x03(\x0b\x32\x37.google.cloud.automl.v1beta1.PredictRequest.ParamsEntry\x1a-\n\x0bParamsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9a\x02\n\x0fPredictResponse\x12?\n\x07payload\x18\x01 \x03(\x0b\x32..google.cloud.automl.v1beta1.AnnotationPayload\x12G\n\x12preprocessed_input\x18\x03 \x01(\x0b\x32+.google.cloud.automl.v1beta1.ExamplePayload\x12L\n\x08metadata\x18\x02 \x03(\x0b\x32:.google.cloud.automl.v1beta1.PredictResponse.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xee\x02\n\x13\x42\x61tchPredictRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\x12O\n\x0cinput_config\x18\x03 \x01(\x0b\x32\x34.google.cloud.automl.v1beta1.BatchPredictInputConfigB\x03\xe0\x41\x02\x12Q\n\routput_config\x18\x04 \x01(\x0b\x32\x35.google.cloud.automl.v1beta1.BatchPredictOutputConfigB\x03\xe0\x41\x02\x12Q\n\x06params\x18\x05 \x03(\x0b\x32<.google.cloud.automl.v1beta1.BatchPredictRequest.ParamsEntryB\x03\xe0\x41\x02\x1a-\n\x0bParamsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x96\x01\n\x12\x42\x61tchPredictResult\x12O\n\x08metadata\x18\x01 \x03(\x0b\x32=.google.cloud.automl.v1beta1.BatchPredictResult.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x32\x9e\x04\n\x11PredictionService\x12\xbe\x01\n\x07Predict\x12+.google.cloud.automl.v1beta1.PredictRequest\x1a,.google.cloud.automl.v1beta1.PredictResponse\"X\x82\xd3\xe4\x93\x02<\"7/v1beta1/{name=projects/*/locations/*/models/*}:predict:\x01*\xda\x41\x13name,payload,params\x12\xfc\x01\n\x0c\x42\x61tchPredict\x12\x30.google.cloud.automl.v1beta1.BatchPredictRequest\x1a\x1d.google.longrunning.Operation\"\x9a\x01\x82\xd3\xe4\x93\x02\x41\"</v1beta1/{name=projects/*/locations/*/models/*}:batchPredict:\x01*\xda\x41&name,input_config,output_config,params\xca\x41\'\n\x12\x42\x61tchPredictResult\x12\x11OperationMetadata\x1aI\xca\x41\x15\x61utoml.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xb3\x01\n\x1f\x63om.google.cloud.automl.v1beta1B\x16PredictionServiceProtoP\x01Z7cloud.google.com/go/automl/apiv1beta1/automlpb;automlpb\xca\x02\x1bGoogle\\Cloud\\AutoMl\\V1beta1\xea\x02\x1eGoogle::Cloud::AutoML::V1beta1b\x06proto3"

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
    ["google.cloud.automl.v1beta1.ExamplePayload", "google/cloud/automl/v1beta1/data_items.proto"],
    ["google.cloud.automl.v1beta1.AnnotationPayload", "google/cloud/automl/v1beta1/annotation_payload.proto"],
    ["google.cloud.automl.v1beta1.BatchPredictInputConfig", "google/cloud/automl/v1beta1/io.proto"],
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
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.PredictResponse").msgclass
        BatchPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BatchPredictRequest").msgclass
        BatchPredictResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BatchPredictResult").msgclass
      end
    end
  end
end
