def find_subdirectories(directory)
  # Inspect each file within the directory. Some of these "files" may actually be subdirectories.
  Dir.foreach(directory) do |filename|
    # If the current file is itself a subdirectory:
    if File.directory?("#{directory}/#{filename}") && filename != '.' && filename != '..'
      # Print out the full path name:
      puts "#{directory}/#{filename}"

      # Recursively call this function on the subdirectory:
      find_subdirectories("#{directory}/#{filename}")
    end
  end
end

find_subdirectories(ARGV[0])
