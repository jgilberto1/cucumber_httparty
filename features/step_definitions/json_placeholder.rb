require 'cucumber'
require 'httparty'
require 'rspec'


Dado('que eu acesse a api json_placeholder') do
    @url = "https://jsonplaceholder.typicode.com/posts"
end
  
Quando('inserir as informações válidas') do
    @post = HTTParty.post(@url,
                         :body => {"userId": 1, "id": 101, "title": "teste brk title", "body": "teste brk body"})
end
  
Então('receberei sucesso como retorno e as informações inseridas') do
    puts @post.code
    puts @post.body
    expect(@post.code).to eq 201
end

Quando('buscar as informações válidas') do
    @get = HTTParty.get(@url + "/81")
end
  
Então('receberei sucesso como retorno informações solicitadas') do
    puts @get.code
    puts @get.body
    expect(@get.code).to eq 200
end