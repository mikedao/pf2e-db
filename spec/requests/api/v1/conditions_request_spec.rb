require 'rails_helper'

RSpec.describe 'conditions API' do
  it 'sends a list of conditions' do
    create_list(:condition, 3)
  
    get '/api/v1/conditions'

    expect(response).to be_successful

    conditions = JSON.parse(response.body, symbolize_names: true)

    expect(conditions[:data].count).to eq(3)
    
    conditions[:data].each do |condition|
      expect(condition).to have_key(:id)
      expect(condition[:id].to_i).to be_an(Integer)

      expect(condition[:attributes]).to have_key(:name)
      expect(condition[:attributes][:name]).to be_a(String)

      expect(condition[:attributes]).to have_key(:description)
      expect(condition[:attributes][:description]).to be_a(String)

      expect(condition[:attributes]).to have_key(:source)
      expect(condition[:attributes][:source]).to be_a(String)
    end
  end

  it 'can show a single condition' do
    id = create(:condition).id

    get "/api/v1/conditions/#{id}"
  
    condition = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  
    expect(condition[:data]).to have_key(:id)
    expect(condition[:data][:id].to_i).to eq(id)
  
    expect(condition[:data][:attributes]).to have_key(:name)
    expect(condition[:data][:attributes][:name]).to be_a(String)
  
    expect(condition[:data][:attributes]).to have_key(:description)
    expect(condition[:data][:attributes][:description]).to be_a(String)

    expect(condition[:data][:attributes]).to have_key(:source)
    expect(condition[:data][:attributes][:source]).to be_a(String)
  end
end