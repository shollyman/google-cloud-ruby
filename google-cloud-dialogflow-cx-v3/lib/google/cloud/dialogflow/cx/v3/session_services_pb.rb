# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/cx/v3/session.proto for package 'Google.Cloud.Dialogflow.CX.V3'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/cx/v3/session_pb'

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Sessions
            # A session represents an interaction with a user. You retrieve user input
            # and pass it to the
            # [DetectIntent][google.cloud.dialogflow.cx.v3.Sessions.DetectIntent] method to
            # determine user intent and respond.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.dialogflow.cx.v3.Sessions'

              # Processes a natural language query and returns structured, actionable data
              # as a result. This method is not idempotent, because it may cause session
              # entity types to be updated, which in turn might affect results of future
              # queries.
              #
              # Note: Always use agent versions for production traffic.
              # See [Versions and
              # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
              rpc :DetectIntent, ::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest, ::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse
              # Processes a natural language query in audio format in a streaming fashion
              # and returns structured, actionable data as a result. This method is only
              # available via the gRPC API (not REST).
              #
              # Note: Always use agent versions for production traffic.
              # See [Versions and
              # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
              rpc :StreamingDetectIntent, stream(::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest), stream(::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse)
              # Returns preliminary intent match results, doesn't change the session
              # status.
              rpc :MatchIntent, ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest, ::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse
              # Fulfills a matched intent returned by
              # [MatchIntent][google.cloud.dialogflow.cx.v3.Sessions.MatchIntent]. Must be
              # called after
              # [MatchIntent][google.cloud.dialogflow.cx.v3.Sessions.MatchIntent], with
              # input from
              # [MatchIntentResponse][google.cloud.dialogflow.cx.v3.MatchIntentResponse].
              # Otherwise, the behavior is undefined.
              rpc :FulfillIntent, ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest, ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse
              # Updates the feedback received from the user for a single turn of the bot
              # response.
              rpc :SubmitAnswerFeedback, ::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest, ::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
