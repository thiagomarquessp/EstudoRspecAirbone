require 'airborne'

describe 'Get Marotis' do
  it 'Get nosso de cada dia retornando valores exatos' do
    get 'http://jsonplaceholder.typicode.com/posts/100'
    puts response
    expect_json(userId: 10,
                id: 100,
                title: "at nam consequatur ea labore ea harum",
                body: "cupiditate quo est a modi nesciunt soluta\nipsa voluptas error itaque dicta in\nautem qui minus magnam et distinctio eum\naccusamus ratione error aut"
               )
    if expect_status(200)
       puts "Deu certo"
       else
       puts "Deu errado"
    end
  end

  it 'Get nosso de cada dia retornando os tipos exatos de cada campo' do
    get 'http://jsonplaceholder.typicode.com/comments/100'
    puts response
    expect_json_types(postId: :int,
                      id: :int,
                      name: :string,
                      email: :string,
                      body: :string
                     )
    if expect_status(200)
       puts "Deu certo"
       else
       puts "Deu errado"
    end
  end
end
