$:.unshift File.expand_path("../lib", __FILE__)
require 'rack_fake_s3'

run RackFakeS3::App.new(RackFakeS3::FileStore.new(ENV['FAKE_S3_ROOT']), ENV['FAKE_S3_HOSTNAME'])
