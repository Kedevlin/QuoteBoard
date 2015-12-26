
people = [
  { name: "Audrey", bio: "Long thumbs", username: "audrey", password: "password" },
  { name: "Gregory", bio:"The nose knows", username: "gregory", password: "password" },
  { name: "Geena", bio: "Loves to do a cartwheel", username: "geena", password: "password" },
  { name: "Hattie", bio: "Cloudy days are the best", username: "hattie", password: "password" }
]

people.each do |seed|
  Person.create(seed)
end


quotes = [
  { body: "I never had a pet clam!", speaker_id: 1, poster_id: 2},
  { body: "Give me a brake", speaker_id: 2, poster_id: 3 },
  { body: "Put a little zazz in it!", speaker_id: 3, poster_id: 1},
  { body: "That'll be a hoot", speaker_id: 1, poster_id: 2 },
  { body: "But I hate graham crackers!", speaker_id: 2, poster_id: 1},
  { body: "If you even quote me right now...", speaker_id: 1, poster_id: 2}
]

quotes.each do |quote|
  Quote.create(quote)
end

comments = [
  { body: "Best.", commenter_id: 1, quote_id: 2},
  { body: "+1000", commenter_id: 1, quote_id: 3 },
  { body: "Noooo hahaha", commenter_id: 2, quote_id: 1},
  { body: "Heyyyy", commenter_id: 4, quote_id: 2 },
  { body: "Never. Again.", commenter_id: 5, quote_id: 3},
  { body: "Forevz", commenter_id: 2, quote_id: 4}
]

comments.each do |comment|
  Comment.create(comment)
end
