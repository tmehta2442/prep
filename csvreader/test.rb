class CsvReader
	def initialize
		@book_in_stock = []
	end

	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, Header: true) do |row|
			@book_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def total_value_in_stock
	end

	def number_of_each_isbn
	end

end

reader = CsvReader.new
reader.read_in_csv_data("file1.csv")
reader.read_in_csv_data("file2.csv")

puts "Total value in stock = #{reader.total_value_in_stock}"