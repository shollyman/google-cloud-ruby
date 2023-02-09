# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index_endpoint.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/machine_resources_pb'
require 'google/cloud/aiplatform/v1/service_networking_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/index_endpoint.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.IndexEndpoint" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :deployed_indexes, :message, 4, "google.cloud.aiplatform.v1.DeployedIndex"
      optional :etag, :string, 5
      map :labels, :string, :string, 6
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :network, :string, 9
      optional :enable_private_service_connect, :bool, 10
      optional :private_service_connect_config, :message, 12, "google.cloud.aiplatform.v1.PrivateServiceConnectConfig"
    end
    add_message "google.cloud.aiplatform.v1.DeployedIndex" do
      optional :id, :string, 1
      optional :index, :string, 2
      optional :display_name, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :private_endpoints, :message, 5, "google.cloud.aiplatform.v1.IndexPrivateEndpoints"
      optional :index_sync_time, :message, 6, "google.protobuf.Timestamp"
      optional :automatic_resources, :message, 7, "google.cloud.aiplatform.v1.AutomaticResources"
      optional :dedicated_resources, :message, 16, "google.cloud.aiplatform.v1.DedicatedResources"
      optional :enable_access_logging, :bool, 8
      optional :deployed_index_auth_config, :message, 9, "google.cloud.aiplatform.v1.DeployedIndexAuthConfig"
      repeated :reserved_ip_ranges, :string, 10
      optional :deployment_group, :string, 11
    end
    add_message "google.cloud.aiplatform.v1.DeployedIndexAuthConfig" do
      optional :auth_provider, :message, 1, "google.cloud.aiplatform.v1.DeployedIndexAuthConfig.AuthProvider"
    end
    add_message "google.cloud.aiplatform.v1.DeployedIndexAuthConfig.AuthProvider" do
      repeated :audiences, :string, 1
      repeated :allowed_issuers, :string, 2
    end
    add_message "google.cloud.aiplatform.v1.IndexPrivateEndpoints" do
      optional :match_grpc_address, :string, 1
      optional :service_attachment, :string, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        IndexEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexEndpoint").msgclass
        DeployedIndex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployedIndex").msgclass
        DeployedIndexAuthConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployedIndexAuthConfig").msgclass
        DeployedIndexAuthConfig::AuthProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployedIndexAuthConfig.AuthProvider").msgclass
        IndexPrivateEndpoints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IndexPrivateEndpoints").msgclass
      end
    end
  end
end
