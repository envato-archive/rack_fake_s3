require 'rack_fake_s3/version'
require 'rack_fake_s3/file_store'
require 'rack_fake_s3/server'

module RackFakeS3
  class UnsupportedOperation < RuntimeError; end
end
