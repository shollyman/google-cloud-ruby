# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/exfiltration.proto

require 'google/protobuf'


descriptor_data = "\n1google/cloud/securitycenter/v1/exfiltration.proto\x12\x1egoogle.cloud.securitycenter.v1\"\x8e\x01\n\x0c\x45xfiltration\x12>\n\x07sources\x18\x01 \x03(\x0b\x32-.google.cloud.securitycenter.v1.ExfilResource\x12>\n\x07targets\x18\x02 \x03(\x0b\x32-.google.cloud.securitycenter.v1.ExfilResource\"1\n\rExfilResource\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\ncomponents\x18\x02 \x03(\tB\xeb\x01\n\"com.google.cloud.securitycenter.v1B\x11\x45xfiltrationProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
    module SecurityCenter
      module V1
        Exfiltration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Exfiltration").msgclass
        ExfilResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.ExfilResource").msgclass
      end
    end
  end
end
