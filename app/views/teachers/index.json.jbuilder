json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :second_name, :third_name
  json.url teacher_url(teacher, format: :json)
end
