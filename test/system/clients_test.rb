require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "should create client" do
    visit clients_url
    click_on "New client"

    fill_in "Additional", with: @client.additional
    fill_in "Address", with: @client.address
    fill_in "Addresspost", with: @client.addresspost
    fill_in "Banksdet", with: @client.banksdet
    fill_in "City", with: @client.city
    fill_in "Citypost", with: @client.citypost
    fill_in "Country", with: @client.country
    fill_in "Countrypost", with: @client.countrypost
    fill_in "Emailaddress", with: @client.emailaddress
    fill_in "Form", with: @client.form
    fill_in "Name", with: @client.name
    fill_in "Namereg", with: @client.namereg
    fill_in "Phone", with: @client.phone
    fill_in "Site", with: @client.site
    fill_in "Unp", with: @client.unp
    fill_in "Year", with: @client.year
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "should update Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "Additional", with: @client.additional
    fill_in "Address", with: @client.address
    fill_in "Addresspost", with: @client.addresspost
    fill_in "Banksdet", with: @client.banksdet
    fill_in "City", with: @client.city
    fill_in "Citypost", with: @client.citypost
    fill_in "Country", with: @client.country
    fill_in "Countrypost", with: @client.countrypost
    fill_in "Emailaddress", with: @client.emailaddress
    fill_in "Form", with: @client.form
    fill_in "Name", with: @client.name
    fill_in "Namereg", with: @client.namereg
    fill_in "Phone", with: @client.phone
    fill_in "Site", with: @client.site
    fill_in "Unp", with: @client.unp
    fill_in "Year", with: @client.year
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "should destroy Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
