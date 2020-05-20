require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'spaced_out_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookings, users;")
end