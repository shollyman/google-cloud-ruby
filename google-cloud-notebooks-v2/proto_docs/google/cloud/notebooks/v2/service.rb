# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Notebooks
      module V2
        # Represents the metadata of the long-running operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation finished running.
        # @!attribute [rw] target
        #   @return [::String]
        #     Server-defined resource path for the target of the operation.
        # @!attribute [rw] verb
        #   @return [::String]
        #     Name of the verb executed by the operation.
        # @!attribute [rw] status_message
        #   @return [::String]
        #     Human-readable status of the operation, if any.
        # @!attribute [rw] requested_cancellation
        #   @return [::Boolean]
        #     Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version used to start the operation.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     API endpoint name of this operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for listing notebook instances.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A previous returned page token that can be used to continue
        #     listing from the last result.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Sort results. Supported values are "name", "name desc" or ""
        #     (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. List filter.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing notebook instances.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Notebooks::V2::Instance>]
        #     A list of returned instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached. For example,
        #     ['us-west1-a', 'us-central1-b'].
        #     A ListInstancesResponse will only contain either instances or unreachables,
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a notebook instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a notebook instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. User-defined unique ID of this instance.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Notebooks::V2::Instance]
        #     Required. The instance to be created.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. Idempotent request UUID.
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for updating a notebook instance.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Notebooks::V2::Instance]
        #     Required. A representation of an instance.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask used to update an instance
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. Idempotent request UUID.
        class UpdateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a notebook instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. Idempotent request UUID.
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for starting a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class StartInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for stopping a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class StopInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for resetting a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class ResetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for checking if a notebook instance is upgradeable.
        # @!attribute [rw] notebook_instance
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class CheckInstanceUpgradabilityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for checking if a notebook instance is upgradeable.
        # @!attribute [rw] upgradeable
        #   @return [::Boolean]
        #     If an instance is upgradeable.
        # @!attribute [rw] upgrade_version
        #   @return [::String]
        #     The version this instance will be upgraded to if calling the upgrade
        #     endpoint. This field will only be populated if field upgradeable is true.
        # @!attribute [rw] upgrade_info
        #   @return [::String]
        #     Additional information about upgrade.
        # @!attribute [rw] upgrade_image
        #   @return [::String]
        #     The new image self link this instance will be upgraded to if calling the
        #     upgrade endpoint. This field will only be populated if field upgradeable
        #     is true.
        class CheckInstanceUpgradabilityResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for upgrading a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class UpgradeInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for rollbacking a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] target_snapshot
        #   @return [::String]
        #     Required. The snapshot for rollback.
        #     Example: "projects/test-project/global/snapshots/krwlzipynril".
        # @!attribute [r] revision_id
        #   @return [::String]
        #     Required. Output only. Revision Id
        class RollbackInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a notebook instance diagnostic file.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] diagnostic_config
        #   @return [::Google::Cloud::Notebooks::V2::DiagnosticConfig]
        #     Required. Defines flags that are used to run the diagnostic tool
        # @!attribute [rw] timeout_minutes
        #   @return [::Integer]
        #     Optional. Maxmium amount of time in minutes before the operation times out.
        class DiagnoseInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
