#### BLACKJACK - 21 ####
#
# Launch this Ruby file from the command line
# to get started.
#

APP_ROOT = File.dirname(__FILE__)

require "#{APP_ROOT}/lib/guide"


guide=Guide.new
guide.launch!
