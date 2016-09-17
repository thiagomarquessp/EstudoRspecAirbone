describe 'Get Marotis' do
  it 'Get nosso de cada dia' do
    get 'http://jsonplaceholder.typicode.com/posts/1' #json api that returns { "name" : "John Doe" }
    expect_json_types(title: :string)
  end

  it 'Post Exemple' do
    createbody = {
      :title => Faker::Name.title,
      :body => Faker::Lorem.paragraph(1),
      :id => Faker::Base.numerify('###')
    }.to_json

    headers = {
      'Content-Type' => 'application/json'
    }
      @post = post 'http://jsonplaceholder.typicode.com/posts', createbody, headers
      expect_status(201)
  end
end
