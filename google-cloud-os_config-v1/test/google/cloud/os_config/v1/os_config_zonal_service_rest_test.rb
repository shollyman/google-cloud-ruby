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
require "google/cloud/osconfig/v1/osconfig_zonal_service_pb"
require "google/cloud/os_config/v1/os_config_zonal_service/rest"


class ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ClientTest < Minitest::Test
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

  def test_create_os_policy_assignment
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    os_policy_assignment = {}
    os_policy_assignment_id = "hello world"

    create_os_policy_assignment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_create_os_policy_assignment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_os_policy_assignment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_os_policy_assignment({ parent: parent, os_policy_assignment: os_policy_assignment, os_policy_assignment_id: os_policy_assignment_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_os_policy_assignment parent: parent, os_policy_assignment: os_policy_assignment, os_policy_assignment_id: os_policy_assignment_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_os_policy_assignment ::Google::Cloud::OsConfig::V1::CreateOSPolicyAssignmentRequest.new(parent: parent, os_policy_assignment: os_policy_assignment, os_policy_assignment_id: os_policy_assignment_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_os_policy_assignment({ parent: parent, os_policy_assignment: os_policy_assignment, os_policy_assignment_id: os_policy_assignment_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_os_policy_assignment(::Google::Cloud::OsConfig::V1::CreateOSPolicyAssignmentRequest.new(parent: parent, os_policy_assignment: os_policy_assignment, os_policy_assignment_id: os_policy_assignment_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_os_policy_assignment_client_stub.call_count
      end
    end
  end

  def test_update_os_policy_assignment
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    os_policy_assignment = {}
    update_mask = {}

    update_os_policy_assignment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_update_os_policy_assignment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_os_policy_assignment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_os_policy_assignment({ os_policy_assignment: os_policy_assignment, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_os_policy_assignment os_policy_assignment: os_policy_assignment, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_os_policy_assignment ::Google::Cloud::OsConfig::V1::UpdateOSPolicyAssignmentRequest.new(os_policy_assignment: os_policy_assignment, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_os_policy_assignment({ os_policy_assignment: os_policy_assignment, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_os_policy_assignment(::Google::Cloud::OsConfig::V1::UpdateOSPolicyAssignmentRequest.new(os_policy_assignment: os_policy_assignment, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_os_policy_assignment_client_stub.call_count
      end
    end
  end

  def test_get_os_policy_assignment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::OSPolicyAssignment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_os_policy_assignment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_get_os_policy_assignment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_os_policy_assignment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_os_policy_assignment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_os_policy_assignment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_os_policy_assignment ::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_os_policy_assignment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_os_policy_assignment(::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_os_policy_assignment_client_stub.call_count
      end
    end
  end

  def test_list_os_policy_assignments
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_os_policy_assignments_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_list_os_policy_assignments_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_os_policy_assignments_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_os_policy_assignments({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_os_policy_assignments parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_os_policy_assignments ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_os_policy_assignments({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_os_policy_assignments(::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_os_policy_assignments_client_stub.call_count
      end
    end
  end

  def test_list_os_policy_assignment_revisions
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentRevisionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    page_size = 42
    page_token = "hello world"

    list_os_policy_assignment_revisions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_list_os_policy_assignment_revisions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_os_policy_assignment_revisions_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_os_policy_assignment_revisions({ name: name, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_os_policy_assignment_revisions name: name, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_os_policy_assignment_revisions ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentRevisionsRequest.new(name: name, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_os_policy_assignment_revisions({ name: name, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_os_policy_assignment_revisions(::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentRevisionsRequest.new(name: name, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_os_policy_assignment_revisions_client_stub.call_count
      end
    end
  end

  def test_delete_os_policy_assignment
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_os_policy_assignment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_delete_os_policy_assignment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_os_policy_assignment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_os_policy_assignment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_os_policy_assignment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_os_policy_assignment ::Google::Cloud::OsConfig::V1::DeleteOSPolicyAssignmentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_os_policy_assignment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_os_policy_assignment(::Google::Cloud::OsConfig::V1::DeleteOSPolicyAssignmentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_os_policy_assignment_client_stub.call_count
      end
    end
  end

  def test_get_os_policy_assignment_report
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::OSPolicyAssignmentReport.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_os_policy_assignment_report_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_get_os_policy_assignment_report_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_os_policy_assignment_report_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_os_policy_assignment_report({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_os_policy_assignment_report name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_os_policy_assignment_report ::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentReportRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_os_policy_assignment_report({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_os_policy_assignment_report(::Google::Cloud::OsConfig::V1::GetOSPolicyAssignmentReportRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_os_policy_assignment_report_client_stub.call_count
      end
    end
  end

  def test_list_os_policy_assignment_reports
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentReportsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    filter = "hello world"
    page_token = "hello world"

    list_os_policy_assignment_reports_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_list_os_policy_assignment_reports_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_os_policy_assignment_reports_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_os_policy_assignment_reports({ parent: parent, page_size: page_size, filter: filter, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_os_policy_assignment_reports parent: parent, page_size: page_size, filter: filter, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_os_policy_assignment_reports ::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentReportsRequest.new(parent: parent, page_size: page_size, filter: filter, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_os_policy_assignment_reports({ parent: parent, page_size: page_size, filter: filter, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_os_policy_assignment_reports(::Google::Cloud::OsConfig::V1::ListOSPolicyAssignmentReportsRequest.new(parent: parent, page_size: page_size, filter: filter, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_os_policy_assignment_reports_client_stub.call_count
      end
    end
  end

  def test_get_inventory
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::Inventory.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :INVENTORY_VIEW_UNSPECIFIED

    get_inventory_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_get_inventory_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_inventory_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_inventory({ name: name, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_inventory name: name, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_inventory ::Google::Cloud::OsConfig::V1::GetInventoryRequest.new(name: name, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_inventory({ name: name, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_inventory(::Google::Cloud::OsConfig::V1::GetInventoryRequest.new(name: name, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_inventory_client_stub.call_count
      end
    end
  end

  def test_list_inventories
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListInventoriesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    view = :INVENTORY_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_inventories_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_list_inventories_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_inventories_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_inventories({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_inventories parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_inventories ::Google::Cloud::OsConfig::V1::ListInventoriesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_inventories({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_inventories(::Google::Cloud::OsConfig::V1::ListInventoriesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_inventories_client_stub.call_count
      end
    end
  end

  def test_get_vulnerability_report
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::VulnerabilityReport.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_vulnerability_report_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_get_vulnerability_report_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_vulnerability_report_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_vulnerability_report({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_vulnerability_report name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_vulnerability_report ::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_vulnerability_report({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_vulnerability_report(::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_vulnerability_report_client_stub.call_count
      end
    end
  end

  def test_list_vulnerability_reports
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_vulnerability_reports_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::ServiceStub.stub :transcode_list_vulnerability_reports_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_vulnerability_reports_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_vulnerability_reports({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_vulnerability_reports parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_vulnerability_reports ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_vulnerability_reports({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_vulnerability_reports(::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_vulnerability_reports_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Rest::Client::Configuration, config
  end
end