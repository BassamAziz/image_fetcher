require "image_fetcher/logger"
require "image_fetcher/downloader"

module ImageFetcher
  class Parser
    def self.perform(file_path:)
      File.foreach(file_path) do |url|
        Logger.info("Downloading Image ##{$.} from #{url}")
        Downloader.perform(url: url)
      end
    rescue Errno::ENOENT => e
      Logger.error e.message
    end
  end
end
