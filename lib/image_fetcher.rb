require "image_fetcher/version"
require "image_fetcher/parser"

module ImageFetcher
  class Error < StandardError; end
  # Your code goes here...

  def self.fetch_images_from(path:)
    ImageFetcher::Parser.perform(file_path: path)
  end
end
# parse
#
# parse
# log parsing file
# log number of images
# download
# log downloading index/number of images
# log error if download fails
# log finish
