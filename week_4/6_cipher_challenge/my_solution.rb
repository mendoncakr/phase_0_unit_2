# U2.W4: Cipher Challenge


# I worked on this challenge with Armen Vartan



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes
            "g" => "c",   # Another decoding could be done would be to use an array and return the element 4 indices prior to the coded element
            "h" => "d",   # i.e. ["a", "b", "c","d",....."z"]
            "i" => "e",     # if the coded letter was b in index 1
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}            
  input.each do |x| # iterating through the array containing the individual characters that are to be decoded and which have also been split
    found_match = false  # Not really sure why this is false
    cipher.each_key do |y| # the each_key method is iterating through the keys of the hash. i.e. the coded letters
      if x == y  # This is comparing the coded letter to the key of the hash which needs to be decoded.  It is getting X from coded message and the Y from the keys of the hash? 
        # What are those variables really?
        #puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] #adding the deciphered value when it finds the key in the coded message
        found_match = true  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x == "*" #Searching for the symbols (@,#,$,%,^, &, *) and returning a space when found.
        decoded_sentence << " " #pushing a space to array with decoded sentence when special characters are found.
        found_match = true
        break
      end
    end
    if not found_match #This is looking for characters that are not in the cipher hash when iterating through the input  or on line 51 and appending them. In this case the "!" 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") #joining the decoded message together since they are split 
 
  if decoded_sentence.match(/\d+/) #This line of code is a regular expression searching for any digit that has one or more occurrences of the one-character regular expression
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #If any digit is found it is converted to an integer and then divided by 100
  end  
  return decoded_sentence # This is returning the decoded setence from line 61 that has bene joined by         
end


# Your Refactored Solution
# Removed lines 56-59 as it's redundant. It searched for the digit and then returned the same digit and didnt affect code
# We considered using an array, instead of hash, but due to time constraint we decided not to try it.
# We suggested using 2 arrays. One for the alphabet and one for the coded letters. When the coded letters are found it 
# would search the regular alphabet 4 indices previous and return the value.
# Deleted the break on line 51. The break doesn't seem to be doing anything.


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") =="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") =="can somebody just get me 100 bags of cool ranch doritos?"


# Reflection
# I felt 10x more productive working with Armen on this. We really helped each other out. We both helped each other fill in the gaps of our knowledge.
# Some issues I had trouble understanding were the purposes of the "IF NOT FOUND_MATCH" condition on line 57. I had intended to go to office hours
# and figure it out, but missed my opportunity. At first glance, this challenge was a little intimidating because of the sheet amount of code. Although, Armen
# and I did a great job working together to decipher the cipher.
# 

