# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/prediction_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n3google/cloud/aiplatform/v1/prediction_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/httpbody.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/aiplatform/v1/explanation.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xaa\x01\n\x0ePredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12.\n\tinstances\x18\x02 \x03(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x02\x12*\n\nparameters\x18\x03 \x01(\x0b\x32\x16.google.protobuf.Value\"\xd1\x01\n\x0fPredictResponse\x12+\n\x0bpredictions\x18\x01 \x03(\x0b\x32\x16.google.protobuf.Value\x12\x19\n\x11\x64\x65ployed_model_id\x18\x02 \x01(\t\x12\x36\n\x05model\x18\x03 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Model\x12\x1d\n\x10model_version_id\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\x12model_display_name\x18\x04 \x01(\tB\x03\xe0\x41\x03\"z\n\x11RawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\'\n\thttp_body\x18\x02 \x01(\x0b\x32\x14.google.api.HttpBody\"\x9d\x02\n\x0e\x45xplainRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12.\n\tinstances\x18\x02 \x03(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x02\x12*\n\nparameters\x18\x04 \x01(\x0b\x32\x16.google.protobuf.Value\x12V\n\x19\x65xplanation_spec_override\x18\x05 \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.ExplanationSpecOverride\x12\x19\n\x11\x64\x65ployed_model_id\x18\x03 \x01(\t\"\x98\x01\n\x0f\x45xplainResponse\x12=\n\x0c\x65xplanations\x18\x01 \x03(\x0b\x32\'.google.cloud.aiplatform.v1.Explanation\x12\x19\n\x11\x64\x65ployed_model_id\x18\x02 \x01(\t\x12+\n\x0bpredictions\x18\x03 \x03(\x0b\x32\x16.google.protobuf.Value2\xd7\x06\n\x11PredictionService\x12\x94\x02\n\x07Predict\x12*.google.cloud.aiplatform.v1.PredictRequest\x1a+.google.cloud.aiplatform.v1.PredictResponse\"\xaf\x01\x82\xd3\xe4\x93\x02\x88\x01\"9/v1/{endpoint=projects/*/locations/*/endpoints/*}:predict:\x01*ZH\"C/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:predict:\x01*\xda\x41\x1d\x65ndpoint,instances,parameters\x12\xfe\x01\n\nRawPredict\x12-.google.cloud.aiplatform.v1.RawPredictRequest\x1a\x14.google.api.HttpBody\"\xaa\x01\x82\xd3\xe4\x93\x02\x8e\x01\"</v1/{endpoint=projects/*/locations/*/endpoints/*}:rawPredict:\x01*ZK\"F/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:rawPredict:\x01*\xda\x41\x12\x65ndpoint,http_body\x12\xda\x01\n\x07\x45xplain\x12*.google.cloud.aiplatform.v1.ExplainRequest\x1a+.google.cloud.aiplatform.v1.ExplainResponse\"v\x82\xd3\xe4\x93\x02>\"9/v1/{endpoint=projects/*/locations/*/endpoints/*}:explain:\x01*\xda\x41/endpoint,instances,parameters,deployed_model_id\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd4\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x16PredictionServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.api.HttpBody", "google/api/httpbody.proto"],
    ["google.cloud.aiplatform.v1.ExplanationSpecOverride", "google/cloud/aiplatform/v1/explanation.proto"],
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
    module AIPlatform
      module V1
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictResponse").msgclass
        RawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RawPredictRequest").msgclass
        ExplainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainRequest").msgclass
        ExplainResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainResponse").msgclass
      end
    end
  end
end
