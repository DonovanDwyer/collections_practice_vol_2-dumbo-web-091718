def begins_with_r(array)
  starts_with_r = true
  array.each do |word|
    if !word.start_with?("r")
      starts_with_r = false
    end
  end
  starts_with_r
end

def contain_a(array)
  container = []
  array.each do |word|
    if word.include? "a"
      container << word
    end
  end
  container
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with? "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  arr = []
  array.each do |word|
    if word == word.to_s
      arr << word
    end
  end
  arr
end

def count_elements(hash_array)
  array = []
  new_hash = {}
  hash_array.each do |hash|
    hash.each do |key, value|
      if new_hash.has_value?(value)
        new_hash[:count] += 1
      else
        new_hash = {:count => 1, key => value}
        array << new_hash
      end
    end
  end
  array
end


def merge_data(keys, data)
  array1 = []
  array2 = []
  keys.each do |key_hash|
    key_hash.each do |first_name, name_value|
      temp_hash = {}
      temp_hash[first_name] = name_value
      array1 << temp_hash
    end
  end
  data.each do |data_hash|
    data_hash.each do |name, info|
      new_hash = {}
      info.each do |key, value|
        new_hash[key] = value
      end
      array2 << new_hash
    end
  end
  count = 0
  array3 = []
  array1.map do |x|
    array3 << x.merge(array2[count])
    count += 1
  end
  return array3
end

def find_cool(cool)
  coolness_detected = []
  cool.each do |hash|
    coolness_detected << hash if hash[:temperature] === "cool"
  end
  return coolness_detected
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, loc_hash|
    loc_hash.each do |loc_sym, location|
      if new_hash.key?(location)
        new_hash[location] << school
      else
        new_hash[location] = [school]
      end
    end
  end
  return new_hash
end