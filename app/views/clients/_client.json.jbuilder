json.extract! client, :id, :name, :namereg, :year, :form, :unp, :address, :city, :country, :addresspost, :citypost, :countrypost, :phone, :emailaddress, :site, :banksdet, :additional, :created_at, :updated_at
json.url client_url(client, format: :json)
