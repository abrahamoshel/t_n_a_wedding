#!/usr/bin/env rackup
# encoding: utf-8

require File.expand_path('../lib/boot',  __FILE__)

set :environment, ENV["RACK_ENV"] || "production"

environment.context_class.class_eval do
  def asset_path(path, options = {})
  end
end

run Server
