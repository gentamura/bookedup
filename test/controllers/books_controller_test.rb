require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { book_day: @book.book_day, email: @book.email, end_time: @book.end_time, first_name: @book.first_name, last_name: @book.last_name, memo: @book.memo, start_time: @book.start_time, tel: @book.tel, user_id: @book.user_id } }
    end

    assert_redirected_to book_path(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { book_day: @book.book_day, email: @book.email, end_time: @book.end_time, first_name: @book.first_name, last_name: @book.last_name, memo: @book.memo, start_time: @book.start_time, tel: @book.tel, user_id: @book.user_id } }
    assert_redirected_to book_path(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_path
  end
end
