# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a User first
# Sport League
sport = [
	['NFL', 1],
	['NBA', 1]
]

sport.each do |sport, id|
	Sport.create(league: sport, user_id: id)
end

# NFL teams
nfl_teams = [
	["Arizona Cardinals", 1],
	["Chicago Bears", 1],
	["Green Bay Packers", 1],
	["New York Giants", 1],
	["Detroit Lions", 1],
	["Washington Redskins", 1],
	["Philadelphia Eagles", 1],
	["Pittsburgh Steelers", 1],
	["Los Angeles Rams", 1],
	["San Francisco 49ers", 1],
	["Cleveland Browns", 1],
	["Indianapolis Colts", 1],
	["Dallas Cowboys", 1],
	["Kansas City Chiefs", 1],
	["Los Angeles Chargers", 1],
	["Denver Broncos", 1],
	["New York Jets", 1],
	["New England Patriots", 1],
	["Oakland Raiders", 1],
	["Tennessee Titans", 1],
	["Buffalo Bills", 1],
	["Minnesota Vikings", 1],
	["Atlanta Falcons", 1],
	["Miami Dolphins", 1],
	["New Orleans Saints", 1],
	["Cincinnati Bengals", 1],
	["Seattle Seahawks", 1],
	["Tampa Bay Buccaneers", 1],
	["Carolina Panthers", 1],
	["Jacksonville Jaguars", 1],
	["Baltimore Ravens", 1],
	["Houston Texans", 1]
]

nfl_teams.each do |name, id|
	Team.create(name: name, sport_id: id)
end