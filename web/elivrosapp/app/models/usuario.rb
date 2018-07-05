class Usuario
  include Mongoid::Document

  field :nome, type: String
  field :sobrenome, type: String
  field :email, type: String
  field :senha, type: String
  field :telefone, type: String
  has_and_belongs_to_many :livros, inverse_of: nil, store_as: "livros_ler_mais_tarde"
  embeds_one :numero_telefone
end