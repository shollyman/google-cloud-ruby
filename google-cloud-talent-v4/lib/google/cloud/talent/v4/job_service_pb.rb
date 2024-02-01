# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4/job_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4/common_pb'
require 'google/cloud/talent/v4/filters_pb'
require 'google/cloud/talent/v4/histogram_pb'
require 'google/cloud/talent/v4/job_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n(google/cloud/talent/v4/job_service.proto\x12\x16google.cloud.talent.v4\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/talent/v4/common.proto\x1a$google/cloud/talent/v4/filters.proto\x1a&google/cloud/talent/v4/histogram.proto\x1a google/cloud/talent/v4/job.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x17google/rpc/status.proto\"t\n\x10\x43reateJobRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12.\n\x03job\x18\x02 \x01(\x0b\x32\x1b.google.cloud.talent.v4.JobB\x04\xe2\x41\x01\x02\"?\n\rGetJobRequest\x12.\n\x04name\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\n\x17jobs.googleapis.com/Job\"s\n\x10UpdateJobRequest\x12.\n\x03job\x18\x01 \x01(\x0b\x32\x1b.google.cloud.talent.v4.JobB\x04\xe2\x41\x01\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"B\n\x10\x44\x65leteJobRequest\x12.\n\x04name\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\n\x17jobs.googleapis.com/Job\"\xb3\x01\n\x0fListJobsRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x14\n\x06\x66ilter\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x31\n\x08job_view\x18\x05 \x01(\x0e\x32\x1f.google.cloud.talent.v4.JobView\"\x92\x01\n\x10ListJobsResponse\x12)\n\x04jobs\x18\x01 \x03(\x0b\x32\x1b.google.cloud.talent.v4.Job\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12:\n\x08metadata\x18\x03 \x01(\x0b\x32(.google.cloud.talent.v4.ResponseMetadata\"\xdb\x0b\n\x11SearchJobsRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12I\n\x0bsearch_mode\x18\x02 \x01(\x0e\x32\x34.google.cloud.talent.v4.SearchJobsRequest.SearchMode\x12G\n\x10request_metadata\x18\x03 \x01(\x0b\x32\'.google.cloud.talent.v4.RequestMetadataB\x04\xe2\x41\x01\x02\x12\x33\n\tjob_query\x18\x04 \x01(\x0b\x32 .google.cloud.talent.v4.JobQuery\x12\x19\n\x11\x65nable_broadening\x18\x05 \x01(\x08\x12\x41\n\x11histogram_queries\x18\x07 \x03(\x0b\x32&.google.cloud.talent.v4.HistogramQuery\x12\x31\n\x08job_view\x18\x08 \x01(\x0e\x32\x1f.google.cloud.talent.v4.JobView\x12\x0e\n\x06offset\x18\t \x01(\x05\x12\x15\n\rmax_page_size\x18\n \x01(\x05\x12\x12\n\npage_token\x18\x0b \x01(\t\x12\x10\n\x08order_by\x18\x0c \x01(\t\x12]\n\x15\x64iversification_level\x18\r \x01(\x0e\x32>.google.cloud.talent.v4.SearchJobsRequest.DiversificationLevel\x12X\n\x13\x63ustom_ranking_info\x18\x0e \x01(\x0b\x32;.google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo\x12!\n\x15\x64isable_keyword_match\x18\x10 \x01(\x08\x42\x02\x18\x01\x12V\n\x12keyword_match_mode\x18\x12 \x01(\x0e\x32:.google.cloud.talent.v4.SearchJobsRequest.KeywordMatchMode\x1a\x97\x02\n\x11\x43ustomRankingInfo\x12k\n\x10importance_level\x18\x01 \x01(\x0e\x32K.google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo.ImportanceLevelB\x04\xe2\x41\x01\x02\x12 \n\x12ranking_expression\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"s\n\x0fImportanceLevel\x12 \n\x1cIMPORTANCE_LEVEL_UNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\x07\n\x03LOW\x10\x02\x12\x08\n\x04MILD\x10\x03\x12\n\n\x06MEDIUM\x10\x04\x12\x08\n\x04HIGH\x10\x05\x12\x0b\n\x07\x45XTREME\x10\x06\"R\n\nSearchMode\x12\x1b\n\x17SEARCH_MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nJOB_SEARCH\x10\x01\x12\x17\n\x13\x46\x45\x41TURED_JOB_SEARCH\x10\x02\"\xc0\x01\n\x14\x44iversificationLevel\x12%\n!DIVERSIFICATION_LEVEL_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\n\n\x06SIMPLE\x10\x02\x12\x13\n\x0fONE_PER_COMPANY\x10\x03\x12\x13\n\x0fTWO_PER_COMPANY\x10\x04\x12\x19\n\x15MAX_THREE_PER_COMPANY\x10\x06\x12\"\n\x1e\x44IVERSIFY_BY_LOOSER_SIMILARITY\x10\x05\"\x87\x01\n\x10KeywordMatchMode\x12\"\n\x1eKEYWORD_MATCH_MODE_UNSPECIFIED\x10\x00\x12\x1a\n\x16KEYWORD_MATCH_DISABLED\x10\x01\x12\x15\n\x11KEYWORD_MATCH_ALL\x10\x02\x12\x1c\n\x18KEYWORD_MATCH_TITLE_ONLY\x10\x03\"\x91\x06\n\x12SearchJobsResponse\x12M\n\rmatching_jobs\x18\x01 \x03(\x0b\x32\x36.google.cloud.talent.v4.SearchJobsResponse.MatchingJob\x12M\n\x17histogram_query_results\x18\x02 \x03(\x0b\x32,.google.cloud.talent.v4.HistogramQueryResult\x12\x17\n\x0fnext_page_token\x18\x03 \x01(\t\x12:\n\x10location_filters\x18\x04 \x03(\x0b\x32 .google.cloud.talent.v4.Location\x12\x12\n\ntotal_size\x18\x06 \x01(\x05\x12:\n\x08metadata\x18\x07 \x01(\x0b\x32(.google.cloud.talent.v4.ResponseMetadata\x12\"\n\x1a\x62roadened_query_jobs_count\x18\x08 \x01(\x05\x12\x44\n\x10spell_correction\x18\t \x01(\x0b\x32*.google.cloud.talent.v4.SpellingCorrection\x1a\xd2\x01\n\x0bMatchingJob\x12(\n\x03job\x18\x01 \x01(\x0b\x32\x1b.google.cloud.talent.v4.Job\x12\x13\n\x0bjob_summary\x18\x02 \x01(\t\x12\x19\n\x11job_title_snippet\x18\x03 \x01(\t\x12\x1b\n\x13search_text_snippet\x18\x04 \x01(\t\x12L\n\x0c\x63ommute_info\x18\x05 \x01(\x0b\x32\x36.google.cloud.talent.v4.SearchJobsResponse.CommuteInfo\x1ay\n\x0b\x43ommuteInfo\x12\x36\n\x0cjob_location\x18\x01 \x01(\x0b\x32 .google.cloud.talent.v4.Location\x12\x32\n\x0ftravel_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"{\n\x16\x42\x61tchCreateJobsRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12/\n\x04jobs\x18\x02 \x03(\x0b\x32\x1b.google.cloud.talent.v4.JobB\x04\xe2\x41\x01\x02\"\xac\x01\n\x16\x42\x61tchUpdateJobsRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe2\x41\x01\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12/\n\x04jobs\x18\x02 \x03(\x0b\x32\x1b.google.cloud.talent.v4.JobB\x04\xe2\x41\x01\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"z\n\x16\x42\x61tchDeleteJobsRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe2\x41\x01\x02\xfa\x41\x1c\n\x1ajobs.googleapis.com/Tenant\x12+\n\x05names\x18\x02 \x03(\tB\x1c\xfa\x41\x19\n\x17jobs.googleapis.com/Job\"Y\n\tJobResult\x12(\n\x03job\x18\x01 \x01(\x0b\x32\x1b.google.cloud.talent.v4.Job\x12\"\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status\"Q\n\x17\x42\x61tchCreateJobsResponse\x12\x36\n\x0bjob_results\x18\x01 \x03(\x0b\x32!.google.cloud.talent.v4.JobResult\"Q\n\x17\x42\x61tchUpdateJobsResponse\x12\x36\n\x0bjob_results\x18\x01 \x03(\x0b\x32!.google.cloud.talent.v4.JobResult\"Q\n\x17\x42\x61tchDeleteJobsResponse\x12\x36\n\x0bjob_results\x18\x01 \x03(\x0b\x32!.google.cloud.talent.v4.JobResult*v\n\x07JobView\x12\x18\n\x14JOB_VIEW_UNSPECIFIED\x10\x00\x12\x14\n\x10JOB_VIEW_ID_ONLY\x10\x01\x12\x14\n\x10JOB_VIEW_MINIMAL\x10\x02\x12\x12\n\x0eJOB_VIEW_SMALL\x10\x03\x12\x11\n\rJOB_VIEW_FULL\x10\x04\x32\xdc\x0e\n\nJobService\x12\x94\x01\n\tCreateJob\x12(.google.cloud.talent.v4.CreateJobRequest\x1a\x1b.google.cloud.talent.v4.Job\"@\xda\x41\nparent,job\x82\xd3\xe4\x93\x02-\"&/v4/{parent=projects/*/tenants/*}/jobs:\x03job\x12\xe1\x01\n\x0f\x42\x61tchCreateJobs\x12..google.cloud.talent.v4.BatchCreateJobsRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x31\n\x17\x42\x61tchCreateJobsResponse\x12\x16\x42\x61tchOperationMetadata\xda\x41\x0bparent,jobs\x82\xd3\xe4\x93\x02\x37\"2/v4/{parent=projects/*/tenants/*}/jobs:batchCreate:\x01*\x12\x83\x01\n\x06GetJob\x12%.google.cloud.talent.v4.GetJobRequest\x1a\x1b.google.cloud.talent.v4.Job\"5\xda\x41\x04name\x82\xd3\xe4\x93\x02(\x12&/v4/{name=projects/*/tenants/*/jobs/*}\x12\x9d\x01\n\tUpdateJob\x12(.google.cloud.talent.v4.UpdateJobRequest\x1a\x1b.google.cloud.talent.v4.Job\"I\xda\x41\x0fjob,update_mask\x82\xd3\xe4\x93\x02\x31\x32*/v4/{job.name=projects/*/tenants/*/jobs/*}:\x03job\x12\xe1\x01\n\x0f\x42\x61tchUpdateJobs\x12..google.cloud.talent.v4.BatchUpdateJobsRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x31\n\x17\x42\x61tchUpdateJobsResponse\x12\x16\x42\x61tchOperationMetadata\xda\x41\x0bparent,jobs\x82\xd3\xe4\x93\x02\x37\"2/v4/{parent=projects/*/tenants/*}/jobs:batchUpdate:\x01*\x12\x84\x01\n\tDeleteJob\x12(.google.cloud.talent.v4.DeleteJobRequest\x1a\x16.google.protobuf.Empty\"5\xda\x41\x04name\x82\xd3\xe4\x93\x02(*&/v4/{name=projects/*/tenants/*/jobs/*}\x12\xe3\x01\n\x0f\x42\x61tchDeleteJobs\x12..google.cloud.talent.v4.BatchDeleteJobsRequest\x1a\x1d.google.longrunning.Operation\"\x80\x01\xca\x41\x31\n\x17\x42\x61tchDeleteJobsResponse\x12\x16\x42\x61tchOperationMetadata\xda\x41\x0cparent,names\x82\xd3\xe4\x93\x02\x37\"2/v4/{parent=projects/*/tenants/*}/jobs:batchDelete:\x01*\x12\x9d\x01\n\x08ListJobs\x12\'.google.cloud.talent.v4.ListJobsRequest\x1a(.google.cloud.talent.v4.ListJobsResponse\">\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02(\x12&/v4/{parent=projects/*/tenants/*}/jobs\x12\x9d\x01\n\nSearchJobs\x12).google.cloud.talent.v4.SearchJobsRequest\x1a*.google.cloud.talent.v4.SearchJobsResponse\"8\x82\xd3\xe4\x93\x02\x32\"-/v4/{parent=projects/*/tenants/*}/jobs:search:\x01*\x12\xad\x01\n\x12SearchJobsForAlert\x12).google.cloud.talent.v4.SearchJobsRequest\x1a*.google.cloud.talent.v4.SearchJobsResponse\"@\x82\xd3\xe4\x93\x02:\"5/v4/{parent=projects/*/tenants/*}/jobs:searchForAlert:\x01*\x1al\xca\x41\x13jobs.googleapis.com\xd2\x41Shttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/jobsBi\n\x1a\x63om.google.cloud.talent.v4B\x0fJobServiceProtoP\x01Z2cloud.google.com/go/talent/apiv4/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.talent.v4.Job", "google/cloud/talent/v4/job.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.talent.v4.ResponseMetadata", "google/cloud/talent/v4/common.proto"],
    ["google.cloud.talent.v4.JobQuery", "google/cloud/talent/v4/filters.proto"],
    ["google.cloud.talent.v4.HistogramQuery", "google/cloud/talent/v4/histogram.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module Talent
      module V4
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.GetJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.UpdateJobRequest").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.DeleteJobRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.ListJobsResponse").msgclass
        SearchJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest").msgclass
        SearchJobsRequest::CustomRankingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo").msgclass
        SearchJobsRequest::CustomRankingInfo::ImportanceLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel").enummodule
        SearchJobsRequest::SearchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.SearchMode").enummodule
        SearchJobsRequest::DiversificationLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.DiversificationLevel").enummodule
        SearchJobsRequest::KeywordMatchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsRequest.KeywordMatchMode").enummodule
        SearchJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse").msgclass
        SearchJobsResponse::MatchingJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse.MatchingJob").msgclass
        SearchJobsResponse::CommuteInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.SearchJobsResponse.CommuteInfo").msgclass
        BatchCreateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchCreateJobsRequest").msgclass
        BatchUpdateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchUpdateJobsRequest").msgclass
        BatchDeleteJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchDeleteJobsRequest").msgclass
        JobResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobResult").msgclass
        BatchCreateJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchCreateJobsResponse").msgclass
        BatchUpdateJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchUpdateJobsResponse").msgclass
        BatchDeleteJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.BatchDeleteJobsResponse").msgclass
        JobView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4.JobView").enummodule
      end
    end
  end
end
