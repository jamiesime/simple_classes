
class Library

  def initialize(library)
    @library = library
  end

  def list_books(library)
    for book in library
      puts book
    end
  end

  def book_info(book)
    return book
  end

  def book_rental(book)
    return book[:rental_details]
  end

  def add_book(library, title, student, date)
    book = {
      title: title,
      rental_details: {
        student_name: student,
        date: date
      }
    }
    library.push(book)
    return book
  end

  def change_rental(library, title, student, date)
    for book in library
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
        @newrental = book
        rental_found = true
      end
    end
    return @newrental if rental_found
    return "Not found"
  end

end
