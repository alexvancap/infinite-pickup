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


Game.create({venue: "Sam Houston park", game_type: "baseball", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "baseball", date: "13-November", time: "04:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "baseball", date: "16-November", time: "06:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "baseball", date: "16-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Sam Houston park", game_type: "football", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "football", date: "13-November", time: "04:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "football", date: "16-November", time: "06:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "football", date: "16-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Sam Houston park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "basketball", date: "13-November", time: "04:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "basketball", date: "16-November", time: "06:00 pm", creator: master_organizer})
Game.create({venue: "Sam Houston park", game_type: "basketball", date: "16-November", time: "12:00 am", creator: master_organizer})



Game.create({venue: "Discovery Green", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Discovery Green", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Discovery Green", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Discovery Green", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer})



Game.create({venue: "Tranquility Park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Tranquility Park", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Tranquility Park", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Tranquility Park", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer})



Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "basketball", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "soccer", date: "15-November", time: "12:00 am", creator: master_organizer})

Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "13-November", time: "12:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "14-November", time: "04:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "14-November", time: "06:00 am", creator: master_organizer})
Game.create({venue: "Sesquicentennial Park", game_type: "cricket", date: "15-November", time: "12:00 am", creator: master_organizer})