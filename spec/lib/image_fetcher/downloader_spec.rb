describe ImageFetcher::Downloader do
  context "when url is valid" do
    it "downloads an image successfully" do
    end
  end

  context "when url is not valid" do
    # Can nest here other specific reasons for invalid url
    context "when request times out" do
      it "logs out error" do
      end
    end
  end
end
