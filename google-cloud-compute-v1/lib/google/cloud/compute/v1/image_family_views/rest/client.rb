# frozen_string_literal: true

# Copyright 2021 Google LLC
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
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/image_family_views/rest/service_stub"

module Google
  module Cloud
    module Compute
      module V1
        module ImageFamilyViews
          module Rest
            ##
            # REST client for the ImageFamilyViews service.
            #
            # The ImageFamilyViews API.
            #
            class Client
              # @private
              attr_reader :image_family_views_stub

              ##
              # Configure the ImageFamilyViews Client class.
              #
              # See {::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all ImageFamilyViews clients
              #   ::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "Compute", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.get.timeout = 600.0
                  default_config.rpcs.get.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the ImageFamilyViews Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client::Configuration}
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
              # Create a new ImageFamilyViews REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the ImageFamilyViews client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                credentials ||= Credentials.default scope: @config.scope
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @image_family_views_stub = ::Google::Cloud::Compute::V1::ImageFamilyViews::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              # Service calls

              ##
              # Returns the latest image that is part of an image family, is not deprecated and is rolled out in the specified zone.
              #
              # @overload get(request, options = nil)
              #   Pass arguments to `get` via a request object, either of type
              #   {::Google::Cloud::Compute::V1::GetImageFamilyViewRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Compute::V1::GetImageFamilyViewRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #     Note: currently retry functionality is not implemented. While it is possible
              #     to set it using ::Gapic::CallOptions, it will not be applied
              #
              # @overload get(family: nil, project: nil, zone: nil)
              #   Pass arguments to `get` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param family [::String]
              #     Name of the image family to search for.
              #   @param project [::String]
              #     Project ID for this request.
              #   @param zone [::String]
              #     The name of the zone for this request.
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::ImageFamilyView]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::ImageFamilyView]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Compute::V1::GetImageFamilyViewRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get.metadata.to_h

                # Set x-goog-api-client header
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Compute::V1::VERSION,
                  transports_version_send: [:rest]

                options.apply_defaults timeout:      @config.rpcs.get.timeout,
                                       metadata:     call_metadata

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata

                @image_family_views_stub.get request, options do |result, response|
                  yield result, response if block_given?
                  return result
                end
              rescue ::Faraday::Error => e
                begin
                  raise ::Gapic::Rest::Error.wrap_faraday_error e
                rescue ::Gapic::Rest::Error => gapic_error
                  raise ::Google::Cloud::Error.from_error gapic_error
                end
              end

              ##
              # Configuration class for the ImageFamilyViews REST API.
              #
              # This class represents the configuration for ImageFamilyViews REST,
              # providing control over credentials, timeouts, retry behavior, logging.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # # Examples
              #
              # To modify the global config, setting the timeout for all calls to 10 seconds:
              #
              #     ::Google::Cloud::Compute::V1::ImageFamilyViews::Client.configure do |config|
              #       config.timeout = 10.0
              #     end
              #
              # To apply the above configuration only to a new client:
              #
              #     client = ::Google::Cloud::Compute::V1::ImageFamilyViews::Client.new do |config|
              #       config.timeout = 10.0
              #     end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"compute.googleapis.com"`.
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
              #   Additional REST headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "compute.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil

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
                # Configuration RPC class for the ImageFamilyViews API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #
                # there is one other field (`retry_policy`) that can be set
                # but is currently not supported for REST Gapic libraries.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `get`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get

                  # @private
                  def initialize parent_rpcs = nil
                    get_config = parent_rpcs.get if parent_rpcs.respond_to? :get
                    @get = ::Gapic::Config::Method.new get_config

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
