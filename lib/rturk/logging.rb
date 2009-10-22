require 'logger'

module RTurk
  module Logging
    class << self
      def logger=(logger_obj)
        @logger = logger_obj
      end

      def logger
        unless @logger
          @logger = Logger.new(STDOUT)
          @logger.level = Logger::INFO
        end
        @logger
      end

      def log_level=(level=Logger::INFO)
        logger.level = level
      end
    end
  end

  def self.log
    RTurk::Logging.logger
  end
end