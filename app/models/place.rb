class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '札幌市豊平区' }, { id: 3, name: '札幌市中央区' },
    { id: 4, name: '札幌市西区' }, { id: 5, name: '札幌市北区' }, { id: 6, name: '札幌市東区' },
    { id: 7, name: '札幌市白石区' }, { id: 8, name: '札幌市厚別区' }, { id: 9, name: '札幌市清田区' },
    { id: 10, name: '札幌市清田区' }, { id: 11, name: '恵庭市' }, { id: 12, name: '江別市' }
  ]
  include ActiveHash::Associations

  has_many :buildings
end
