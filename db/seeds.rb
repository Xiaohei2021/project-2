DreamSpot.find_or_create_by(name: "volcano", country: "US", season: "spring and fall" )
DreamSpot.find_or_create_by(name: "Aurora", country: "US", season: "winter")
DreamSpot.find_or_create_by(name: "milkyway", country: "no limit", season: "year round" )
DreamSpot.find_or_create_by(name: "skydiving", country: "US", season: "summer")
DreamSpot.find_or_create_by(name: "surfing", country: "CN", season: "summer" )
DreamSpot.find_or_create_by(name: "horse riding", country: "CN", season: "spring and summer" )
DreamSpot.find_or_create_by(name: "camping", country: "CN", season: "spring and fall")


User.create(username: "dummy1", password: "1234")
User.create(username: "dummy2", password: "1234")
User.create(username: "dummy3", password: "1234")