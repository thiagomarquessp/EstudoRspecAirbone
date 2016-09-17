describe 'Get Marotis' do
  it 'Post Exemple' do
    createbody = {
      :title => Faker::Name.title,
      :body => Faker::Lorem.paragraph(1),
      :id => Faker::Base.numerify('###')
    }.to_json
    headers = {
      'Content-Type' => 'application/json'
    }
      post 'http://jsonplaceholder.typicode.com/posts', createbody, headers
      puts response
      puts expect_status(201)
  end
end
