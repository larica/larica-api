require 'rails_helper'

describe Larica::V1::Categories do
  describe "GET /v1/categories" do
    before(:each) do
      #   Login User/Token
    end
    it 'should return a status code 200 and empty data' do
      get "/v1/categories"
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)).to eq([])
    end

    it 'should return a status code 200 and one category' do
      category = Fabricate(:category)
      get "/v1/categories"
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)).to eq([YAML.load(category.to_json)])
    end

    it 'should return a status code 200 and the correct count' do
      Fabricate.times(6,:category)
      get "/v1/categories"

      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      expect(body.length).to eq(6)
    end
  end

  describe "GET /v1/categories/{id}" do
    before(:each) do
      #   Login User/Token
    end
    it 'retrieves a specific category' do
      category = Fabricate(:category)
      get "/v1/categories/#{category.id}"

      expect(response.status).to eq 200

      body = JSON.parse(response.body)

      expect(body["name"]).to eq(category.name)
    end
  end

  describe "POST /v1/categories" do
    before(:each) do
      #   Login User/Token
    end
    it "creates a category" do
      category_params = {
          "category" => {
              "name" => "Brazilian Food"
          }
      }.to_json

      request_headers = {
          "Accept" => "application/json",
          "Content-Type" => "application/json"
      }

      post "/v1/categories", category_params, request_headers

      expect(response.status).to eq 201
      expect(Category.first.name).to eq "Brazilian Food"
    end
  end

  describe "PUT /v1/categories/{id}" do
    before(:each) do
      #   Login User/Token
    end
    it 'updates a category' do
      category = Fabricate(:category)

      category_params = {
          "category" => {
              "id" => category.id,
              "name" => "Brazilian Food Test"
          }
      }.to_json

      request_headers = {
          "Accept" => "application/json",
          "Content-Type" => "application/json"
      }

      put "/v1/categories/#{category.id}", category_params, request_headers

      expect(response.status).to eq 200
      expect(Category.find(category.id).name).to eq "Brazilian Food Test"
    end
  end

  describe "DELETE /v1/categories/{id}" do
    before(:each) do
      #   Login User/Token
    end
    it 'deletes a category' do
      category = Fabricate(:category)
      category2 = Fabricate(:category)

      get "/v1/categories"
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)).to eq([YAML.load(category.to_json),YAML.load(category2.to_json),])

      delete "/v1/categories/#{category.id}"
      expect(response.status).to eq 200

      get "/v1/categories"
      expect(JSON.parse(response.body)).to eq([YAML.load(category2.to_json)])
    end
  end
end
