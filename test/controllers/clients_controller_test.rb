require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference("Client.count") do
      post clients_url, params: { client: { additional: @client.additional, address: @client.address, addresspost: @client.addresspost, banksdet: @client.banksdet, city: @client.city, citypost: @client.citypost, country: @client.country, countrypost: @client.countrypost, emailaddress: @client.emailaddress, form: @client.form, name: @client.name, namereg: @client.namereg, phone: @client.phone, site: @client.site, unp: @client.unp, year: @client.year } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { additional: @client.additional, address: @client.address, addresspost: @client.addresspost, banksdet: @client.banksdet, city: @client.city, citypost: @client.citypost, country: @client.country, countrypost: @client.countrypost, emailaddress: @client.emailaddress, form: @client.form, name: @client.name, namereg: @client.namereg, phone: @client.phone, site: @client.site, unp: @client.unp, year: @client.year } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference("Client.count", -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
