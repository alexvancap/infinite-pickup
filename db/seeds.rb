Player.destroy_all
Game.destroy_all
Matchup.destroy_all


master_organizer = Player.create({name: "Boss", username: "organizer", password: "pass"})
alex = Player.create({name: "Alexander Van Cappellen", username: "alex", password: "pass"})
joe = Player.create({name: "Joe Burks", username: "joe", password: "pass"})
mubarak = Player.create({name: "Mubarak Kareem", username: "Mubarak", password: "pass"})
bob = Player.create({name: "Bob The Builder", username: "bob", password: "pass"})
batman = Player.create({name: "Thomas Wayne", username: "batman", password: "pass"})
superman = Player.create({name: "Kal-El", username: "superman", password: "pass"})
spiderman = Player.create({name: "Peter Parker", username: "spiderman", password: "pass"})


game1 = Game.create({venue: "Sam Houston park", game_type: "baseball", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game2 = Game.create({venue: "Sam Houston park", game_type: "baseball", date: "13-November", time: "04:00 pm", creator: master_organizer.id})
game3 = Game.create({venue: "Sam Houston park", game_type: "baseball", date: "16-November", time: "06:00 pm", creator: master_organizer.id})
game4 = Game.create({venue: "Sam Houston park", game_type: "baseball", date: "16-November", time: "12:00 am", creator: master_organizer.id})

game5 = Game.create({venue: "Sam Houston park", game_type: "football", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game6 = Game.create({venue: "Sam Houston park", game_type: "football", date: "13-November", time: "04:00 pm", creator: master_organizer.id})
game7 = Game.create({venue: "Sam Houston park", game_type: "football", date: "16-November", time: "06:00 pm", creator: master_organizer.id})
game8 = Game.create({venue: "Sam Houston park", game_type: "football", date: "16-November", time: "12:00 am", creator: master_organizer.id})

game9 = Game.create({venue: "Sam Houston park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game10 = Game.create({venue: "Sam Houston park", game_type: "basketball", date: "13-November", time: "04:00 pm", creator: master_organizer.id})
game11 = Game.create({venue: "Sam Houston park", game_type: "basketball", date: "16-November", time: "06:00 pm", creator: master_organizer.id})
game12 = Game.create({venue: "Sam Houston park", game_type: "basketball", date: "16-November", time: "12:00 am", creator: master_organizer.id})



game13 = Game.create({venue: "Discovery Green", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game14 = Game.create({venue: "Discovery Green", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game15 = Game.create({venue: "Discovery Green", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game16 = Game.create({venue: "Discovery Green", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game17 = Game.create({venue: "Discovery Green", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game18 = Game.create({venue: "Discovery Green", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game19 = Game.create({venue: "Discovery Green", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game20 = Game.create({venue: "Discovery Green", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game21 = Game.create({venue: "Discovery Green", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game22 = Game.create({venue: "Discovery Green", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game23 = Game.create({venue: "Discovery Green", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game24 = Game.create({venue: "Discovery Green", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer.id})



game25 = Game.create({venue: "Tranquility Park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game26 = Game.create({venue: "Tranquility Park", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game27 = Game.create({venue: "Tranquility Park", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game28 = Game.create({venue: "Tranquility Park", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game29 = Game.create({venue: "Tranquility Park", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game30 = Game.create({venue: "Tranquility Park", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game31 = Game.create({venue: "Tranquility Park", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game32 = Game.create({venue: "Tranquility Park", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game33 = Game.create({venue: "Tranquility Park", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game34 = Game.create({venue: "Tranquility Park", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game35 = Game.create({venue: "Tranquility Park", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game36 = Game.create({venue: "Tranquility Park", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer.id})



game37 = Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game38 = Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game39 = Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game40 = Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game41 = Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game42 = Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game43 = Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game44 = Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer.id})

game45 = Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer.id})
game46 = Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer.id})
game47 = Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer.id})
game48 = Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer.id})


Matchup.create(game_id: game1.id, player_id: master_organizer.id)
Matchup.create(game_id: game2.id, player_id: master_organizer.id)
Matchup.create(game_id: game3.id, player_id: master_organizer.id)
Matchup.create(game_id: game4.id, player_id: master_organizer.id)
Matchup.create(game_id: game5.id, player_id: master_organizer.id)
Matchup.create(game_id: game6.id, player_id: master_organizer.id)
Matchup.create(game_id: game7.id, player_id: master_organizer.id)
Matchup.create(game_id: game8.id, player_id: master_organizer.id)
Matchup.create(game_id: game9.id, player_id: master_organizer.id)
Matchup.create(game_id: game10.id, player_id: master_organizer.id)

Matchup.create(game_id: game11.id, player_id: master_organizer.id)
Matchup.create(game_id: game12.id, player_id: master_organizer.id)
Matchup.create(game_id: game13.id, player_id: master_organizer.id)
Matchup.create(game_id: game14.id, player_id: master_organizer.id)
Matchup.create(game_id: game15.id, player_id: master_organizer.id)
Matchup.create(game_id: game16.id, player_id: master_organizer.id)
Matchup.create(game_id: game17.id, player_id: master_organizer.id)
Matchup.create(game_id: game18.id, player_id: master_organizer.id)
Matchup.create(game_id: game19.id, player_id: master_organizer.id)
Matchup.create(game_id: game20.id, player_id: master_organizer.id)

Matchup.create(game_id: game21.id, player_id: master_organizer.id)
Matchup.create(game_id: game22.id, player_id: master_organizer.id)
Matchup.create(game_id: game23.id, player_id: master_organizer.id)
Matchup.create(game_id: game24.id, player_id: master_organizer.id)
Matchup.create(game_id: game25.id, player_id: master_organizer.id)
Matchup.create(game_id: game26.id, player_id: master_organizer.id)
Matchup.create(game_id: game27.id, player_id: master_organizer.id)
Matchup.create(game_id: game28.id, player_id: master_organizer.id)
Matchup.create(game_id: game29.id, player_id: master_organizer.id)
Matchup.create(game_id: game30.id, player_id: master_organizer.id)

Matchup.create(game_id: game31.id, player_id: master_organizer.id)
Matchup.create(game_id: game32.id, player_id: master_organizer.id)
Matchup.create(game_id: game33.id, player_id: master_organizer.id)
Matchup.create(game_id: game34.id, player_id: master_organizer.id)
Matchup.create(game_id: game35.id, player_id: master_organizer.id)
Matchup.create(game_id: game36.id, player_id: master_organizer.id)
Matchup.create(game_id: game37.id, player_id: master_organizer.id)
Matchup.create(game_id: game38.id, player_id: master_organizer.id)
Matchup.create(game_id: game39.id, player_id: master_organizer.id)
Matchup.create(game_id: game40.id, player_id: master_organizer.id)

Matchup.create(game_id: game41.id, player_id: master_organizer.id)
Matchup.create(game_id: game42.id, player_id: master_organizer.id)
Matchup.create(game_id: game43.id, player_id: master_organizer.id)
Matchup.create(game_id: game44.id, player_id: master_organizer.id)
Matchup.create(game_id: game45.id, player_id: master_organizer.id)
Matchup.create(game_id: game46.id, player_id: master_organizer.id)
Matchup.create(game_id: game47.id, player_id: master_organizer.id)
Matchup.create(game_id: game48.id, player_id: master_organizer.id)
