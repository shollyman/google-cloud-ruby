# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/expanded_data_set.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n6google/analytics/admin/v1alpha/expanded_data_set.proto\x12\x1egoogle.analytics.admin.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa6\x04\n\x15\x45xpandedDataSetFilter\x12[\n\rstring_filter\x18\x02 \x01(\x0b\x32\x42.google.analytics.admin.v1alpha.ExpandedDataSetFilter.StringFilterH\x00\x12\\\n\x0ein_list_filter\x18\x03 \x01(\x0b\x32\x42.google.analytics.admin.v1alpha.ExpandedDataSetFilter.InListFilterH\x00\x12\x17\n\nfield_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\xe8\x01\n\x0cStringFilter\x12\x65\n\nmatch_type\x18\x01 \x01(\x0e\x32L.google.analytics.admin.v1alpha.ExpandedDataSetFilter.StringFilter.MatchTypeB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x63\x61se_sensitive\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"@\n\tMatchType\x12\x1a\n\x16MATCH_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45XACT\x10\x01\x12\x0c\n\x08\x43ONTAINS\x10\x02\x1a@\n\x0cInListFilter\x12\x13\n\x06values\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x63\x61se_sensitive\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x42\x0c\n\none_filter\"\xa7\x02\n\x1f\x45xpandedDataSetFilterExpression\x12X\n\tand_group\x18\x01 \x01(\x0b\x32\x43.google.analytics.admin.v1alpha.ExpandedDataSetFilterExpressionListH\x00\x12Y\n\x0enot_expression\x18\x02 \x01(\x0b\x32?.google.analytics.admin.v1alpha.ExpandedDataSetFilterExpressionH\x00\x12G\n\x06\x66ilter\x18\x03 \x01(\x0b\x32\x35.google.analytics.admin.v1alpha.ExpandedDataSetFilterH\x00\x42\x06\n\x04\x65xpr\"\x82\x01\n#ExpandedDataSetFilterExpressionList\x12[\n\x12\x66ilter_expressions\x18\x01 \x03(\x0b\x32?.google.analytics.admin.v1alpha.ExpandedDataSetFilterExpression\"\xb2\x03\n\x0f\x45xpandedDataSet\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0f\x64imension_names\x18\x04 \x03(\tB\x03\xe0\x41\x05\x12\x19\n\x0cmetric_names\x18\x05 \x03(\tB\x03\xe0\x41\x05\x12i\n\x1b\x64imension_filter_expression\x18\x06 \x01(\x0b\x32?.google.analytics.admin.v1alpha.ExpandedDataSetFilterExpressionB\x03\xe0\x41\x05\x12\x43\n\x1a\x64\x61ta_collection_start_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:n\xea\x41k\n-analyticsadmin.googleapis.com/ExpandedDataSet\x12:properties/{property}/expandedDataSets/{expanded_data_set}B|\n\"com.google.analytics.admin.v1alphaB\x14\x45xpandedDataSetProtoP\x01Z>cloud.google.com/go/analytics/admin/apiv1alpha/adminpb;adminpbb\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
  module Analytics
    module Admin
      module V1alpha
        ExpandedDataSetFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilter").msgclass
        ExpandedDataSetFilter::StringFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilter.StringFilter").msgclass
        ExpandedDataSetFilter::StringFilter::MatchType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilter.StringFilter.MatchType").enummodule
        ExpandedDataSetFilter::InListFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilter.InListFilter").msgclass
        ExpandedDataSetFilterExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilterExpression").msgclass
        ExpandedDataSetFilterExpressionList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSetFilterExpressionList").msgclass
        ExpandedDataSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ExpandedDataSet").msgclass
      end
    end
  end
end
