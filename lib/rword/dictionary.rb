module Rword
# Dictionary class
  class Dictionary
    	
    def self.make_dictionary
      f = File.new('ruby_dictionary.txt', 'w')

      f.print '{ '
      key_values = []
      i = 0
      IO.foreach('dictionary.txt') do |line|
        line.delete!("'")
        line.delete!('-')
        line.delete!(' ')
        start = line =~ /[a-z]/
        endf = line =~ /",/
        key_value = line[start..endf - 1]
        unless key_values.include?(key_value)
          key_values.push(key_value)
          word = ':' + key_value + ' => ' + i.to_s + ', '
          f.print word
          puts i
          i += 1
        end
      end

      f.print '}'

      f.close
    end

    def self.permutation_count(letters, count)
      result = 1
      (letters.length - count + 1).upto(letters.length) do |n|
        result *= n
      end
      result
    end

    def self.permute(letters, count, index, english_words_only = true)
      result = ''
      count.times do
        pos = index % letters.length
        result << letters[pos]
        index = (index - pos) / letters.length
        letters = letters[0, pos] << letters[(pos + 1), letters.length]
        # puts "index: #{index} pos: #{pos} letters: #{letters} result: #{result}"
      end
      if english_words_only
        # if in_dictionary?(result)
        #   return result
        # else
        #   return nil
        # end
        return in_dictionary?(result) ? result : nil
      end
      result
    end

    def self.in_dictionary?(word)
      @word_list.key?(word.to_sym)
    end
  end
end