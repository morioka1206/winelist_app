class Country < ActiveHash::Base
  self.data = [
    { id: 1,  name: 'ーー', name_kana: 'ーー'},
    { id: 2,  name: 'France', name_kana: 'フランス'},
    { id: 3,  name: 'Italy', name_kana: 'イタリア'},
    { id: 4,  name: 'German', name_kana: 'ドイツ'},
    { id: 5,  name: 'Spain', name_kana: 'スペイン'},
    { id: 6,  name: 'Portugal', name_kana: 'ポルトガル'},
    { id: 7,  name: 'New Zealand', name_kana: 'ニュージーランド'},
    { id: 8,  name: 'Australia', name_kana: 'オーストラリア'},
    { id: 9,  name: 'Chile', name_kana: 'チリ'},
    { id: 10,  name: 'Argentina', name_kana: 'アルゼンチン'},
    { id: 11,  name: 'Japan', name_kana: '日本'}

  ]
end