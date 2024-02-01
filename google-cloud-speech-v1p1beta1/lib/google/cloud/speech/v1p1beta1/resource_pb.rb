# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/speech/v1p1beta1/resource.proto

require 'google/protobuf'

require 'google/api/resource_pb'


descriptor_data = "\n,google/cloud/speech/v1p1beta1/resource.proto\x12\x1dgoogle.cloud.speech.v1p1beta1\x1a\x19google/api/resource.proto\"\x83\x02\n\x0b\x43ustomClass\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\x0f\x63ustom_class_id\x18\x02 \x01(\t\x12\x43\n\x05items\x18\x03 \x03(\x0b\x32\x34.google.cloud.speech.v1p1beta1.CustomClass.ClassItem\x1a\x1a\n\tClassItem\x12\r\n\x05value\x18\x01 \x01(\t:l\xea\x41i\n!speech.googleapis.com/CustomClass\x12\x44projects/{project}/locations/{location}/customClasses/{custom_class}\"\xf9\x01\n\tPhraseSet\x12\x0c\n\x04name\x18\x01 \x01(\t\x12@\n\x07phrases\x18\x02 \x03(\x0b\x32/.google.cloud.speech.v1p1beta1.PhraseSet.Phrase\x12\r\n\x05\x62oost\x18\x04 \x01(\x02\x1a&\n\x06Phrase\x12\r\n\x05value\x18\x01 \x01(\t\x12\r\n\x05\x62oost\x18\x02 \x01(\x02:e\xea\x41\x62\n\x1fspeech.googleapis.com/PhraseSet\x12?projects/{project}/locations/{location}/phraseSets/{phrase_set}\"\xd2\x02\n\x10SpeechAdaptation\x12=\n\x0bphrase_sets\x18\x01 \x03(\x0b\x32(.google.cloud.speech.v1p1beta1.PhraseSet\x12\x43\n\x15phrase_set_references\x18\x02 \x03(\tB$\xfa\x41!\n\x1fspeech.googleapis.com/PhraseSet\x12\x42\n\x0e\x63ustom_classes\x18\x03 \x03(\x0b\x32*.google.cloud.speech.v1p1beta1.CustomClass\x12Q\n\x0c\x61\x62nf_grammar\x18\x04 \x01(\x0b\x32;.google.cloud.speech.v1p1beta1.SpeechAdaptation.ABNFGrammar\x1a#\n\x0b\x41\x42NFGrammar\x12\x14\n\x0c\x61\x62nf_strings\x18\x01 \x03(\t\"\xaa\x01\n\x17TranscriptNormalization\x12M\n\x07\x65ntries\x18\x01 \x03(\x0b\x32<.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry\x1a@\n\x05\x45ntry\x12\x0e\n\x06search\x18\x01 \x01(\t\x12\x0f\n\x07replace\x18\x02 \x01(\t\x12\x16\n\x0e\x63\x61se_sensitive\x18\x03 \x01(\x08\x42~\n!com.google.cloud.speech.v1p1beta1B\x13SpeechResourceProtoP\x01Z9cloud.google.com/go/speech/apiv1p1beta1/speechpb;speechpb\xf8\x01\x01\xa2\x02\x03GCSb\x06proto3"

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
    module Speech
      module V1p1beta1
        CustomClass = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.CustomClass").msgclass
        CustomClass::ClassItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.CustomClass.ClassItem").msgclass
        PhraseSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.PhraseSet").msgclass
        PhraseSet::Phrase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.PhraseSet.Phrase").msgclass
        SpeechAdaptation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.SpeechAdaptation").msgclass
        SpeechAdaptation::ABNFGrammar = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.SpeechAdaptation.ABNFGrammar").msgclass
        TranscriptNormalization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.TranscriptNormalization").msgclass
        TranscriptNormalization::Entry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry").msgclass
      end
    end
  end
end
