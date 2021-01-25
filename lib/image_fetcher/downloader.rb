require "down"

module ImageFetcher
  class Downloader
    def self.perform(url:)
      begin
        tempfile = Down.download(
          url,
          max_redirects: 2,
          max_size: 5 * 1024 * 1024
        )
        FileUtils.mv(tempfile.path, "./images/#{tempfile.original_filename}")
      rescue Down::Error => e
        Logger.error(e.message)
      end
      Logger.success("Downloaded successfully")
    end
  end
end
