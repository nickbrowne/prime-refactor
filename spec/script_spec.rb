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

  context "n is not an integer" do
    it "returns a string with an error message" do
      expect(first_n_primes("bean sprout")).to eq "n must be an integer."
    end
  end

  context "n less than 1" do
    it "returns a string with an error message" do
      expect(first_n_primes(0)).to eq "n must be greater than 0."
    end
  end
end
