Participant.destroy_all
Message.destroy_all
Event.destroy_all
LikedActivity.destroy_all
Chatroom.destroy_all
Activity.destroy_all

thailand_hike = Activity.new(
  name: 'Thai Wildlife Tour',
  description: "Embark on an unforgettable wildlife watching and hiking adventure in the lush wilderness of Thailand. Immerse yourself in the vibrant ecosystems of this tropical paradise as you trek through verdant rainforests and pristine landscapes. With each step, discover a rich tapestry of biodiversity, from colorful bird species flitting amongst the canopy to elusive mammals roaming the forest floor. Guided by experienced naturalists, learn about the intricate balance of these ecosystems and the importance of conservation efforts to protect Thailand's precious wildlife. Along the way, pause to admire breathtaking vistas, cascading waterfalls, and hidden gems tucked away in the heart of nature. After a day of exploration, unwind in comfortable accommodations nestled amidst the wilderness, where the
  sounds of the forest serenade you to sleep under the starlit sky. Whether you're an avid nature enthusiast or simply seeking an escape into the wild, Thailand's wildlife watching and hiking experience promises an enriching journey filled with awe-inspiring encounters and unforgettable moments amidst the beauty of nature.",
  difficulty: 'moderate', address: "Bangkok, Thailand"
)

thailand_hike.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'thailand.png')),
  filename: 'thailand.png',
  content_type: 'image.png'
)

thailand_hike.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'thailand2.png')),
  filename: 'thailand2.png',
  content_type: 'image/png'
)

thailand_hike.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'thailand3.png')),
  filename: 'thailand3.png',
  content_type: 'image/png'
)
thailand_hike.save!

mountain_biking = Activity.new(
  name: 'Biking in the Peaks',
  description: "Experience the thrill of mountain biking through rugged terrain and breathtaking scenery on this adrenaline-fueled adventure. Our guided mountain biking tour takes you on an exhilarating journey through winding trails, challenging climbs, and thrilling descents in the heart of nature. Whether you're a seasoned pro or a beginner, our experienced guides will tailor the route to suit your skill level, ensuring an unforgettable experience for all. Along the way, you'll encounter stunning vistas, hidden gems, and wildlife encounters, making each twist and turn of the trail a new adventure. Bring your own bike or rent one from us, and get ready to pedal your way through an unforgettable mountain biking escapade.",
  difficulty: 'difficult', address: "Castleton, Derbyshire"
)

mountain_biking.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Biking-Peaks.png')),
  filename: 'Biking-Peaks.png',
  content_type: 'image.png'
)

mountain_biking.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Biking-Peaks2.png')),
  filename: 'Biking-Peaks2.png',
  content_type: 'image/png'
)

mountain_biking.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Biking-Peaks3.png')),
  filename: 'Biking-Peaks3.png',
  content_type: 'image/png'
)
mountain_biking.save!

kilimanjaro_climbing = Activity.new(
  name: 'Mount Kilimanjaro',
  description: "Embark on the ultimate adventure of summiting Mount Kilimanjaro, the tallest peak in Africa and one of the Seven Summits. This iconic mountain offers a once-in-a-lifetime challenge for climbers seeking to conquer its legendary heights. Our guided expedition takes you on a thrilling journey through diverse ecosystems, from lush rainforests to alpine meadows and otherworldly landscapes. You'll traverse rugged terrain, navigate steep ascents, and brave high altitudes as you make your way to the summit, Uhuru Peak, standing at an impressive 5,895 meters (19,341 feet) above sea level. Along the way, you'll be treated to awe-inspiring views of the surrounding savannah and distant horizons, while experiencing the camaraderie and sense of accomplishment that comes with climbing one of the world's most famous mountains. Join us for an unforgettable adventure and make your dream of reaching the Roof of Africa a reality.",
  difficulty: 'extreme', address: "Moshi, Tanzania"
)

kilimanjaro_climbing.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'kilimanjaro.png')),
  filename: 'kilimanjaro.png',
  content_type: 'image.png'
)

kilimanjaro_climbing.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'kilimanjaro2.png')),
  filename: 'kilimanjaro2.png',
  content_type: 'image/png'
)

