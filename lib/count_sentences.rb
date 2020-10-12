require 'pry'

class String

  def sentence?
    # Define this instance method to return true if the string you are calling it on ends in a period and false if it does not.
    #You will need to use the self keyword in the body of this method to refer to the string on which the method is being called. 
    #You can use the #end_with? method to determine what the final character in a string is.
    self.end_with?(".")
  
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split
    sentences = 0
    array.each do |evaluation|
     #binding.pry
      if evaluation.sentence? == true
        sentences = sentences += 1
      elsif evaluation.question? == true
        sentences = sentences += 1
      elsif evaluation.exclamation? == true
        sentences = sentences += 1
      end
    end
    return sentences
  end

end