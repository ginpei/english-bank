# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
	[
		body: '*10 days* until I see you *at the shop*.',
		translation: '*あのお店で*お会いして以来*10日*が経ちました。',
		source: '',
		scene: '',
		description: ''
	],
	[
		body: 'I don\'t know when it happend but *their new CD has been on sale*.',
		translation: 'いつの間にか*新しいCDが発売されていた*。',
		source: '',
		scene: '',
		description: ''
	],
	[
		body: '*Surge* has been built from the ground up for *native web application publishing* and is committed to being the best way for *Front-End Developers* to *put HTML5 applications into production*.',
		translation: '*Surge*は*ネイティブウェブアプリケーションの公開*のために一から作成された、*フロントエンド開発者*が*HTML5アプリケーションを作成*するための最良の手段である。',
		source: 'https://medium.com/surge-sh/introducing-surge-the-cdn-for-front-end-developers-b4a50a61bcfc',
		scene: '自作アプリの紹介',
		description: ''
	]
].each do |attr|
	Phrase.create(attr)
end
