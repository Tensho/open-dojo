ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: ':memory:',
                                        verbosity: 'quiet'

ActiveRecord::Base.connection.create_table :masters do |table|
  table.string :name
  table.integer :age
  table.integer :rank
end

ActiveRecord::Base.connection.create_table :apprentices do |table|
  table.string :name
  table.integer :age
  table.integer :rank
  table.references :master
end
