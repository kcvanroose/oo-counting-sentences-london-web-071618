require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array_of_words = self.split(/\?|\.|!/)
    array_of_words.delete_if{|e| e.length == 0}.count
  end
  
end