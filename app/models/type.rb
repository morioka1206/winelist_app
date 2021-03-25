class Type < ActiveHash::Base
  self.data = [
    {id:1, name: 'ーー'},
    { id: 2,  name: 'スパークリング'},
    { id: 3,  name: '赤ワイン'},
    { id: 4,  name: '白ワイン'},
    { id: 5,  name: 'オレンジ'}
  ]
end