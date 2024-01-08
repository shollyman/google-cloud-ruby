# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1beta1/policytagmanager.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/datacatalog/v1beta1/common_pb'
require 'google/cloud/datacatalog/v1beta1/timestamps_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n7google/cloud/datacatalog/v1beta1/policytagmanager.proto\x12 google.cloud.datacatalog.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/datacatalog/v1beta1/common.proto\x1a\x31google/cloud/datacatalog/v1beta1/timestamps.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xff\x04\n\x08Taxonomy\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1d\n\x10policy_tag_count\x18\x04 \x01(\x05\x42\x03\xe0\x41\x03\x12T\n\x13taxonomy_timestamps\x18\x05 \x01(\x0b\x32\x32.google.cloud.datacatalog.v1beta1.SystemTimestampsB\x03\xe0\x41\x03\x12Z\n\x16\x61\x63tivated_policy_types\x18\x06 \x03(\x0e\x32\x35.google.cloud.datacatalog.v1beta1.Taxonomy.PolicyTypeB\x03\xe0\x41\x01\x12H\n\x07service\x18\x07 \x01(\x0b\x32\x32.google.cloud.datacatalog.v1beta1.Taxonomy.ServiceB\x03\xe0\x41\x03\x1a[\n\x07Service\x12>\n\x04name\x18\x01 \x01(\x0e\x32\x30.google.cloud.datacatalog.v1beta1.ManagingSystem\x12\x10\n\x08identity\x18\x02 \x01(\t\"J\n\nPolicyType\x12\x1b\n\x17POLICY_TYPE_UNSPECIFIED\x10\x00\x12\x1f\n\x1b\x46INE_GRAINED_ACCESS_CONTROL\x10\x01:g\xea\x41\x64\n#datacatalog.googleapis.com/Taxonomy\x12=projects/{project}/locations/{location}/taxonomies/{taxonomy}\"\x8c\x02\n\tPolicyTag\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x19\n\x11parent_policy_tag\x18\x04 \x01(\t\x12\x1e\n\x11\x63hild_policy_tags\x18\x05 \x03(\tB\x03\xe0\x41\x03:\x80\x01\xea\x41}\n$datacatalog.googleapis.com/PolicyTag\x12Uprojects/{project}/locations/{location}/taxonomies/{taxonomy}/policyTags/{policy_tag}\"\x92\x01\n\x15\x43reateTaxonomyRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#datacatalog.googleapis.com/Taxonomy\x12<\n\x08taxonomy\x18\x02 \x01(\x0b\x32*.google.cloud.datacatalog.v1beta1.Taxonomy\"R\n\x15\x44\x65leteTaxonomyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#datacatalog.googleapis.com/Taxonomy\"\x86\x01\n\x15UpdateTaxonomyRequest\x12<\n\x08taxonomy\x18\x01 \x01(\x0b\x32*.google.cloud.datacatalog.v1beta1.Taxonomy\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\x8b\x01\n\x15ListTaxonomiesRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#datacatalog.googleapis.com/Taxonomy\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"q\n\x16ListTaxonomiesResponse\x12>\n\ntaxonomies\x18\x01 \x03(\x0b\x32*.google.cloud.datacatalog.v1beta1.Taxonomy\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"O\n\x12GetTaxonomyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#datacatalog.googleapis.com/Taxonomy\"\x97\x01\n\x16\x43reatePolicyTagRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$datacatalog.googleapis.com/PolicyTag\x12?\n\npolicy_tag\x18\x02 \x01(\x0b\x32+.google.cloud.datacatalog.v1beta1.PolicyTag\"T\n\x16\x44\x65letePolicyTagRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$datacatalog.googleapis.com/PolicyTag\"\x8a\x01\n\x16UpdatePolicyTagRequest\x12?\n\npolicy_tag\x18\x01 \x01(\x0b\x32+.google.cloud.datacatalog.v1beta1.PolicyTag\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"|\n\x15ListPolicyTagsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$datacatalog.googleapis.com/PolicyTag\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"s\n\x16ListPolicyTagsResponse\x12@\n\x0bpolicy_tags\x18\x01 \x03(\x0b\x32+.google.cloud.datacatalog.v1beta1.PolicyTag\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Q\n\x13GetPolicyTagRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$datacatalog.googleapis.com/PolicyTag2\xe5\x16\n\x10PolicyTagManager\x12\xce\x01\n\x0e\x43reateTaxonomy\x12\x37.google.cloud.datacatalog.v1beta1.CreateTaxonomyRequest\x1a*.google.cloud.datacatalog.v1beta1.Taxonomy\"W\x82\xd3\xe4\x93\x02?\"3/v1beta1/{parent=projects/*/locations/*}/taxonomies:\x08taxonomy\xda\x41\x0fparent,taxonomy\x12\xa5\x01\n\x0e\x44\x65leteTaxonomy\x12\x37.google.cloud.datacatalog.v1beta1.DeleteTaxonomyRequest\x1a\x16.google.protobuf.Empty\"B\x82\xd3\xe4\x93\x02\x35*3/v1beta1/{name=projects/*/locations/*/taxonomies/*}\xda\x41\x04name\x12\xd0\x01\n\x0eUpdateTaxonomy\x12\x37.google.cloud.datacatalog.v1beta1.UpdateTaxonomyRequest\x1a*.google.cloud.datacatalog.v1beta1.Taxonomy\"Y\x82\xd3\xe4\x93\x02H2</v1beta1/{taxonomy.name=projects/*/locations/*/taxonomies/*}:\x08taxonomy\xda\x41\x08taxonomy\x12\xc9\x01\n\x0eListTaxonomies\x12\x37.google.cloud.datacatalog.v1beta1.ListTaxonomiesRequest\x1a\x38.google.cloud.datacatalog.v1beta1.ListTaxonomiesResponse\"D\x82\xd3\xe4\x93\x02\x35\x12\x33/v1beta1/{parent=projects/*/locations/*}/taxonomies\xda\x41\x06parent\x12\xb3\x01\n\x0bGetTaxonomy\x12\x34.google.cloud.datacatalog.v1beta1.GetTaxonomyRequest\x1a*.google.cloud.datacatalog.v1beta1.Taxonomy\"B\x82\xd3\xe4\x93\x02\x35\x12\x33/v1beta1/{name=projects/*/locations/*/taxonomies/*}\xda\x41\x04name\x12\xe2\x01\n\x0f\x43reatePolicyTag\x12\x38.google.cloud.datacatalog.v1beta1.CreatePolicyTagRequest\x1a+.google.cloud.datacatalog.v1beta1.PolicyTag\"h\x82\xd3\xe4\x93\x02N\"@/v1beta1/{parent=projects/*/locations/*/taxonomies/*}/policyTags:\npolicy_tag\xda\x41\x11parent,policy_tag\x12\xb4\x01\n\x0f\x44\x65letePolicyTag\x12\x38.google.cloud.datacatalog.v1beta1.DeletePolicyTagRequest\x1a\x16.google.protobuf.Empty\"O\x82\xd3\xe4\x93\x02\x42*@/v1beta1/{name=projects/*/locations/*/taxonomies/*/policyTags/*}\xda\x41\x04name\x12\xe6\x01\n\x0fUpdatePolicyTag\x12\x38.google.cloud.datacatalog.v1beta1.UpdatePolicyTagRequest\x1a+.google.cloud.datacatalog.v1beta1.PolicyTag\"l\x82\xd3\xe4\x93\x02Y2K/v1beta1/{policy_tag.name=projects/*/locations/*/taxonomies/*/policyTags/*}:\npolicy_tag\xda\x41\npolicy_tag\x12\xd6\x01\n\x0eListPolicyTags\x12\x37.google.cloud.datacatalog.v1beta1.ListPolicyTagsRequest\x1a\x38.google.cloud.datacatalog.v1beta1.ListPolicyTagsResponse\"Q\x82\xd3\xe4\x93\x02\x42\x12@/v1beta1/{parent=projects/*/locations/*/taxonomies/*}/policyTags\xda\x41\x06parent\x12\xc3\x01\n\x0cGetPolicyTag\x12\x35.google.cloud.datacatalog.v1beta1.GetPolicyTagRequest\x1a+.google.cloud.datacatalog.v1beta1.PolicyTag\"O\x82\xd3\xe4\x93\x02\x42\x12@/v1beta1/{name=projects/*/locations/*/taxonomies/*/policyTags/*}\xda\x41\x04name\x12\xf4\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xa8\x01\x82\xd3\xe4\x93\x02\xa1\x01\"D/v1beta1/{resource=projects/*/locations/*/taxonomies/*}:getIamPolicy:\x01*ZV\"Q/v1beta1/{resource=projects/*/locations/*/taxonomies/*/policyTags/*}:getIamPolicy:\x01*\x12\xf4\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xa8\x01\x82\xd3\xe4\x93\x02\xa1\x01\"D/v1beta1/{resource=projects/*/locations/*/taxonomies/*}:setIamPolicy:\x01*ZV\"Q/v1beta1/{resource=projects/*/locations/*/taxonomies/*/policyTags/*}:setIamPolicy:\x01*\x12\xa0\x02\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"\xb4\x01\x82\xd3\xe4\x93\x02\xad\x01\"J/v1beta1/{resource=projects/*/locations/*/taxonomies/*}:testIamPermissions:\x01*Z\\\"W/v1beta1/{resource=projects/*/locations/*/taxonomies/*/policyTags/*}:testIamPermissions:\x01*\x1aN\xca\x41\x1a\x64\x61tacatalog.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xf6\x01\n$com.google.cloud.datacatalog.v1beta1B\x15PolicyTagManagerProtoP\x01ZFcloud.google.com/go/datacatalog/apiv1beta1/datacatalogpb;datacatalogpb\xf8\x01\x01\xaa\x02 Google.Cloud.DataCatalog.V1Beta1\xca\x02 Google\\Cloud\\DataCatalog\\V1beta1\xea\x02#Google::Cloud::DataCatalog::V1beta1b\x06proto3"

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
    ["google.cloud.datacatalog.v1beta1.SystemTimestamps", "google/cloud/datacatalog/v1beta1/timestamps.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module DataCatalog
      module V1beta1
        Taxonomy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.Taxonomy").msgclass
        Taxonomy::Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.Taxonomy.Service").msgclass
        Taxonomy::PolicyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.Taxonomy.PolicyType").enummodule
        PolicyTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.PolicyTag").msgclass
        CreateTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.CreateTaxonomyRequest").msgclass
        DeleteTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.DeleteTaxonomyRequest").msgclass
        UpdateTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.UpdateTaxonomyRequest").msgclass
        ListTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ListTaxonomiesRequest").msgclass
        ListTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ListTaxonomiesResponse").msgclass
        GetTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.GetTaxonomyRequest").msgclass
        CreatePolicyTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.CreatePolicyTagRequest").msgclass
        DeletePolicyTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.DeletePolicyTagRequest").msgclass
        UpdatePolicyTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.UpdatePolicyTagRequest").msgclass
        ListPolicyTagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ListPolicyTagsRequest").msgclass
        ListPolicyTagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ListPolicyTagsResponse").msgclass
        GetPolicyTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.GetPolicyTagRequest").msgclass
      end
    end
  end
end
