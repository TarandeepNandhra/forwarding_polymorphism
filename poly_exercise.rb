class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def scramble(action, steps)
    # action will be a scramble or unscramble instance
    @contents = action.scramble(@contents, steps)
  end

  def reverse(action)
    @contents = action.reverse(@contents)
  end

  def read
    @contents
  end
end

class Scramble
  def scramble(contents, steps)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    scrambled_chars.join
  end

  def reverse(contents)
    contents.reverse
  end
end

class Unscramble
  def scramble(contents, steps)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord - steps).chr
    end
    scrambled_chars.join
  end

  def reverse(contents)
    contents.reverse
  end
end