require 'airborne'

describe 'Get Marotis' do
  it 'Get nosso de cada dia' do
    get 'http://jsonplaceholder.typicode.com/posts/1' #json api that returns { "name" : "John Doe" }
    expect_json_types(title: :string)
  end
end
