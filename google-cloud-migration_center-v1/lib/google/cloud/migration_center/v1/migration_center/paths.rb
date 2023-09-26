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


module Google
  module Cloud
    module MigrationCenter
      module V1
        module MigrationCenter
          # Path helper methods for the MigrationCenter API.
          module Paths
            ##
            # Create a fully-qualified Asset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/assets/{asset}`
            #
            # @param project [String]
            # @param location [String]
            # @param asset [String]
            #
            # @return [::String]
            def asset_path project:, location:, asset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/assets/#{asset}"
            end

            ##
            # Create a fully-qualified ErrorFrame resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/errorFrames/{error_frame}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param error_frame [String]
            #
            # @return [::String]
            def error_frame_path project:, location:, source:, error_frame:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/errorFrames/#{error_frame}"
            end

            ##
            # Create a fully-qualified Group resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/groups/{group}`
            #
            # @param project [String]
            # @param location [String]
            # @param group [String]
            #
            # @return [::String]
            def group_path project:, location:, group:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/groups/#{group}"
            end

            ##
            # Create a fully-qualified ImportDataFile resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/importJobs/{import_job}/importDataFiles/{import_data_file}`
            #
            # @param project [String]
            # @param location [String]
            # @param import_job [String]
            # @param import_data_file [String]
            #
            # @return [::String]
            def import_data_file_path project:, location:, import_job:, import_data_file:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "import_job cannot contain /" if import_job.to_s.include? "/"

              "projects/#{project}/locations/#{location}/importJobs/#{import_job}/importDataFiles/#{import_data_file}"
            end

            ##
            # Create a fully-qualified ImportJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/importJobs/{import_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param import_job [String]
            #
            # @return [::String]
            def import_job_path project:, location:, import_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/importJobs/#{import_job}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified PreferenceSet resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/preferenceSets/{preference_set}`
            #
            # @param project [String]
            # @param location [String]
            # @param preference_set [String]
            #
            # @return [::String]
            def preference_set_path project:, location:, preference_set:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/preferenceSets/#{preference_set}"
            end

            ##
            # Create a fully-qualified Report resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/reportConfigs/{report_config}/reports/{report}`
            #
            # @param project [String]
            # @param location [String]
            # @param report_config [String]
            # @param report [String]
            #
            # @return [::String]
            def report_path project:, location:, report_config:, report:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "report_config cannot contain /" if report_config.to_s.include? "/"

              "projects/#{project}/locations/#{location}/reportConfigs/#{report_config}/reports/#{report}"
            end

            ##
            # Create a fully-qualified ReportConfig resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/reportConfigs/{report_config}`
            #
            # @param project [String]
            # @param location [String]
            # @param report_config [String]
            #
            # @return [::String]
            def report_config_path project:, location:, report_config:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/reportConfigs/#{report_config}"
            end

            ##
            # Create a fully-qualified Settings resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/settings`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def settings_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}/settings"
            end

            ##
            # Create a fully-qualified Source resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            #
            # @return [::String]
            def source_path project:, location:, source:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}"
            end

            extend self
          end
        end
      end
    end
  end
end
