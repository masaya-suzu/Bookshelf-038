class Medium < ActiveHash::Base
  self.data = [
    {id: 1, prefecture: '--' },
    {id: 2, prefecture: '紙'},
    {id: 3, prefecture: '電子'}
  ]

  include ActiveHash::Associations
  has_many :books

end
