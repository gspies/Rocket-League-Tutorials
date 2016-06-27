# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tutorials = [
  {title: 'RL Pro Low5ive\'s "From Noob to NOT" -Basic Aerial Progression', description: 'Ep. 4 in "From Noob to NOT!" In this episode, we\'re going to the moon. Or at least sorta close to the ceiling. I\'ll be covering reverse in another episode.', author: 'Low5ive', link: 'https://www.youtube.com/watch?v=TtrwvyrE-SA'},
  {title: "Low5ive's Tutorial Series - Wall Hits
", description: "Ep.6 Wall hits.", author: "Low5ive", link: "https://www.youtube.com/watch?v=KF07i9BRhj8"},
  {title: "RL Pro Low5ive's \"From Noob to NOT\" - Dribbling", description: "Ep. 2 of \"From Noob to NOT\" by Low5ive! In this episode, we're covering the basics of dribbling.", author: "Low5ive", link: "https://www.youtube.com/watch?v=tnM8HNKg9yA"},
  {title: "RL Pro Low5ive's \"From Noob to NOT\" - Fast Kickoff", description: "Ep. 3 of \"From Noob to NOT\" by Low5ive! In this episode, we're covering \"fast kickoff.\" Note: It's REALLY HARD to get the timing and angles perfect. I've been trying for like 3 weeks and I still only do it ", author: "Low5ive", link: "https://www.youtube.com/watch?v=WdUKb9pTYMM"},
  {title: "RL Pro Low5ive's \"From Noob to NOT\" - Reverse Aerials", description: "Ep. 5 of \"From Noob to NOT!\" Flying upside down. Why would you want to do that, anyway?", author: "Low5ive", link: "https://www.youtube.com/watch?v=DRESRTn44SQ"},
  {title: "Rocket League - How to Fast Kick Off | #RocketLeague Tutorial", description: "Beat your opponent to the ball nearly 100% of the time with this advanced kickoff technique. Rocket League How to Tutorial video for fast kick offs!  FOLLOW ME on Twitch: http://www.twitch.tv/ruffxraiju", author: "RuffxRaiju - Rocket League", link: "https://www.youtube.com/watch?v=Qcz6BuutlAk"},
  {title: "Dribbling Tutorial | Rocket League", description: "Apologies if I sound a bit raspy in this video. I was sick during the recording. Probably wasn't the best idea to do it then, but I was running out of time.", author: "Sir Timbers", link: "https://www.youtube.com/watch?v=eBmgRPOmh98"},
  {title: "Rocket League Tutorial: How to Practice Basic Dribbling", description: "I'm back with a new tutorial, and I've given it my in-depth treatment. This one covers basic dribbling and flip shots... and I think it'll appease to those who are just starting out, as well as more experienced players. It was extremely difficult to put into words what is essentially second nature, so I did my best - let me know if you need anything clarified. Best of luck!", author: "Kevpert", link: "https://www.youtube.com/watch?v=noLjmDoAq1s"},
  {title: "Rocket League Tutorial: How to Practice Basic Freestyle Aerials", description: "This is an in-depth, systematic guide teaching you the technique of a basic freestyle aerial. Here, I've broken down the technique of the freestyle into more manageable chunks. If you're completely new to freestyling, when you hit that first freestyle in pro aerial training... you'll know what the fuss is all about. Thanks again for all the wonderful comments in the last video, I hope you enjoy this one!

Link to car control section of my first video, teaching you basic drills on backwards and sideways aerials:
https://youtu.be/X33xK-rMUYg?t=4m50s", author: "Kevpert", link: "https://www.youtube.com/watch?v=eAO1sqr135c"}
]
#,
 # {title: "", description: "", author: "", link: ""}
#]

types =  [
  {name: "Aerials", description: ""},
  {name: "Dribbling", description: ""},
  {name: "Shooting", description: ""},
  {name: "Goal-keeping", description: ""},
  {name: "Defending", description: ""},
  {name: "Attacking", description: ""},
  {name: "Miscellaneous", description: ""},
  {name: "Strategy", description: ""},
  {name: "Wall-play", description: ""}
] 
 
types.each {|t| Type.find_or_create_by(t)}
tutorials.each  {|t| Tutorial.find_or_create_by(t)}
