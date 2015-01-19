# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(count)
    verse = <<-VERSE
#{verse_1(count)}
#{verse_2(count)}
VERSE


  end

private

  def pluralize(word, count)
    "#{count_or_no_more(count)} #{count == 1 ? word : word + 's'}"
  end

  def one_or_it(count)
    count == 1 ? 'it' : 'one'
  end

  def count_or_no_more(count)
    count == 0 ? 'no more' : count
  end

  def verse_1(count)
    "#{pluralize('bottle', count)} of beer on the wall, #{pluralize('bottle', count)} of beer."
  end

  def verse_2(count)
    if count == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{one_or_it(count)} down and pass it around, #{pluralize('bottle', count-1)} of beer on the wall."
    end
  end
end
