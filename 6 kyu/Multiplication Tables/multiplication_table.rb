def multiplication_table(rows, columns)
  (1..rows).to_a.each_with_object([]) do |row, table|
    table << (1..columns).to_a.map { |x| x * row }
  end
end