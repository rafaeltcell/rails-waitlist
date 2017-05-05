# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'objspace'
ObjectSpace.trace_object_allocations_start
require 'rbtrace'

# Initialize the Rails application.
Rails.application.initialize!
