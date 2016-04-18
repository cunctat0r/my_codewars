# return the determinant of the matrix passed in
def determinant(matrix)
  return matrix[0][0] if matrix.length == 1
  if matrix.length == 2
    return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]
  else
    matrix[0].each_with_index.with_object([]) do |(elem, index), list|
      minor = (1..matrix.length-1).each_with_object([]) do |row_num, minor|
        minor << matrix[row_num].select.with_index{|x, ind| ind != index}
      end      
      list << elem * (-1)**index * determinant(minor)
    end.reduce(:+)
  end
end