# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/deployed_model_ref_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/env_var_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/aiplatform/v1/model.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/aiplatform/v1/deployed_model_ref.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a(google/cloud/aiplatform/v1/env_var.proto\x1a,google/cloud/aiplatform/v1/explanation.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9a\x10\n\x05Model\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1a\n\nversion_id\x18\x1c \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12\x17\n\x0fversion_aliases\x18\x1d \x03(\t\x12<\n\x13version_create_time\x18\x1f \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x13version_update_time\x18  \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x1b\n\x13version_description\x18\x1e \x01(\t\x12\x45\n\x10predict_schemata\x18\x04 \x01(\x0b\x32+.google.cloud.aiplatform.v1.PredictSchemata\x12 \n\x13metadata_schema_uri\x18\x05 \x01(\tB\x03\xe0\x41\x05\x12-\n\x08metadata\x18\x06 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x05\x12U\n\x18supported_export_formats\x18\x14 \x03(\x0b\x32..google.cloud.aiplatform.v1.Model.ExportFormatB\x03\xe0\x41\x03\x12M\n\x11training_pipeline\x18\x07 \x01(\tB2\xe0\x41\x03\xfa\x41,\n*aiplatform.googleapis.com/TrainingPipeline\x12K\n\x0e\x63ontainer_spec\x18\t \x01(\x0b\x32..google.cloud.aiplatform.v1.ModelContainerSpecB\x03\xe0\x41\x04\x12\x19\n\x0c\x61rtifact_uri\x18\x1a \x01(\tB\x03\xe0\x41\x05\x12l\n$supported_deployment_resources_types\x18\n \x03(\x0e\x32\x39.google.cloud.aiplatform.v1.Model.DeploymentResourcesTypeB\x03\xe0\x41\x03\x12,\n\x1fsupported_input_storage_formats\x18\x0b \x03(\tB\x03\xe0\x41\x03\x12-\n supported_output_storage_formats\x18\x0c \x03(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0e \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12J\n\x0f\x64\x65ployed_models\x18\x0f \x03(\x0b\x32,.google.cloud.aiplatform.v1.DeployedModelRefB\x03\xe0\x41\x03\x12\x45\n\x10\x65xplanation_spec\x18\x17 \x01(\x0b\x32+.google.cloud.aiplatform.v1.ExplanationSpec\x12\x0c\n\x04\x65tag\x18\x10 \x01(\t\x12=\n\x06labels\x18\x11 \x03(\x0b\x32-.google.cloud.aiplatform.v1.Model.LabelsEntry\x12\x43\n\x0f\x65ncryption_spec\x18\x18 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12K\n\x11model_source_info\x18& \x01(\x0b\x32+.google.cloud.aiplatform.v1.ModelSourceInfoB\x03\xe0\x41\x03\x12U\n\x13original_model_info\x18\" \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.Model.OriginalModelInfoB\x03\xe0\x41\x03\x12\x1e\n\x11metadata_artifact\x18, \x01(\tB\x03\xe0\x41\x03\x1a\xd5\x01\n\x0c\x45xportFormat\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x62\n\x13\x65xportable_contents\x18\x02 \x03(\x0e\x32@.google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContentB\x03\xe0\x41\x03\"P\n\x11\x45xportableContent\x12\"\n\x1e\x45XPORTABLE_CONTENT_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x41RTIFACT\x10\x01\x12\t\n\x05IMAGE\x10\x02\x1aK\n\x11OriginalModelInfo\x12\x36\n\x05model\x18\x01 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Model\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x8c\x01\n\x17\x44\x65ploymentResourcesType\x12)\n%DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED\x10\x00\x12\x17\n\x13\x44\x45\x44ICATED_RESOURCES\x10\x01\x12\x17\n\x13\x41UTOMATIC_RESOURCES\x10\x02\x12\x14\n\x10SHARED_RESOURCES\x10\x03:\\\xea\x41Y\n\x1f\x61iplatform.googleapis.com/Model\x12\x36projects/{project}/locations/{location}/models/{model}\"{\n\x0fPredictSchemata\x12 \n\x13instance_schema_uri\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\"\n\x15parameters_schema_uri\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\"\n\x15prediction_schema_uri\x18\x03 \x01(\tB\x03\xe0\x41\x05\"\xfb\x01\n\x12ModelContainerSpec\x12\x19\n\timage_uri\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x14\n\x07\x63ommand\x18\x02 \x03(\tB\x03\xe0\x41\x05\x12\x11\n\x04\x61rgs\x18\x03 \x03(\tB\x03\xe0\x41\x05\x12\x34\n\x03\x65nv\x18\x04 \x03(\x0b\x32\".google.cloud.aiplatform.v1.EnvVarB\x03\xe0\x41\x05\x12\x34\n\x05ports\x18\x05 \x03(\x0b\x32 .google.cloud.aiplatform.v1.PortB\x03\xe0\x41\x05\x12\x1a\n\rpredict_route\x18\x06 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0chealth_route\x18\x07 \x01(\tB\x03\xe0\x41\x05\"\x1e\n\x04Port\x12\x16\n\x0e\x63ontainer_port\x18\x03 \x01(\x05\"\xe6\x01\n\x0fModelSourceInfo\x12P\n\x0bsource_type\x18\x01 \x01(\x0e\x32;.google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType\x12\x0c\n\x04\x63opy\x18\x02 \x01(\x08\"s\n\x0fModelSourceType\x12!\n\x1dMODEL_SOURCE_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41UTOML\x10\x01\x12\n\n\x06\x43USTOM\x10\x02\x12\x08\n\x04\x42QML\x10\x03\x12\x10\n\x0cMODEL_GARDEN\x10\x04\x12\t\n\x05GENIE\x10\x05\x42\xc8\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\nModelProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.aiplatform.v1.DeployedModelRef", "google/cloud/aiplatform/v1/deployed_model_ref.proto"],
    ["google.cloud.aiplatform.v1.ExplanationSpec", "google/cloud/aiplatform/v1/explanation.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
    ["google.cloud.aiplatform.v1.EnvVar", "google/cloud/aiplatform/v1/env_var.proto"],
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
        Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model").msgclass
        Model::ExportFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat").msgclass
        Model::ExportFormat::ExportableContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContent").enummodule
        Model::OriginalModelInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.OriginalModelInfo").msgclass
        Model::DeploymentResourcesType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.DeploymentResourcesType").enummodule
        PredictSchemata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictSchemata").msgclass
        ModelContainerSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelContainerSpec").msgclass
        Port = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Port").msgclass
        ModelSourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo").msgclass
        ModelSourceInfo::ModelSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType").enummodule
      end
    end
  end
end
