RSpec.configure do |config|
  config.before :each do
    ActiveRecord::Base.connection.tap do |connection|
      %w(masters apprentices).each { |table| connection.execute("DELETE FROM #{table}") }
    end
  end
end
