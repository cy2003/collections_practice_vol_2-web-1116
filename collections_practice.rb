def begins_with_r(array)
  if array.all? {|word| word.start_with?("r")}
    return true
  else
    return false
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array << word
    end
  end
  new_array
end

def first_wa(array)
  array.each do |word|
    if word.class == Symbol || !word.start_with?("wa")
      next
    else word.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select {|word| word.is_a? String}
end

def count_elements(array)
  new_array = []
  array.uniq.select do |hash|
    hash[:count] = array.count(hash)
    new_array << hash
  end
  new_array
end

def merge_data(keys, data)
  array = []
  i = 0
  data.each do |hash|
    hash.each do |name, info|
      array << info.merge(keys[i])
      i += 1
    end
  end
  array
end

def find_cool(array)
  new_array =[]
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash ={}
  schools.each do |school, location|
    location.each do |key, city|
      if new_hash.has_key?(city)
        new_hash[city] << school
      else new_hash[city] = [school]
      end
    end
  end
  new_hash
end
