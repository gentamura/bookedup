json.array!(@books) do |book|
  json.extract! book, :id, :book_day, :start_time, :end_time, :memo, :last_name, :first_name, :email, :tel, :user_id
  json.url book_url(book, format: :json)
end
