RSpec.describe MagickFilter do
  it "has a version number" do
    expect(MagickFilter::VERSION).not_to be nil
  end

  
  # subject(:tool) { described_class.process }
  describe '#parse_if_image' do
    it 'returns true if valid image' do
      expect(MagickFilter::Tool.send :parse_if_image, "/home/arvind/workspace/output1111111111111.jpg").to eq true	
    end
  end

  
  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
end

# parse_if_image

# subject(:greeter) { described_class.new }
#   describe '#hello' do
#     let(:greeting) { "Hello gentle readers" }
#     it 'returns hello followed by argument string' do
#       expect(greeter.hello("gentle readers")).to eq greeting
#     end
#   end


#   class Greeter
#   def hello(message)
#     message = generate_message(string)
#     puts message
#   end
#   private
#   def generate_message(string)
#     "Hello " + string
#   end
# end