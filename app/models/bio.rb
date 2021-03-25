class Bio < ActiveHash::Base
  self.data = [
    {id:1, name: 'ーー'},
    { id: 2,  name: 'ビオロジック'},
    { id: 3,  name: 'ビオディナミ'},
    { id: 4,  name: '減農薬栽培'},
    { id: 5,  name: '不明だが自然派'}
  ]
end