# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'objspace'
require 'rbtrace'
ObjectSpace.trace_object_allocations_start

# Initialize the Rails application.
Rails.application.initialize!
