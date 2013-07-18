# require 'spec_helper'

describe User do
	before(:each) do
		password = "123"
		email: "joe@chicago.com"
		
	# it "encrypts a password" do
	# 	password = "123"

		user = User.create(
			email: "joe@chicago.com",
			password: "password",
			password_confirmation: password
			)

		expect(user.salt).not_to be_nil

		fish = BCrypt::Engine.hash_secret(password, user.salt)

		expect(user.fish).not_to eq(fish)
	end

	it "authenticates a user" do
			password = "123"
			email = "joe@chicago.com"

		user = User.create(
			email: "joe@chicago.com",
			password: "password",
			password_confirmation: password
			)

		authuser = User.authenticate(email, password)
		unauthuser = User.authenticate(email, "")

		expect(authuser).to eq(user)
		expect(unauthuser).to be_nil
	end
end
