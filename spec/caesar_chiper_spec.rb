require './lib/caesar_cipher'

describe "#caesar_cipher" do
    it "shifts letters in the string by the given factor" do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
  
    it "wraps from z to a" do
      expect(caesar_cipher("xyz", 3)).to eq("abc")
    end
  
    it "preserves the case of letters" do
      expect(caesar_cipher("AbCdEf", 1)).to eq("BcDeFg")
    end
  
    it "leaves non-alphabetic characters unchanged" do
      expect(caesar_cipher("Hello, World!", 7)).to eq("Olssv, Tlsva!")
    end
  
    it "handles negative shifts" do
      expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq("What a string!")
    end
  
    it "handles shifts greater than 26" do
      expect(caesar_cipher("What a string!", 30)).to eq("Bmfy f xywnsl!")
    end
  end