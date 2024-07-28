User.create!(
  name: 'haba-boy',
  age: 25,
  email: 'test@example.com'
)

Article.create!(
  user_id: 1,
  title: 'テストタイトル',
  content: 'テストコンテンツ',
  url: 'http://www.example.com'
)
