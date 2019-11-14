Player.destroy_all
Game.destroy_all
Matchup.destroy_all


master_organizer = Player.create({name: "Boss", username: "organizer", password: "pass"})
alex = Player.create({name: "Alexander Van Cappellen", username: "alex", password: "pass"})
joe = Player.create({name: "Joe Burks", username: "jobu234", password: "jobu"})
mubarak = Player.create({name: "Mubarak Kareem", username: "dripgod", password: "pass"})
bob = Player.create({name: "Bob The Builder", username: "bob", password: "pass"})
batman = Player.create({name: "Thomas Wayne", username: "batman", password: "pass"})
superman = Player.create({name: "Kal-El", username: "superman", password: "pass"})
spiderman = Player.create({name: "Peter Parker", username: "spiderman", password: "pass"})



game1 = Game.create({venue: "Sam Houston Park", game_type: "Baseball", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 25, max_player: 25})
game2 = Game.create({venue: "Sam Houston Park", game_type: "Baseball", date: "11/13/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 25})
game3 = Game.create({venue: "Sam Houston Park", game_type: "Baseball", date: "11/16/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 25})
game4 = Game.create({venue: "Sam Houston Park", game_type: "Baseball", date: "11/16/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 25})

game5 = Game.create({venue: "Sam Houston Park", game_type: "Football", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game6 = Game.create({venue: "Sam Houston Park", game_type: "Football", date: "11/13/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game7 = Game.create({venue: "Sam Houston Park", game_type: "Football", date: "11/16/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game8 = Game.create({venue: "Sam Houston Park", game_type: "Football", date: "11/16/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})

game9 = Game.create({venue: "Sam Houston Park", game_type: "Basketball", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game10 = Game.create({venue: "Sam Houston Park", game_type: "Basketball", date: "11/13/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game11 = Game.create({venue: "Sam Houston Park", game_type: "Basketball", date: "11/16/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game12 = Game.create({venue: "Sam Houston Park", game_type: "Basketball", date: "11/16/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})



game13 = Game.create({venue: "Discovery Green", game_type: "Basketball", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game14 = Game.create({venue: "Discovery Green", game_type: "Basketball", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game15 = Game.create({venue: "Discovery Green", game_type: "Basketball", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game16 = Game.create({venue: "Discovery Green", game_type: "Basketball", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})

game17 = Game.create({venue: "Discovery Green", game_type: "Soccer", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 22, max_player: 22})
game18 = Game.create({venue: "Discovery Green", game_type: "Soccer", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game19 = Game.create({venue: "Discovery Green", game_type: "Soccer", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game20 = Game.create({venue: "Discovery Green", game_type: "Soccer", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})

game21 = Game.create({venue: "Discovery Green", game_type: "Cricket", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game22 = Game.create({venue: "Discovery Green", game_type: "Cricket", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game23 = Game.create({venue: "Discovery Green", game_type: "Cricket", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game24 = Game.create({venue: "Discovery Green", game_type: "Cricket", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})



game25 = Game.create({venue: "Tranquility Park", game_type: "Basketball", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game26 = Game.create({venue: "Tranquility Park", game_type: "Basketball", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game27 = Game.create({venue: "Tranquility Park", game_type: "Basketball", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game28 = Game.create({venue: "Tranquility Park", game_type: "Basketball", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})

game29 = Game.create({venue: "Tranquility Park", game_type: "Soccer", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 22, max_player: 22})
game30 = Game.create({venue: "Tranquility Park", game_type: "Soccer", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game31 = Game.create({venue: "Tranquility Park", game_type: "Soccer", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game32 = Game.create({venue: "Tranquility Park", game_type: "Soccer", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})

game33 = Game.create({venue: "Tranquility Park", game_type: "Cricket", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game34 = Game.create({venue: "Tranquility Park", game_type: "Cricket", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game35 = Game.create({venue: "Tranquility Park", game_type: "Cricket", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game36 = Game.create({venue: "Tranquility Park", game_type: "Cricket", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})



game37 = Game.create({venue: "Sesquicentennial Park", game_type: "Basketball", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 10, max_player: 10})
game38 = Game.create({venue: "Sesquicentennial Park", game_type: "Basketball", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game39 = Game.create({venue: "Sesquicentennial Park", game_type: "Basketball", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})
game40 = Game.create({venue: "Sesquicentennial Park", game_type: "Basketball", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 10})

game41 = Game.create({venue: "Sesquicentennial Park", game_type: "Soccer", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game42 = Game.create({venue: "Sesquicentennial Park", game_type: "Soccer", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game43 = Game.create({venue: "Sesquicentennial Park", game_type: "Soccer", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})
game44 = Game.create({venue: "Sesquicentennial Park", game_type: "Soccer", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 22})

game45 = Game.create({venue: "Sesquicentennial Park", game_type: "Cricket", date: "11/13/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game46 = Game.create({venue: "Sesquicentennial Park", game_type: "Cricket", date: "11/14/2019", time: "04:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game47 = Game.create({venue: "Sesquicentennial Park", game_type: "Cricket", date: "11/14/2019", time: "06:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})
game48 = Game.create({venue: "Sesquicentennial Park", game_type: "Cricket", date: "11/15/2019", time: "12:00 pm", creator: master_organizer.id, joined_players: 1, max_player: 11})



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