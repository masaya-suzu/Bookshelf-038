class Medium < ActiveHash::Base
  self.data = [
    {id: 1, medium: '--' },
    {id: 2, medium: '紙'},
    {id: 3, medium: '電子'}
  ]

  include ActiveHash::Associations
  has_many :books

end
