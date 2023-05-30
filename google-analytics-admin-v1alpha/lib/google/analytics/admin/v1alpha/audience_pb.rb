# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/audience.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'


descriptor_data = "\n-google/analytics/admin/v1alpha/audience.proto\x12\x1egoogle.analytics.admin.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\"\xfc\x0b\n\x1f\x41udienceDimensionOrMetricFilter\x12\x65\n\rstring_filter\x18\x02 \x01(\x0b\x32L.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilterH\x00\x12\x66\n\x0ein_list_filter\x18\x03 \x01(\x0b\x32L.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.InListFilterH\x00\x12g\n\x0enumeric_filter\x18\x04 \x01(\x0b\x32M.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilterH\x00\x12g\n\x0e\x62\x65tween_filter\x18\x05 \x01(\x0b\x32M.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.BetweenFilterH\x00\x12\x1a\n\nfield_name\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12!\n\x14\x61t_any_point_in_time\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x12 \n\x13in_any_n_day_period\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01\x1a\xa3\x02\n\x0cStringFilter\x12o\n\nmatch_type\x18\x01 \x01(\x0e\x32V.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchTypeB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x63\x61se_sensitive\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"q\n\tMatchType\x12\x1a\n\x16MATCH_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45XACT\x10\x01\x12\x0f\n\x0b\x42\x45GINS_WITH\x10\x02\x12\r\n\tENDS_WITH\x10\x03\x12\x0c\n\x08\x43ONTAINS\x10\x04\x12\x0f\n\x0b\x46ULL_REGEXP\x10\x05\x1a@\n\x0cInListFilter\x12\x13\n\x06values\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x63\x61se_sensitive\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x1aJ\n\x0cNumericValue\x12\x15\n\x0bint64_value\x18\x01 \x01(\x03H\x00\x12\x16\n\x0c\x64ouble_value\x18\x02 \x01(\x01H\x00\x42\x0b\n\tone_value\x1a\xb6\x02\n\rNumericFilter\x12o\n\toperation\x18\x01 \x01(\x0e\x32W.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter.OperationB\x03\xe0\x41\x02\x12`\n\x05value\x18\x02 \x01(\x0b\x32L.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValueB\x03\xe0\x41\x02\"R\n\tOperation\x12\x19\n\x15OPERATION_UNSPECIFIED\x10\x00\x12\t\n\x05\x45QUAL\x10\x01\x12\r\n\tLESS_THAN\x10\x02\x12\x10\n\x0cGREATER_THAN\x10\x04\x1a\xdb\x01\n\rBetweenFilter\x12\x65\n\nfrom_value\x18\x01 \x01(\x0b\x32L.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValueB\x03\xe0\x41\x02\x12\x63\n\x08to_value\x18\x02 \x01(\x0b\x32L.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValueB\x03\xe0\x41\x02\x42\x0c\n\none_filter\"\x9b\x01\n\x13\x41udienceEventFilter\x12\x1a\n\nevent_name\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12h\n!event_parameter_filter_expression\x18\x02 \x01(\x0b\x32\x38.google.analytics.admin.v1alpha.AudienceFilterExpressionB\x03\xe0\x41\x01\"\xcf\x03\n\x18\x41udienceFilterExpression\x12Q\n\tand_group\x18\x01 \x01(\x0b\x32<.google.analytics.admin.v1alpha.AudienceFilterExpressionListH\x00\x12P\n\x08or_group\x18\x02 \x01(\x0b\x32<.google.analytics.admin.v1alpha.AudienceFilterExpressionListH\x00\x12R\n\x0enot_expression\x18\x03 \x01(\x0b\x32\x38.google.analytics.admin.v1alpha.AudienceFilterExpressionH\x00\x12\x65\n\x1a\x64imension_or_metric_filter\x18\x04 \x01(\x0b\x32?.google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilterH\x00\x12K\n\x0c\x65vent_filter\x18\x05 \x01(\x0b\x32\x33.google.analytics.admin.v1alpha.AudienceEventFilterH\x00\x42\x06\n\x04\x65xpr\"t\n\x1c\x41udienceFilterExpressionList\x12T\n\x12\x66ilter_expressions\x18\x01 \x03(\x0b\x32\x38.google.analytics.admin.v1alpha.AudienceFilterExpression\"\xbf\x01\n\x14\x41udienceSimpleFilter\x12J\n\x05scope\x18\x01 \x01(\x0e\x32\x33.google.analytics.admin.v1alpha.AudienceFilterScopeB\x06\xe0\x41\x02\xe0\x41\x05\x12[\n\x11\x66ilter_expression\x18\x02 \x01(\x0b\x32\x38.google.analytics.admin.v1alpha.AudienceFilterExpressionB\x06\xe0\x41\x02\xe0\x41\x05\"\xb2\x04\n\x16\x41udienceSequenceFilter\x12J\n\x05scope\x18\x01 \x01(\x0e\x32\x33.google.analytics.admin.v1alpha.AudienceFilterScopeB\x06\xe0\x41\x02\xe0\x41\x05\x12\x41\n\x19sequence_maximum_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12h\n\x0esequence_steps\x18\x03 \x03(\x0b\x32K.google.analytics.admin.v1alpha.AudienceSequenceFilter.AudienceSequenceStepB\x03\xe0\x41\x02\x1a\x9e\x02\n\x14\x41udienceSequenceStep\x12J\n\x05scope\x18\x01 \x01(\x0e\x32\x33.google.analytics.admin.v1alpha.AudienceFilterScopeB\x06\xe0\x41\x02\xe0\x41\x05\x12 \n\x13immediately_follows\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12;\n\x13\x63onstraint_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12[\n\x11\x66ilter_expression\x18\x04 \x01(\x0b\x32\x38.google.analytics.admin.v1alpha.AudienceFilterExpressionB\x06\xe0\x41\x02\xe0\x41\x05\"\xfb\x02\n\x14\x41udienceFilterClause\x12M\n\rsimple_filter\x18\x02 \x01(\x0b\x32\x34.google.analytics.admin.v1alpha.AudienceSimpleFilterH\x00\x12Q\n\x0fsequence_filter\x18\x03 \x01(\x0b\x32\x36.google.analytics.admin.v1alpha.AudienceSequenceFilterH\x00\x12\x61\n\x0b\x63lause_type\x18\x01 \x01(\x0e\x32G.google.analytics.admin.v1alpha.AudienceFilterClause.AudienceClauseTypeB\x03\xe0\x41\x02\"T\n\x12\x41udienceClauseType\x12$\n AUDIENCE_CLAUSE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07INCLUDE\x10\x01\x12\x0b\n\x07\x45XCLUDE\x10\x02\x42\x08\n\x06\x66ilter\"\xf3\x01\n\x14\x41udienceEventTrigger\x12\x17\n\nevent_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12]\n\rlog_condition\x18\x02 \x01(\x0e\x32\x41.google.analytics.admin.v1alpha.AudienceEventTrigger.LogConditionB\x03\xe0\x41\x02\"c\n\x0cLogCondition\x12\x1d\n\x19LOG_CONDITION_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x41UDIENCE_JOINED\x10\x01\x12\x1f\n\x1b\x41UDIENCE_MEMBERSHIP_RENEWED\x10\x02\"\x9e\x05\n\x08\x41udience\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12(\n\x18membership_duration_days\x18\x04 \x01(\x05\x42\x06\xe0\x41\x02\xe0\x41\x05\x12(\n\x1b\x61\x64s_personalization_enabled\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12P\n\revent_trigger\x18\x06 \x01(\x0b\x32\x34.google.analytics.admin.v1alpha.AudienceEventTriggerB\x03\xe0\x41\x01\x12l\n\x17\x65xclusion_duration_mode\x18\x07 \x01(\x0e\x32\x46.google.analytics.admin.v1alpha.Audience.AudienceExclusionDurationModeB\x03\xe0\x41\x05\x12W\n\x0e\x66ilter_clauses\x18\x08 \x03(\x0b\x32\x34.google.analytics.admin.v1alpha.AudienceFilterClauseB\t\xe0\x41\x05\xe0\x41\x02\xe0\x41\x06\"\x83\x01\n\x1d\x41udienceExclusionDurationMode\x12\x30\n,AUDIENCE_EXCLUSION_DURATION_MODE_UNSPECIFIED\x10\x00\x12\x17\n\x13\x45XCLUDE_TEMPORARILY\x10\x01\x12\x17\n\x13\x45XCLUDE_PERMANENTLY\x10\x02:W\xea\x41T\n&analyticsadmin.googleapis.com/Audience\x12*properties/{property}/audiences/{audience}*\xc7\x01\n\x13\x41udienceFilterScope\x12%\n!AUDIENCE_FILTER_SCOPE_UNSPECIFIED\x10\x00\x12+\n\'AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT\x10\x01\x12-\n)AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION\x10\x02\x12-\n)AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS\x10\x03\x42u\n\"com.google.analytics.admin.v1alphaB\rAudienceProtoP\x01Z>cloud.google.com/go/analytics/admin/apiv1alpha/adminpb;adminpbb\x06proto3"

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
  module Analytics
    module Admin
      module V1alpha
        AudienceDimensionOrMetricFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter").msgclass
        AudienceDimensionOrMetricFilter::StringFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter").msgclass
        AudienceDimensionOrMetricFilter::StringFilter::MatchType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType").enummodule
        AudienceDimensionOrMetricFilter::InListFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.InListFilter").msgclass
        AudienceDimensionOrMetricFilter::NumericValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue").msgclass
        AudienceDimensionOrMetricFilter::NumericFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter").msgclass
        AudienceDimensionOrMetricFilter::NumericFilter::Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation").enummodule
        AudienceDimensionOrMetricFilter::BetweenFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.BetweenFilter").msgclass
        AudienceEventFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventFilter").msgclass
        AudienceFilterExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterExpression").msgclass
        AudienceFilterExpressionList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterExpressionList").msgclass
        AudienceSimpleFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSimpleFilter").msgclass
        AudienceSequenceFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSequenceFilter").msgclass
        AudienceSequenceFilter::AudienceSequenceStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSequenceFilter.AudienceSequenceStep").msgclass
        AudienceFilterClause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterClause").msgclass
        AudienceFilterClause::AudienceClauseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterClause.AudienceClauseType").enummodule
        AudienceEventTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventTrigger").msgclass
        AudienceEventTrigger::LogCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventTrigger.LogCondition").enummodule
        Audience = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Audience").msgclass
        Audience::AudienceExclusionDurationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Audience.AudienceExclusionDurationMode").enummodule
        AudienceFilterScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterScope").enummodule
      end
    end
  end
end
