json.array!(@companies) do |company|
  json.extract! company, :id, :companyName, :jobTitle, :jobDescription, :contactPerson, :mobileNo, :email, :nationality, :gender, :age, :disability, :education
  json.url company_url(company, format: :json)
end
