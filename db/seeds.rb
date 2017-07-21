# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sport.destroy_all
Country.destroy_all
Game.destroy_all

#Sports
soccer = Sport.create!(name: "Soccer")
baseball = Sport.create!(name: "Baseball")
basketball = Sport.create!(name: "Basketball")
football = Sport.create!(name: "Football")
tennis = Sport.create!(name: "Tennis")
fight = Sport.create!(name: "Fight")


#COUNTRY SEEDS
#-------------------------------------------------------------------------------

#countries_soccer

soccer_ag = Country.create!(name:"Argentina", sport: soccer, depor: "Soccer")
soccer_br = Country.create!(name:"Brasil", sport: soccer, depor: "Soccer")
soccer_en = Country.create!(name:"England", sport: soccer, depor: "Soccer")
soccer_fr = Country.create!(name:"France", sport: soccer, depor: "Soccer")
soccer_ge = Country.create!(name:"Germany", sport: soccer, depor: "Soccer")
soccer_it = Country.create!(name:"Italy", sport: soccer, depor: "Soccer")
soccer_mx = Country.create!(name:"Mexico", sport: soccer, depor: "Soccer")
soccer_pt = Country.create!(name:"Portugal", sport: soccer, depor: "Soccer")
soccer_es = Country.create!(name:"Spain", sport: soccer, depor: "Soccer")


#countries_baseball
baseball_usa = Country.create!(name:"USA", sport: baseball, depor: "Baseball")
baseball_mx = Country.create!(name:"Mexico", sport: baseball, depor: "Baseball")
baseball_car = Country.create!(name:"Caribe", sport: baseball, depor: "Baseball")

#countries_basketball

basketball_usa = Country.create!(name:"USA", sport: basketball, depor: "Basketball")
basketball_es = Country.create!(name:"Spain", sport: basketball, depor: "Basketball")
basketball_eu = Country.create!(name:"Europe League", sport: basketball, depor: "Basketball")

#countries_fight
fight_mma = Country.create!(name:"MMA", sport: fight, depor: "Fight")
fight_mma = Country.create!(name:"Box", sport: fight, depor: "Fight")

#countries_football
football_nfl = Country.create!(name: "NFL", sport: football, depor: "Football")
football_college = Country.create!(name: "College", sport: football, depor: "Football")

#countries_tennis
tennis_wimbledon_man = Country.create!(name:"Wimbledon Man", sport:tennis, depor:"Tennis")
tennis_wimbledon_wommen = Country.create!(name:"Wimbledon Women", sport:tennis, depor:"Tennis")

#-------------------------------------------------------------------------------
#GAMES SEEDS

#-------------------------------------------------------------------------------
#soccer_en


game_1 = Game.create!(country:soccer_en, local:"Arsenal", visit:"Leicester City", top:false, date_show: "Friday 19:45pm", pct_team: 1.9, pct_tie: 2.3, depor: "Premier League")
game_2 = Game.create!(country:soccer_en, local:"Watford", visit:"Liverpool", top:false, date_show: "Saturday 12:30pm", pct_team: 1.9, pct_tie: 2.3, depor: "Premier League")
game_3 = Game.create!(country:soccer_en, local:"Crystal Palace", visit:"Huddersfield Town FC", top:false, date_show: "Saturday 12:30pm", pct_team: 1.9, pct_tie: 2.3, depor: "Premier League")





