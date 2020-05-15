require 'OOXL'
require 'pry'
require_relative 'solution'
include Solution

SHEET_NAME = 'Article Attributes Form'
FILE_PATH = 'template/CANSPASTA.xlsm'
REMOVE_THESE = ["AD","AW","AX","AY","AZ","BA","CN"]
workbook = OOXL.open("#{FILE_PATH}")
unassigned_attributes = workbook["#{SHEET_NAME}!A1:CV1"].flatten.zip(("A".."CV").to_a)
final_hash = {}

# Objectives: 
# 1) filter out the columns in the array REMOVE_THESE,
# 2) edit/correct the data_type_assignment function to return final_hash with the remaining attribute names as keys and their correct data type as values

# Data Type Definition Rules: 
#*Note that we only care about the text within the field name to make these decisions, we do not care about other features of the template*

# number - Only fields with a measurement unit that *does not* contain spaces defined in parentheses should be set as a "number" type (exception: UOM fields)
# accepted ex) Weight(Lb) or Width(FT) 
# no bueno ex) UOM(IN) or Weight Limit (Per Piece)

# enumerated - All fields with the keyword "UOM" or "Type" in their names should be "enumerated".
# accepted ex) "Capacity UOM"
# no bueno ex) "UL Approval"

# digital_asset - Any field with the word "Image" of "Photo" as the last word in the name should be a "digital_asset" type
# accepted ex) "Drugfacts Image" 
# no bueno ex) "Main Image with GS1 standard"

# boolean - Any attribute with '(Y/N)' in its name 

# string - Any field that does not meet any other criteria should be string

def data_type_assignment(unassigned_attributes,final_hash)
  unassigned_attributes.each do |set|
    field_name = set[1]
    column = set[2]
    return if REMOVE_THESE.include?(column)
    if field_name.squish.match?(/(Image|Photo)$/)
      final_hash[field_name] = "digital_asset"
    elsif field_name.match?(/\(\w+\)/)
      final_hash[field_name] = "number"
    elsif field_name.match?(/UOM$|Type /)
      final_hash[field_name] = "enumerated"
    elsif field_name.match?(/\(Y|N\)/)
      final_hash[field_name] = "boolean"
    else 
      final_hash[field_name] = "string"
    end 
  end 
  return final_hash
end 


def check_your_answer(unassigned_attributes,final_hash)
  your_answer = data_type_assignment(unassigned_attributes,final_hash)
  solution = HERE_IT_IS
  if solution == your_answer 
    puts 'Hooray u fixed it, tysm!'
  elsif your_answer.keys.any?{|key| ("A".."CV").to_a.include?(key)}
    puts "ogawd that\'s not a field value"
    puts "#{your_answer}"
  elsif your_answer.keys != solution.keys
    difference = solution.keys - your_answer.keys 
    if difference == solution 
      puts "so, looks like your answer doesnt have any of the keys we need ;_;"
    else your_answer.length > solution.length
      puts 'looks like your answer has fields we dont want!'
      puts "try removing the following fields #{difference}"
    elsif your_answer.length < solution.length
      puts 'looks like your answer doesnt have all the fields we want!'
      puts "try adding the following fields #{difference}"
    end 
  else
    (your_answer.keys & solution.keys).each do |k| 
      if your_answer[k] != solution[k]
        puts "the field #{k} should be type #{solution[k]}, but your version has type #{your_answer[k]}" 
      end 
    end 
  end 
end 

# uncomment the call to data_type_assignment for debugging!
# data_type_assignment(unassigned_attributes,final_hash) 
# uncomment the call to check_your_answer when u think you're good!
check_your_answer(unassigned_attributes,final_hash)

