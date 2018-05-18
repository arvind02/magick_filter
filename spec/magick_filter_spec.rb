RSpec.describe MagickFilter do
  it "has a version number" do
    expect(MagickFilter::VERSION).not_to be nil
  end
  
  describe '#parse_if_image' do
    it 'returns true if valid image' do
      expect(MagickFilter::Tool.send :parse_if_image, File.expand_path('../..',__FILE__) + "/test_image/free-images.jpg").to eq true	
    end
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
end
