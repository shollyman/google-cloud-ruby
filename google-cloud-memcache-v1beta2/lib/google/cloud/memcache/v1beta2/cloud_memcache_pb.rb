# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/memcache/v1beta2/cloud_memcache.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/memcache/v1beta2/cloud_memcache.proto", :syntax => :proto3) do
    add_message "google.cloud.memcache.v1beta2.Instance" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      map :labels, :string, :string, 3
      optional :authorized_network, :string, 4
      repeated :zones, :string, 5
      optional :node_count, :int32, 6
      optional :node_config, :message, 7, "google.cloud.memcache.v1beta2.Instance.NodeConfig"
      optional :memcache_version, :enum, 9, "google.cloud.memcache.v1beta2.MemcacheVersion"
      optional :parameters, :message, 11, "google.cloud.memcache.v1beta2.MemcacheParameters"
      repeated :memcache_nodes, :message, 12, "google.cloud.memcache.v1beta2.Instance.Node"
      optional :create_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      optional :state, :enum, 15, "google.cloud.memcache.v1beta2.Instance.State"
      optional :memcache_full_version, :string, 18
      repeated :instance_messages, :message, 19, "google.cloud.memcache.v1beta2.Instance.InstanceMessage"
      optional :discovery_endpoint, :string, 20
      optional :update_available, :bool, 21
    end
    add_message "google.cloud.memcache.v1beta2.Instance.NodeConfig" do
      optional :cpu_count, :int32, 1
      optional :memory_size_mb, :int32, 2
    end
    add_message "google.cloud.memcache.v1beta2.Instance.Node" do
      optional :node_id, :string, 1
      optional :zone, :string, 2
      optional :state, :enum, 3, "google.cloud.memcache.v1beta2.Instance.Node.State"
      optional :host, :string, 4
      optional :port, :int32, 5
      optional :parameters, :message, 6, "google.cloud.memcache.v1beta2.MemcacheParameters"
      optional :update_available, :bool, 7
    end
    add_enum "google.cloud.memcache.v1beta2.Instance.Node.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :READY, 2
      value :DELETING, 3
      value :UPDATING, 4
    end
    add_message "google.cloud.memcache.v1beta2.Instance.InstanceMessage" do
      optional :code, :enum, 1, "google.cloud.memcache.v1beta2.Instance.InstanceMessage.Code"
      optional :message, :string, 2
    end
    add_enum "google.cloud.memcache.v1beta2.Instance.InstanceMessage.Code" do
      value :CODE_UNSPECIFIED, 0
      value :ZONE_DISTRIBUTION_UNBALANCED, 1
    end
    add_enum "google.cloud.memcache.v1beta2.Instance.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :READY, 2
      value :DELETING, 4
      value :PERFORMING_MAINTENANCE, 5
    end
    add_message "google.cloud.memcache.v1beta2.ListInstancesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.memcache.v1beta2.ListInstancesResponse" do
      repeated :resources, :message, 1, "google.cloud.memcache.v1beta2.Instance"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.memcache.v1beta2.GetInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.memcache.v1beta2.CreateInstanceRequest" do
      optional :parent, :string, 1
      optional :instance_id, :string, 2
      optional :resource, :message, 3, "google.cloud.memcache.v1beta2.Instance"
    end
    add_message "google.cloud.memcache.v1beta2.UpdateInstanceRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :resource, :message, 2, "google.cloud.memcache.v1beta2.Instance"
    end
    add_message "google.cloud.memcache.v1beta2.DeleteInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.memcache.v1beta2.ApplyParametersRequest" do
      optional :name, :string, 1
      repeated :node_ids, :string, 2
      optional :apply_all, :bool, 3
    end
    add_message "google.cloud.memcache.v1beta2.UpdateParametersRequest" do
      optional :name, :string, 1
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :parameters, :message, 3, "google.cloud.memcache.v1beta2.MemcacheParameters"
    end
    add_message "google.cloud.memcache.v1beta2.ApplySoftwareUpdateRequest" do
      optional :instance, :string, 1
      repeated :node_ids, :string, 2
      optional :apply_all, :bool, 3
    end
    add_message "google.cloud.memcache.v1beta2.MemcacheParameters" do
      optional :id, :string, 1
      map :params, :string, :string, 3
    end
    add_message "google.cloud.memcache.v1beta2.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_detail, :string, 5
      optional :cancel_requested, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.memcache.v1beta2.LocationMetadata" do
      map :available_zones, :string, :message, 1, "google.cloud.memcache.v1beta2.ZoneMetadata"
    end
    add_message "google.cloud.memcache.v1beta2.ZoneMetadata" do
    end
    add_enum "google.cloud.memcache.v1beta2.MemcacheVersion" do
      value :MEMCACHE_VERSION_UNSPECIFIED, 0
      value :MEMCACHE_1_5, 1
    end
  end
end

module Google
  module Cloud
    module Memcache
      module V1beta2
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance").msgclass
        Instance::NodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.NodeConfig").msgclass
        Instance::Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.Node").msgclass
        Instance::Node::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.Node.State").enummodule
        Instance::InstanceMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.InstanceMessage").msgclass
        Instance::InstanceMessage::Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.InstanceMessage.Code").enummodule
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.Instance.State").enummodule
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.DeleteInstanceRequest").msgclass
        ApplyParametersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.ApplyParametersRequest").msgclass
        UpdateParametersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.UpdateParametersRequest").msgclass
        ApplySoftwareUpdateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.ApplySoftwareUpdateRequest").msgclass
        MemcacheParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.MemcacheParameters").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.OperationMetadata").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.LocationMetadata").msgclass
        ZoneMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.ZoneMetadata").msgclass
        MemcacheVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1beta2.MemcacheVersion").enummodule
      end
    end
  end
end
