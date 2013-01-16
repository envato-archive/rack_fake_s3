## Introduction

This library is a modified version of the FakeS3 gem.
You can find the original implementation here: [https://github.com/jubos/fake-s3](https://github.com/jubos/fake-s3)

This version is modified to run on rack.

## What it does

Rack Fake S3 is a lightweight server that responds to the same calls Amazon S3 responds to.
It is extremely useful for testing of S3 in a sandbox environment without actually
making calls to Amazon, which not only require network, but also cost you precious dollars.

The goal of Rack Fake S3 is to minimize runtime dependencies and be more of a
development tool to test S3 calls in your code rather than a production server
looking to duplicate S3 functionality.  Trying RiakCS, ParkPlace/Boardwalk, or
Ceph might be a place to start if that is your goal.

Rack Fake S3 doesn't support all of the S3 command set, but the basic ones like put, get,
list, copy, and make bucket are supported. More coming soon.

## Installation

### Rails (as a mounted rack app)

Add rack_fake_s3 to your Gemfile and bundle

```ruby
# Gemfile
gem 'rack_fake_s3'
```

Mount the app to your routes

```ruby
# config/routes.rb

constraints :host => domain do
  mount RackFakeS3::App.new(root_path, domain)
end
```

Setup your app to point to the specified domain instead of the real AWS S3.
