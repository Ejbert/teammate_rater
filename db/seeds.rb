# Deletes everything from the database to start fresh
puts "Deleting all records from the database"
User.delete_all
Course.delete_all
Team.delete_all
Team_Member.delete_all
Review.delete_all

# Create the users
puts "Creating users..."
eric = User.create(username: "ejbert", first_name: "Eric", last_name:"Bertelsen", email:"eric.bertelsen@gmail.com", password:"****")
sam = User.create(username: "ssmith", first_name: "Sam", last_name:"Smith", email:"ssmith@hotmail.com", password:"****")
dave = User.create(username: "dweinman", first_name: "Dave", last_name:"Weinman", email:"dweinman2016@kellogg.northwestern.edu", password:"****")
claudia = User.create(username: "claud", first_name: "Claudia", last_name:"Jones", email:"cjones@yahoo.com", password:"****")
tony = User.create(username: "tttony", first_name: "Tony", last_name: "Jefferson", email:"tjeff@me.com", password:"****")


#Create the courses
puts "Creating courses..."
mors430 = Course.create(name: "MORS 430 - Leadership in Organizations", description: "Pre-term class on how to be a leader", section: 61, quarter: "Fall", year: 2014)
opns430 = Course.create(name: "OPNS 430 - Operations Management", description: "The important stuff", section: 62, quarter: "Fall", year: 2014)
kiei925 = Course.create(name: "KIEI 925 - Startup Programming and Management", description: "The best class at Kellogg", section: 62, quarter: "Winter", year: 2015)
mgmt431 = Course.create(name: "MGMT 431 - Business Strategy", description: "Competition and market dynamics", section: 64, quarter: "Fall", year: 2014)
mktg430 = Course.create(name: "MKTG 430 - Marketing Management", description: "Maybe more quantitative than you think", section: 63, quarter: "Fall", year: 2014)

# Create teams
puts "Creating teams..."
team1 = Team.create(course_id: mors430.id, name: "Team 1", description: "Analyize an executive's network")
team2 = Team.create(course_id: opns430.id, name: "62-01", description: "For cases and group assignments")
team3 = Team.create(course_id: kiei925.id, name: "Team DAK: Drive for Accountability at Kellogg", description: "Creating a tool to rate teammates at Kellogg")
team4 = Team.create(course_id: mgmt431.id, name: "Team 6307", description: "Group paper on IBM")
team5 = Team.create(course_id: mktg430.id, name: "Marketing Masters", description: "Marketing simulation game")
team6 = Team.create(course_id: mktg430.id, name: "The 5 P's", description: "Weekly case assignments")

# Create team members
puts "Creating team members..."
Team_Member.create(team_id: team1.id, user_id: eric.id)
Team_Member.create(team_id: team1.id, user_id: tony.id)
Team_Member.create(team_id: team2.id, user_id: sam.id)

Team_Member.create(team_id: team2.id, user_id: dave.id)
Team_Member.create(team_id: team2.id, user_id: claudia.id)

Team_Member.create(team_id: team3.id, user_id: eric.id)
Team_Member.create(team_id: team3.id, user_id: dave.id)

Team_Member.create(team_id: team4.id, user_id: claudia.id)
Team_Member.create(team_id: team2.id, user_id: sam.id)

Team_Member.create(team_id: team5.id, user_id: eric.id)
Team_Member.create(team_id: team2.id, user_id: dave.id)
Team_Member.create(team_id: team2.id, user_id: tony.id)
Team_Member.create(team_id: team2.id, user_id: claudia.id)

Team_Member.create(team_id: team6.id, user_id: sam.id)
Team_Member.create(team_id: team2.id, user_id: tony.id)

# Create reviews
puts "Creating reviews..."

