require 'tty-prompt'

schemas_to_choose_from = Dir["input/*.json"]

schema_to_fix = prompt.select("Which schema would you like to remove scopes from?", schemas_to_choose_from)

ts = JSON.parse(schema_to_fix)


ts["workbooks"].each do
  workbook["sheets"].each do
    sheet["applicable_scopes"] = []
  end
end

ts["fields"].each do
  field["applicable_scopes"] = []

  field["requirements"].each do
    req["applicable_scopes"] = []
  end

  field["field_values"].each do
    fv["applicable_scopes"] = []
  end
end

File.open("#{schema_to_fix.gsub(".json", "_scopes_removed.json")}", "w+") do |f|
  f << JSON.pretty_generate(ts)
end
