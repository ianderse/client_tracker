require 'spec_helper'

describe "Viewing the list of movies" do
	before do
		@client1 = Client.create(first_name: "Iron",
                      last_name: "Man",
                      email: "example@example.com",
                      phone_number: "123-123-1234",
                      age: 44,
                      gender: "male")
  	@client2 = Client.create(first_name: "Bill",
                      last_name: "Bradly",
                      email: "example2@example.com",
                      phone_number: "123-124-1234",
                      age: 32,
                      gender: "male")
	end
  it "shows the clients" do

	  visit clients_url

	  expect(page).to have_text("Iron Man")
	  expect(page).to have_text("example@example.com")
	end

	it "shows the individual client" do
		visit client_url(@client1)

		expect(page).to have_text("123-123-1234")
	end

	it "can visit client edit page" do
		visit client_url(@client1)

		click_link 'Edit'

		expect(page).to have_text("Edit Client")
	end

	it "can edit a client" do
		visit edit_client_url(@client1)

		fill_in 'First name', with: "Updated First name"

    click_button 'Update Client'

    expect(current_path).to eq(client_path(@client1))

    expect(page).to have_text('Updated First name')
	end

end
