class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  @@all = []
  GENRES = []
  def initialize(title)
    @title = title
    Book.all << self
  end

  def self.all
    @@all
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES << genre
  end

end