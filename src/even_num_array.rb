def even_num_array(nums, index = 0)
  return nums if index >= nums.size

  if nums[index].odd?
    nums.delete(nums[index])
  else
    index += 1
  end
  even_num_array(nums, index)
end

array = [2, 4, 6, 8, 11, 12]
puts even_num_array(array)
