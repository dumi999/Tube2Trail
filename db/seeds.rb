Event.destroy_all
LikedActivity.destroy_all
Message.destroy_all
Chatroom.destroy_all
Activity.destroy_all

thailand_hike = Activity.new(
  name: ' Hike & Wildlife Watching in Thailand 🐘🐅🎍',
  description: "Embark on an unforgettable wildlife watching and hiking adventure in the lush wilderness of Thailand. Immerse yourself in the vibrant ecosystems of this tropical paradise as you trek through verdant rainforests and pristine landscapes. With each step, discover a rich tapestry of biodiversity, from colorful bird species flitting amongst the canopy to elusive mammals roaming the forest floor. Guided by experienced naturalists, learn about the intricate balance of these ecosystems and the importance of conservation efforts to protect Thailand's precious wildlife. Along the way, pause to admire breathtaking vistas, cascading waterfalls, and hidden gems tucked away in the heart of nature. After a day of exploration, unwind in comfortable accommodations nestled amidst the wilderness, where the
  sounds of the forest serenade you to sleep under the starlit sky. Whether you're an avid nature enthusiast or simply seeking an escape into the wild, Thailand's wildlife watching and hiking experience promises an enriching journey filled with awe-inspiring encounters and unforgettable moments amidst the beauty of nature.",
  difficulty: 'moderate'
)

thailand_hike.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'thailand_hike.jpg')),
  filename: 'thailand_hike.jpg',
  content_type: 'image.jpg'
)
thailand_hike.save!

mountain_biking = Activity.new(
  name: 'Mountain Biking Adventure 🚵🏻',
  description: "Experience the thrill of mountain biking through rugged terrain and breathtaking scenery on this adrenaline-fueled adventure. Our guided mountain biking tour takes you on an exhilarating journey through winding trails, challenging climbs, and thrilling descents in the heart of nature. Whether you're a seasoned pro or a beginner, our experienced guides will tailor the route to suit your skill level, ensuring an unforgettable experience for all. Along the way, you'll encounter stunning vistas, hidden gems, and wildlife encounters, making each twist and turn of the trail a new adventure. Bring your own bike or rent one from us, and get ready to pedal your way through an unforgettable mountain biking escapade.",
  difficulty: 'difficult'
)

mountain_biking.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'mountain_biking.jpg')),
  filename: 'mountain_biking.jpg',
  content_type: 'image.jpg'
)
mountain_biking.save!

kilimanjaro_climbing = Activity.new(
  name: 'Summiting Mount Kilimanjaro 🗻',
  description: "Embark on the ultimate adventure of summiting Mount Kilimanjaro, the tallest peak in Africa and one of the Seven Summits. This iconic mountain offers a once-in-a-lifetime challenge for climbers seeking to conquer its legendary heights. Our guided expedition takes you on a thrilling journey through diverse ecosystems, from lush rainforests to alpine meadows and otherworldly landscapes. You'll traverse rugged terrain, navigate steep ascents, and brave high altitudes as you make your way to the summit, Uhuru Peak, standing at an impressive 5,895 meters (19,341 feet) above sea level. Along the way, you'll be treated to awe-inspiring views of the surrounding savannah and distant horizons, while experiencing the camaraderie and sense of accomplishment that comes with climbing one of the world's most famous mountains. Join us for an unforgettable adventure and make your dream of reaching the Roof of Africa a reality.",
  difficulty: 'extreme'
)

kilimanjaro_climbing.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'kilimanjaro_climbing.jpg')),
  filename: 'kilimanjaro_climbing.jpg',
  content_type: 'image.jpg'
)
kilimanjaro_climbing.save!

winter = Activity.new(
  name: 'Winter Hill & The Thames',
  description: "A varied circular hike from Maidenhead to Cookham Moor and Bourne End with panoramic views across the river valley from Winter Hill and sections of the Thames path. We will have snack picnic lunch on Cock Marsh close to Bourne End which has a rail station (you would need to get a single to Maidenhead for the mainline) if you want to return approx. halfway along the walk. Cock Marsh is also very close to the Bounty Pub on the Thames for any refreshments. Some of the woodland areas may display spring bluebells. Please bring water and snack lunch for the walk. The walk should finish at about 4.30pm, however the time may be earlier or later than this depending on the weather and pace. THE HIKE IS LARGELY FLAT BUT DOES HAVE SOME CONSIDERABLE HILL CLIMBS SUCH AS WINTER HILL.",
  difficulty: 'moderate'
)

winter.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'winter_hill.jpg')),
  filename: 'winter_hill.png',
  content_type: 'image.png'
)
winter.save!

epping = Activity.new(
  name: 'Epping Forest Hike - Circular Hike 🌳',
  description: "Embark on a mesmerizing circular hike through Epping Forest, immersing yourself in its timeless beauty. Traverse winding paths under towering oaks, discovering tranquil glades and meandering streams along the way. Encounter centuries-old trees and ancient settlements, while panoramic viewpoints offer breathtaking vistas of the forest canopy. Whether you're a seasoned hiker or a nature enthusiast, this unforgettable journey promises a rejuvenating escape into one of England's most cherished natural landscapes.",
  difficulty: 'moderate'
)
epping.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Epping_forest_hike.jpg')),
  filename: 'Epping_forest_hike.jpg',
  content_type: 'image.png'
)
epping.save!

chalfont = Activity.new(
  name: 'Chalfont Circular Hike',
  description: "Embark on a scenic hike through Chalfont, nestled in the picturesque Chilterns. Explore rolling hills, wooded valleys, and charming countryside. With moderate difficulty, enjoy sightings of wildlife and a cozy pub stop. Discover the beauty of nature on this enriching adventure in Chalfont.",
  difficulty: 'moderate'
)
chalfont.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Chalfont_circular_hike.jpg')),
  filename: 'Chalfont_circular_hike.jpg',
  content_type: 'image.png'
)
chalfont.save!

# Please keep these users:
# # Seed 1
# User.create!(
#   username: "alice",
#   email: "alice@example.com",
#   password: "password123",
#   password_confirmation: "password123"
# )

# # Seed 2
# User.create!(
#   username: "bob",
#   email: "bob@example.com",
#   password: "securepassword",
#   password_confirmation: "securepassword"
# )

# # Seed 3
# User.create!(
#   username: "charlie",
#   email: "charlie@example.com",
#   password: "charlie123",
#   password_confirmation: "charlie123"
# )
