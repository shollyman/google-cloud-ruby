# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/app_yaml.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n\"google/appengine/v1/app_yaml.proto\x12\x13google.appengine.v1\x1a\x1egoogle/protobuf/duration.proto\"\xe0\x01\n\x10\x41piConfigHandler\x12=\n\x10\x61uth_fail_action\x18\x01 \x01(\x0e\x32#.google.appengine.v1.AuthFailAction\x12\x34\n\x05login\x18\x02 \x01(\x0e\x32%.google.appengine.v1.LoginRequirement\x12\x0e\n\x06script\x18\x03 \x01(\t\x12:\n\x0esecurity_level\x18\x04 \x01(\x0e\x32\".google.appengine.v1.SecurityLevel\x12\x0b\n\x03url\x18\x05 \x01(\t\"\x8f\x02\n\x0c\x45rrorHandler\x12?\n\nerror_code\x18\x01 \x01(\x0e\x32+.google.appengine.v1.ErrorHandler.ErrorCode\x12\x13\n\x0bstatic_file\x18\x02 \x01(\t\x12\x11\n\tmime_type\x18\x03 \x01(\t\"\x95\x01\n\tErrorCode\x12\x1a\n\x16\x45RROR_CODE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x45RROR_CODE_DEFAULT\x10\x00\x12\x19\n\x15\x45RROR_CODE_OVER_QUOTA\x10\x01\x12\x1d\n\x19\x45RROR_CODE_DOS_API_DENIAL\x10\x02\x12\x16\n\x12\x45RROR_CODE_TIMEOUT\x10\x03\x1a\x02\x10\x01\"\xcd\x05\n\x06UrlMap\x12\x11\n\turl_regex\x18\x01 \x01(\t\x12?\n\x0cstatic_files\x18\x02 \x01(\x0b\x32\'.google.appengine.v1.StaticFilesHandlerH\x00\x12\x34\n\x06script\x18\x03 \x01(\x0b\x32\".google.appengine.v1.ScriptHandlerH\x00\x12?\n\x0c\x61pi_endpoint\x18\x04 \x01(\x0b\x32\'.google.appengine.v1.ApiEndpointHandlerH\x00\x12:\n\x0esecurity_level\x18\x05 \x01(\x0e\x32\".google.appengine.v1.SecurityLevel\x12\x34\n\x05login\x18\x06 \x01(\x0e\x32%.google.appengine.v1.LoginRequirement\x12=\n\x10\x61uth_fail_action\x18\x07 \x01(\x0e\x32#.google.appengine.v1.AuthFailAction\x12Y\n\x1bredirect_http_response_code\x18\x08 \x01(\x0e\x32\x34.google.appengine.v1.UrlMap.RedirectHttpResponseCode\"\xdb\x01\n\x18RedirectHttpResponseCode\x12+\n\'REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED\x10\x00\x12#\n\x1fREDIRECT_HTTP_RESPONSE_CODE_301\x10\x01\x12#\n\x1fREDIRECT_HTTP_RESPONSE_CODE_302\x10\x02\x12#\n\x1fREDIRECT_HTTP_RESPONSE_CODE_303\x10\x03\x12#\n\x1fREDIRECT_HTTP_RESPONSE_CODE_307\x10\x04\x42\x0e\n\x0chandler_type\"\xc0\x02\n\x12StaticFilesHandler\x12\x0c\n\x04path\x18\x01 \x01(\t\x12\x19\n\x11upload_path_regex\x18\x02 \x01(\t\x12N\n\x0chttp_headers\x18\x03 \x03(\x0b\x32\x38.google.appengine.v1.StaticFilesHandler.HttpHeadersEntry\x12\x11\n\tmime_type\x18\x04 \x01(\t\x12-\n\nexpiration\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x1d\n\x15require_matching_file\x18\x06 \x01(\x08\x12\x1c\n\x14\x61pplication_readable\x18\x07 \x01(\x08\x1a\x32\n\x10HttpHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"$\n\rScriptHandler\x12\x13\n\x0bscript_path\x18\x01 \x01(\t\")\n\x12\x41piEndpointHandler\x12\x13\n\x0bscript_path\x18\x01 \x01(\t\"\xeb\x01\n\x0bHealthCheck\x12\x1c\n\x14\x64isable_health_check\x18\x01 \x01(\x08\x12\x0c\n\x04host\x18\x02 \x01(\t\x12\x19\n\x11healthy_threshold\x18\x03 \x01(\r\x12\x1b\n\x13unhealthy_threshold\x18\x04 \x01(\r\x12\x19\n\x11restart_threshold\x18\x05 \x01(\r\x12\x31\n\x0e\x63heck_interval\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12*\n\x07timeout\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xf7\x01\n\x0eReadinessCheck\x12\x0c\n\x04path\x18\x01 \x01(\t\x12\x0c\n\x04host\x18\x02 \x01(\t\x12\x19\n\x11\x66\x61ilure_threshold\x18\x03 \x01(\r\x12\x19\n\x11success_threshold\x18\x04 \x01(\r\x12\x31\n\x0e\x63heck_interval\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12*\n\x07timeout\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x34\n\x11\x61pp_start_timeout\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xf2\x01\n\rLivenessCheck\x12\x0c\n\x04path\x18\x01 \x01(\t\x12\x0c\n\x04host\x18\x02 \x01(\t\x12\x19\n\x11\x66\x61ilure_threshold\x18\x03 \x01(\r\x12\x19\n\x11success_threshold\x18\x04 \x01(\r\x12\x31\n\x0e\x63heck_interval\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12*\n\x07timeout\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x30\n\rinitial_delay\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\"(\n\x07Library\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\t*t\n\x0e\x41uthFailAction\x12 \n\x1c\x41UTH_FAIL_ACTION_UNSPECIFIED\x10\x00\x12\x1d\n\x19\x41UTH_FAIL_ACTION_REDIRECT\x10\x01\x12!\n\x1d\x41UTH_FAIL_ACTION_UNAUTHORIZED\x10\x02*b\n\x10LoginRequirement\x12\x15\n\x11LOGIN_UNSPECIFIED\x10\x00\x12\x12\n\x0eLOGIN_OPTIONAL\x10\x01\x12\x0f\n\x0bLOGIN_ADMIN\x10\x02\x12\x12\n\x0eLOGIN_REQUIRED\x10\x03*y\n\rSecurityLevel\x12\x16\n\x12SECURE_UNSPECIFIED\x10\x00\x12\x12\n\x0eSECURE_DEFAULT\x10\x00\x12\x10\n\x0cSECURE_NEVER\x10\x01\x12\x13\n\x0fSECURE_OPTIONAL\x10\x02\x12\x11\n\rSECURE_ALWAYS\x10\x03\x1a\x02\x10\x01\x42\xbd\x01\n\x17\x63om.google.appengine.v1B\x0c\x41ppYamlProtoP\x01Z;cloud.google.com/go/appengine/apiv1/appenginepb;appenginepb\xaa\x02\x19Google.Cloud.AppEngine.V1\xca\x02\x19Google\\Cloud\\AppEngine\\V1\xea\x02\x1cGoogle::Cloud::AppEngine::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module AppEngine
      module V1
        ApiConfigHandler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ApiConfigHandler").msgclass
        ErrorHandler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ErrorHandler").msgclass
        ErrorHandler::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ErrorHandler.ErrorCode").enummodule
        UrlMap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.UrlMap").msgclass
        UrlMap::RedirectHttpResponseCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.UrlMap.RedirectHttpResponseCode").enummodule
        StaticFilesHandler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.StaticFilesHandler").msgclass
        ScriptHandler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ScriptHandler").msgclass
        ApiEndpointHandler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ApiEndpointHandler").msgclass
        HealthCheck = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.HealthCheck").msgclass
        ReadinessCheck = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ReadinessCheck").msgclass
        LivenessCheck = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.LivenessCheck").msgclass
        Library = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Library").msgclass
        AuthFailAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.AuthFailAction").enummodule
        LoginRequirement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.LoginRequirement").enummodule
        SecurityLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.SecurityLevel").enummodule
      end
    end
  end
end
