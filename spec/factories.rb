FactoryGirl.define  do
	factory :user do
		sequence(:username) { |n| "Person #{n}" }
		sequence(:email) 	{ |n| "person_#{n}@example.com" }
		password			"password"
		password_confirmation "password"

	end

	factory :map do
		name "Lorem ipsum"
		user
	end
end