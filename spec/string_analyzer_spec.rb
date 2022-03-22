class StringAnalyzer
    def has_vowels?(e)
        !!(e =~ /[aeio]+/i)

    end
end

describe StringAnalyzer do
    context " validate has_vowels function" do 

        it " should detect when a string contain vowels" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("new year")).to be true
    
         end

         it " should detect when a string has at least one vowels" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("new")).to be true
    
         end


         it " should detect when a string without vowels" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("mnklb")).to be false
    
         end

         it " should detect when a string has number, vowels, constatnt" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("abcde55345&??")).to be true
    
         end
           it " should detect when a string has namber and  punctuation character " do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("423432%%^&")).to be false
    
         end

         it " should detect when a string has upper case vowels" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("AEIOU")).to be true
    
         end
         it " should detect when a string has upper case and lower case vowels" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("AEIOUeio")).to be true
    
         end
         it " should detect when a string has upper case constant onle" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?("BCDFG")).to be false
    
         end
         it " should detect when a string empty" do
            h1 = StringAnalyzer.new()
            expect(h1.has_vowels?(" ")).to be false
    
         end
   
    

        end
end