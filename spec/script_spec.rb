require './script'

RSpec.describe "#first_n_primes" do
  context "one prime" do
    it "returns an array containing 2" do
      expect(first_n_primes(1)).to eq [2]
    end
  end

  context "three primes" do
    it "returns an array containing 2, 3, 5" do
      expect(first_n_primes(3)).to eq [2, 3, 5]
    end
  end

  context "ten primes" do
    it "returns an array containing 2, 3, 5, 7, 11, 13, 17, 19, 23, 29" do
      expect(first_n_primes(10)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end
