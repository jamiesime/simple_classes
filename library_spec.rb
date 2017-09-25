require("minitest/autorun")
require("minitest/rg")
require_relative("./library.rb")

class TestLibrary < MiniTest::Test


def setup
  @info = [
      {
        title: "wuthering_heights",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "martin_eden",
        rental_details: {
          student_name: "Robert",
          date: "01/12/16"
        }
      },
      {
        title: "ulysses",
        rental_details: {
          student_name: "Naomi",
          date: "01/12/16"
        }
      },
      {
        title: "garfield",
        rental_details: {
          student_name: "Sally",
          date: "01/12/16"
        }
      },
      ]

      @library = Library.new(@info)
end

  def test_list_books()
    assert_equal(@info, @library.list_books(@info))
  end

  def test_book_info()
    book = @library.book_info(@info[2])
    assert_equal(@info[2], book)
  end

  def test_book_rental()
    book = @library.book_rental(@info[3])
    assert_equal(@info[3][:rental_details], book)
  end

  def test_add_book()
    book = @library.add_book(@info, "Johnny", "", "")
    assert_equal(@info[4], book)
  end

  def test_change_rental()
    new_details = @library.change_rental(@info, "wuthering_heights", "Michelle", "20/10/17")
    assert_equal(@info[0], new_details)

  end

  def test_change_rental__notfound()
    new_details = @library.change_rental(@info, "heart_of_darkness", "Roland", "25/11/17")
    assert_equal("Not found", new_details)
  end

end
