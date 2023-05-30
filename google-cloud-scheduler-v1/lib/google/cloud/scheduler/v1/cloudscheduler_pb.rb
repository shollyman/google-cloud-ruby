# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/scheduler/v1/cloudscheduler.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/scheduler/v1/job_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n.google/cloud/scheduler/v1/cloudscheduler.proto\x12\x19google.cloud.scheduler.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/scheduler/v1/job.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"s\n\x0fListJobsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!cloudscheduler.googleapis.com/Job\x12\x11\n\tpage_size\x18\x05 \x01(\x05\x12\x12\n\npage_token\x18\x06 \x01(\t\"Y\n\x10ListJobsResponse\x12,\n\x04jobs\x18\x01 \x03(\x0b\x32\x1e.google.cloud.scheduler.v1.Job\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"H\n\rGetJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudscheduler.googleapis.com/Job\"\x7f\n\x10\x43reateJobRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!cloudscheduler.googleapis.com/Job\x12\x30\n\x03job\x18\x02 \x01(\x0b\x32\x1e.google.cloud.scheduler.v1.JobB\x03\xe0\x41\x02\"u\n\x10UpdateJobRequest\x12\x30\n\x03job\x18\x01 \x01(\x0b\x32\x1e.google.cloud.scheduler.v1.JobB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"K\n\x10\x44\x65leteJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudscheduler.googleapis.com/Job\"J\n\x0fPauseJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudscheduler.googleapis.com/Job\"K\n\x10ResumeJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudscheduler.googleapis.com/Job\"H\n\rRunJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudscheduler.googleapis.com/Job2\xb3\n\n\x0e\x43loudScheduler\x12\x9e\x01\n\x08ListJobs\x12*.google.cloud.scheduler.v1.ListJobsRequest\x1a+.google.cloud.scheduler.v1.ListJobsResponse\"9\x82\xd3\xe4\x93\x02*\x12(/v1/{parent=projects/*/locations/*}/jobs\xda\x41\x06parent\x12\x8b\x01\n\x06GetJob\x12(.google.cloud.scheduler.v1.GetJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\"7\x82\xd3\xe4\x93\x02*\x12(/v1/{name=projects/*/locations/*/jobs/*}\xda\x41\x04name\x12\x9c\x01\n\tCreateJob\x12+.google.cloud.scheduler.v1.CreateJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\"B\x82\xd3\xe4\x93\x02/\"(/v1/{parent=projects/*/locations/*}/jobs:\x03job\xda\x41\nparent,job\x12\xa5\x01\n\tUpdateJob\x12+.google.cloud.scheduler.v1.UpdateJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\"K\x82\xd3\xe4\x93\x02\x33\x32,/v1/{job.name=projects/*/locations/*/jobs/*}:\x03job\xda\x41\x0fjob,update_mask\x12\x89\x01\n\tDeleteJob\x12+.google.cloud.scheduler.v1.DeleteJobRequest\x1a\x16.google.protobuf.Empty\"7\x82\xd3\xe4\x93\x02**(/v1/{name=projects/*/locations/*/jobs/*}\xda\x41\x04name\x12\x98\x01\n\x08PauseJob\x12*.google.cloud.scheduler.v1.PauseJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\"@\x82\xd3\xe4\x93\x02\x33\"./v1/{name=projects/*/locations/*/jobs/*}:pause:\x01*\xda\x41\x04name\x12\x9b\x01\n\tResumeJob\x12+.google.cloud.scheduler.v1.ResumeJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\"A\x82\xd3\xe4\x93\x02\x34\"//v1/{name=projects/*/locations/*/jobs/*}:resume:\x01*\xda\x41\x04name\x12\x92\x01\n\x06RunJob\x12(.google.cloud.scheduler.v1.RunJobRequest\x1a\x1e.google.cloud.scheduler.v1.Job\">\x82\xd3\xe4\x93\x02\x31\",/v1/{name=projects/*/locations/*/jobs/*}:run:\x01*\xda\x41\x04name\x1aQ\xca\x41\x1d\x63loudscheduler.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBz\n\x1d\x63om.google.cloud.scheduler.v1B\x0eSchedulerProtoP\x01Z;cloud.google.com/go/scheduler/apiv1/schedulerpb;schedulerpb\xa2\x02\tSCHEDULERb\x06proto3"

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
    ["google.cloud.scheduler.v1.Job", "google/cloud/scheduler/v1/job.proto"],
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
    module Scheduler
      module V1
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.ListJobsResponse").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.GetJobRequest").msgclass
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.CreateJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.UpdateJobRequest").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.DeleteJobRequest").msgclass
        PauseJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.PauseJobRequest").msgclass
        ResumeJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.ResumeJobRequest").msgclass
        RunJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.RunJobRequest").msgclass
      end
    end
  end
end
