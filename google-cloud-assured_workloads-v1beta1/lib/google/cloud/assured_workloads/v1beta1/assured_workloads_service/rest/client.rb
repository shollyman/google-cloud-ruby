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

require "google/cloud/errors"
require "google/cloud/assuredworkloads/v1beta1/assuredworkloads_service_pb"
require "google/cloud/assured_workloads/v1beta1/assured_workloads_service/rest/service_stub"

module Google
  module Cloud
    module AssuredWorkloads
      module V1beta1
        module AssuredWorkloadsService
          module Rest
            ##
            # REST client for the AssuredWorkloadsService service.
            #
            # Service to manage AssuredWorkloads.
            #
            class Client
              include Paths

              # @private
              attr_reader :assured_workloads_service_stub

              ##
              # Configure the AssuredWorkloadsService Client class.
              #
              # See {::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all AssuredWorkloadsService clients
              #   ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "AssuredWorkloads", "V1beta1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.create_workload.timeout = 60.0

                  default_config.rpcs.delete_workload.timeout = 60.0
                  default_config.rpcs.delete_workload.retry_policy = {
                    initial_delay: 0.2, max_delay: 30.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the AssuredWorkloadsService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new AssuredWorkloadsService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the AssuredWorkloadsService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @assured_workloads_service_stub = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Creates Assured Workload.
              #
              # @overload create_workload(request, options = nil)
              #   Pass arguments to `create_workload` via a request object, either of type
              #   {::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_workload(parent: nil, workload: nil, external_id: nil)
              #   Pass arguments to `create_workload` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The resource name of the new Workload's parent.
              #     Must be of the form `organizations/{org_id}/locations/{location_id}`.
              #   @param workload [::Google::Cloud::AssuredWorkloads::V1beta1::Workload, ::Hash]
              #     Required. Assured Workload to create
              #   @param external_id [::String]
              #     Optional. A identifier associated with the workload and underlying projects which
              #     allows for the break down of billing costs for a workload. The value
              #     provided for the identifier will add a label to the workload and contained
              #     projects with the identifier as the value.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_workload request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_workload.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AssuredWorkloads::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_workload.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_workload.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @assured_workloads_service_stub.create_workload request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Restrict the list of resources allowed in the Workload environment.
              # The current list of allowed products can be found at
              # https://cloud.google.com/assured-workloads/docs/supported-products
              # In addition to assuredworkloads.workload.update permission, the user should
              # also have orgpolicy.policy.set permission on the folder resource
              # to use this functionality.
              #
              # @overload restrict_allowed_resources(request, options = nil)
              #   Pass arguments to `restrict_allowed_resources` via a request object, either of type
              #   {::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload restrict_allowed_resources(name: nil, restriction_type: nil)
              #   Pass arguments to `restrict_allowed_resources` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The resource name of the Workload. This is the workloads's
              #     relative path in the API, formatted as
              #     "organizations/\\{organization_id}/locations/\\{location_id}/workloads/\\{workload_id}".
              #     For example,
              #     "organizations/123/locations/us-east1/workloads/assured-workload-1".
              #   @param restriction_type [::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest::RestrictionType]
              #     Required. The type of restriction for using gcp products in the Workload environment.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def restrict_allowed_resources request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.restrict_allowed_resources.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AssuredWorkloads::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.restrict_allowed_resources.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.restrict_allowed_resources.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @assured_workloads_service_stub.restrict_allowed_resources request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes the workload. Make sure that workload's direct children are already
              # in a deleted state, otherwise the request will fail with a
              # FAILED_PRECONDITION error.
              # In addition to assuredworkloads.workload.delete permission, the user should
              # also have orgpolicy.policy.set permission on the deleted folder to remove
              # Assured Workloads OrgPolicies.
              #
              # @overload delete_workload(request, options = nil)
              #   Pass arguments to `delete_workload` via a request object, either of type
              #   {::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_workload(name: nil, etag: nil)
              #   Pass arguments to `delete_workload` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The `name` field is used to identify the workload.
              #     Format:
              #     organizations/\\{org_id}/locations/\\{location_id}/workloads/\\{workload_id}
              #   @param etag [::String]
              #     Optional. The etag of the workload.
              #     If this is provided, it must match the server's etag.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_workload request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_workload.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AssuredWorkloads::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_workload.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_workload.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @assured_workloads_service_stub.delete_workload request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the AssuredWorkloadsService REST API.
              #
              # This class represents the configuration for AssuredWorkloadsService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # create_workload to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_workload.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_workload.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"assuredworkloads.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "assuredworkloads.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the AssuredWorkloadsService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `create_workload`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_workload
                  ##
                  # RPC-specific configuration for `restrict_allowed_resources`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :restrict_allowed_resources
                  ##
                  # RPC-specific configuration for `delete_workload`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_workload

                  # @private
                  def initialize parent_rpcs = nil
                    create_workload_config = parent_rpcs.create_workload if parent_rpcs.respond_to? :create_workload
                    @create_workload = ::Gapic::Config::Method.new create_workload_config
                    restrict_allowed_resources_config = parent_rpcs.restrict_allowed_resources if parent_rpcs.respond_to? :restrict_allowed_resources
                    @restrict_allowed_resources = ::Gapic::Config::Method.new restrict_allowed_resources_config
                    delete_workload_config = parent_rpcs.delete_workload if parent_rpcs.respond_to? :delete_workload
                    @delete_workload = ::Gapic::Config::Method.new delete_workload_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end