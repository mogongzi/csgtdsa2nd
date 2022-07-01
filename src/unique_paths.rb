@memo = {}

def unique_paths(row, column)
  return 1 if row == 1 || column == 1

  if @memo[[row, column]].nil?
    @memo[[row, column]] = unique_paths(row - 1, column) + unique_paths(row, column - 1)
  end

  @memo[[row, column]]
end

result = unique_paths(ARGV[0].to_i, ARGV[1].to_i)
puts "paths: #{result}"
