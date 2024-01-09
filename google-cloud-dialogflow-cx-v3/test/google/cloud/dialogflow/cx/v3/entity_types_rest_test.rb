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

require "helper"
require "gapic/rest"
require "google/cloud/dialogflow/cx/v3/entity_type_pb"
require "google/cloud/dialogflow/cx/v3/entity_types/rest"


class ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_get_entity_type
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::EntityType.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_entity_type_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ServiceStub.stub :transcode_get_entity_type_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_entity_type_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_entity_type({ name: name, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_entity_type name: name, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_entity_type ::Google::Cloud::Dialogflow::CX::V3::GetEntityTypeRequest.new(name: name, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_entity_type({ name: name, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_entity_type(::Google::Cloud::Dialogflow::CX::V3::GetEntityTypeRequest.new(name: name, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_entity_type_client_stub.call_count
      end
    end
  end

  def test_create_entity_type
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::EntityType.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity_type = {}
    language_code = "hello world"

    create_entity_type_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ServiceStub.stub :transcode_create_entity_type_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_entity_type_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_entity_type({ parent: parent, entity_type: entity_type, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_entity_type parent: parent, entity_type: entity_type, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_entity_type ::Google::Cloud::Dialogflow::CX::V3::CreateEntityTypeRequest.new(parent: parent, entity_type: entity_type, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_entity_type({ parent: parent, entity_type: entity_type, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_entity_type(::Google::Cloud::Dialogflow::CX::V3::CreateEntityTypeRequest.new(parent: parent, entity_type: entity_type, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_entity_type_client_stub.call_count
      end
    end
  end

  def test_update_entity_type
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::EntityType.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    entity_type = {}
    language_code = "hello world"
    update_mask = {}

    update_entity_type_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ServiceStub.stub :transcode_update_entity_type_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_entity_type_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_entity_type({ entity_type: entity_type, language_code: language_code, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_entity_type entity_type: entity_type, language_code: language_code, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_entity_type ::Google::Cloud::Dialogflow::CX::V3::UpdateEntityTypeRequest.new(entity_type: entity_type, language_code: language_code, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_entity_type({ entity_type: entity_type, language_code: language_code, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_entity_type(::Google::Cloud::Dialogflow::CX::V3::UpdateEntityTypeRequest.new(entity_type: entity_type, language_code: language_code, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_entity_type_client_stub.call_count
      end
    end
  end

  def test_delete_entity_type
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_entity_type_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ServiceStub.stub :transcode_delete_entity_type_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_entity_type_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_entity_type({ name: name, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_entity_type name: name, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_entity_type ::Google::Cloud::Dialogflow::CX::V3::DeleteEntityTypeRequest.new(name: name, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_entity_type({ name: name, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_entity_type(::Google::Cloud::Dialogflow::CX::V3::DeleteEntityTypeRequest.new(name: name, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_entity_type_client_stub.call_count
      end
    end
  end

  def test_list_entity_types
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::ListEntityTypesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    language_code = "hello world"
    page_size = 42
    page_token = "hello world"

    list_entity_types_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::ServiceStub.stub :transcode_list_entity_types_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_entity_types_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_entity_types({ parent: parent, language_code: language_code, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_entity_types parent: parent, language_code: language_code, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_entity_types ::Google::Cloud::Dialogflow::CX::V3::ListEntityTypesRequest.new(parent: parent, language_code: language_code, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_entity_types({ parent: parent, language_code: language_code, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_entity_types(::Google::Cloud::Dialogflow::CX::V3::ListEntityTypesRequest.new(parent: parent, language_code: language_code, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_entity_types_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Rest::Client::Configuration, config
  end
end
