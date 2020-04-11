class Bottles
  def verse(n)
    case n
    when 2
      verse_2()
    when 1
      verse_1()
    when 0
      verse_0()
    else
      verse_n(n)
    end
  end

  def verses(start, finish)
    (finish..start)
      .to_a
      .reverse
      .map { |n| verse(n) }
      .join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def verse_n(n)
    <<~VERSE
      #{n} bottles of beer on the wall, #{n} bottles of beer.
      Take one down and pass it around, #{n-1} bottles of beer on the wall.
    VERSE
  end

  def verse_2
    <<~VERSE
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
  end

  def verse_1
    <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
  end

  def verse_0
    <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
  end

end