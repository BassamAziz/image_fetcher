require "symbols"

module ImageFetcher
  class Logger
    LogSymbol = SYMBOLS::Log.new

    def self.success(message)
      puts "#{LogSymbol.success} #{message}"
    end

    def self.warn(message)
      puts "#{LogSymbol.warning} #{message}"
    end

    def self.error(message)
      puts "#{LogSymbol.error} #{message}"
    end

    def self.info(message)
      puts "#{LogSymbol.info} #{message}"
    end
  end
end