kilimanjaro_climbing.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'kilimanjaro3.png')),
  filename: 'kilimanjaro3.png',
  content_type: 'image/png'
)
kilimanjaro_climbing.save!

winter = Activity.new(
  name: 'The Thames Path',
  description: "A varied circular hike from Maidenhead to Cookham Moor and Bourne End with panoramic views across the river valley from Winter Hill and sections of the Thames path. We will have snack picnic lunch on Cock Marsh close to Bourne End which has a rail station (you would need to get a single to Maidenhead for the mainline) if you want to return approx. halfway along the walk. Cock Marsh is also very close to the Bounty Pub on the Thames for any refreshments. Some of the woodland areas may display spring bluebells. Please bring water and snack lunch for the walk. The walk should finish at about 4.30pm, however the time may be earlier or later than this depending on the weather and pace. THE HIKE IS LARGELY FLAT BUT DOES HAVE SOME CONSIDERABLE HILL CLIMBS SUCH AS WINTER HILL.",
  difficulty: 'moderate', address: ' Henley-on-Thames'
)

winter.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'winter_hill.jpg')),
  filename: 'winter_hill.png',
  content_type: 'image.png'
)

winter.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'winter_hill2.png')),
  filename: 'winter_hill2.png',
  content_type: 'image/png'
)

winter.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'winter_hill3.png')),
  filename: 'winter_hill3.png',
  content_type: 'image/png'
)
winter.save!

helvellyn = Activity.new(name: 'Helvellyn',
  description: "The best walking route up Helvellyn is via Striding Edge. A narrow ridge that rises and falls with steep drops on either side. It tests the nerves, but the rewards are an adventure with breathtaking views and the satisfaction of climbing the third-highest peak in the Lakes.",
  difficulty: 'difficult', address: 'Keswick CA12 4TW')

  helvellyn.image.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'helvellyn.png')),
    filename: 'helvellyn.png',
    content_type: 'image.png'
  )

  helvellyn.image.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'helvellyn2.png')),
    filename: 'helvellyn2.png',
    content_type: 'image/png'
  )

  helvellyn.image.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'helvellyn3.png')),
    filename: 'helvellyn3.png',
    content_type: 'image/png'
  )
helvellyn.save!

epping = Activity.new(
  name: 'Epping Forest stroll',
  description: "Embark on a mesmerizing circular hike through Epping Forest, immersing yourself in its timeless beauty. Traverse winding paths under towering oaks, discovering tranquil glades and meandering streams along the way. Encounter centuries-old trees and ancient settlements, while panoramic viewpoints offer breathtaking vistas of the forest canopy. Whether you're a seasoned hiker or a nature enthusiast, this unforgettable journey promises a rejuvenating escape into one of England's most cherished natural landscapes.",
  difficulty: 'easy', address: "6 High Beech Road, Loughton"
)
epping.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Epping_forest_hike.jpg')),
  filename: 'Epping_forest_hike.jpg',
  content_type: 'image.png'
)

epping.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Epping_forest_hike2.png')),
  filename: 'Epping_forest_hike2.png',
  content_type: 'image/png'
)

epping.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Epping_forest_hike3.png')),
  filename: 'Epping_forest_hike3.png',
  content_type: 'image/png'
)
epping.save!

chalfont = Activity.new(
  name: 'Chalfont Circular Hike',
  description: "Embark on a scenic hike through Chalfont, nestled in the picturesque Chilterns. Explore rolling hills, wooded valleys, and charming countryside. With moderate difficulty, enjoy sightings of wildlife and a cozy pub stop. Discover the beauty of nature on this enriching adventure in Chalfont.",
  difficulty: 'moderate', address: "Chalfont St Giles"
)
chalfont.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'Chalfont_circular_hike.jpg')),
  filename: 'Chalfont_circular_hike.jpg',
  content_type: 'image.png'
)

chalfont.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'chalfont2.png')),
  filename: 'chalfont2.png',
  content_type: 'image/png'
)

chalfont.image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'chalfont3.png')),
  filename: 'chalfont3.png',
  content_type: 'image/png'
)
chalfont.save!
