### Generated by rprotoc. DO NOT EDIT!
require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/extend'

module Spec
  module Proto
    class StatusType < ::Protobuf::Enum
      define :PENDING, 0
      define :ENABLED, 1
      define :DISABLED, 2
      define :DELETED, 3
    end
    class ResourceFindRequest < ::Protobuf::Message
      required :string, :name, 1
      optional :bool, :active, 2
    end
    class Resource < ::Protobuf::Message
      required :string, :name, 1
      optional :int64, :date_created, 2
      optional :StatusType, :status, 3
      repeated :StatusType, :repeated_enum, 4
    end
    class Nested < ::Protobuf::Message
      optional :string, :name, 1
      optional :Resource, :resource, 2
      repeated :Resource, :multiple_resources, 3
      optional :StatusType, :status, 4
    end
  end
end
