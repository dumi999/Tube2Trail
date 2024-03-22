# # db/seeds.rb

# # Ensure the deletion of existing activities to keep the seed execution idempotent
# Activity.destroy_all

# # Define the activity data
# activity_datas = [
#   {
#     name: 'Winter Hill & The Thames',
#     description: "A varied circular hike from Maidenhead to Cookham Moor and Bourne End with panoramic views across the river valley from Winter Hill and sections of the Thames path. We will have snack picnic lunch on Cock Marsh close to Bourne End which has a rail station (you would need to get a single to Maidenhead for the mainline) if you want to return approx. halfway along the walk. Cock Marsh is also very close to the Bounty Pub on the Thames for any refreshments. Some of the woodland areas may display spring bluebells. Please bring water and snack lunch for the walk. The walk should finish at about 4.30pm, however the time may be earlier or later than this depending on the weather and pace. THE HIKE IS LARGELY FLAT BUT DOES HAVE SOME CONSIDERABLE HILL CLIMBS SUCH AS WINTER HILL.",
#     difficulty: 'moderate'
#   },
#   {
#     name: 'Epping Forest Hike - Circular Hike',
#     description: "Walking Pace: 2 miles per hour. Average. Relaxed walking Pace. No steep hills. Mostly Flat and easy walking Pace. Epping Forest is one of a number of green spaces that lie just outside London. It covers around 6,000 acres of ancient woodland consisting of various tree species including oak and beech, many pollarded (pruned) from medieval times. The forest was a royal hunting ground and is now run and managed by The City of London Corporation that also manages Burnham Beeches and Hampstead Heath. Some features on this walk include Queen Elizabeth's Tudor hunting lodge (outside view), a number of lakes and ponds such as Connaught Water (named after the Duke of Connaught) and the Loughton earthworks (Iron Age Camp) thought to date back to 500 BC, and a number of panoramic views such as 'High Beach.'",
#     difficulty: 'easy'
#   },
#   {
#     name: 'Chalfont Circular Hike',
#     description: "Join us for a our Chalfont Circular. Chalfont is the gateway to the Chilterns area of outstanding beauty. With rolling hills, and gentle wooded valleys of chalk escarpments, this is a walk of changing landscape. We're likely to see buzzards, skylark, wild garlic, and other flora and fauna of spring. A moderate level of fitness is needed to join this walk. We recommend bringing 1ltr of water and a packed lunch with you. We'll stop halfway at a pub for a hot drink. There will be access to toilets at this halfway stop.",
#     difficulty: 'moderate'
#   },
#   {
#     name: 'Daffodils of Chartwell 20 Km Hike',
#     description: "After cold and dark winter, vibrant yellow daffodils are symbol of spring which can be easily found in English counytryside. This is a leisurely circular hike from Hurst Green Station via Chartwell; Churchill's country house in Kent and is now preserved as an historic property by the National Trust. It is consistently one of their most visited sites with beautiful dispaly of daffodils in especially in March. Another highlight is Octavia Hill; co founder of National Trust, lived at Larkfield in Crockham Hill. She was an conservationist, a social reformer known to protect green spaces and communities access to Nature. Photo Credit : David Fenton",
#     difficulty: 'difficult'
#   }
# ]

# images = [cl_image_tag('8nq0ky15pm75xausmvdmhcglzcqa'), cl_image_tag('cefzpc1ezjrnpwq23q8icwvqzbqr'), cl_image_tag('iv1jjgppdblmpr70dk2b3neam73t'), cl_image_tag('va13zczanl5rczqpu4ez6gskyair')]

# # Seed data for the Activity model
# activity_datas.each_with_index do |activity_data, i|
#   activity = Activity.create!(activity_data)
#   file_path = Rails.root.join('app', 'assets','images', images[i])
#   activity.cover_image.attach(io: File.open(file_path), filename: 'activity_image.jpg')
# end

# Ensure the deletion of existing activities to keep the seed execution idempotent
Activity.destroy_all

# Define the activity data with Cloudinary image keys
activity_datas = [
  {
    name: 'Winter Hill & The Thames',
    description: "A varied circular hike from Maidenhead to Cookham Moor and Bourne End with panoramic views across the river valley from Winter Hill and sections of the Thames path. We will have snack picnic lunch on Cock Marsh close to Bourne End which has a rail station (you would need to get a single to Maidenhead for the mainline) if you want to return approx. halfway along the walk. Cock Marsh is also very close to the Bounty Pub on the Thames for any refreshments. Some of the woodland areas may display spring bluebells. Please bring water and snack lunch for the walk. The walk should finish at about 4.30pm, however the time may be earlier or later than this depending on the weather and pace. THE HIKE IS LARGELY FLAT BUT DOES HAVE SOME CONSIDERABLE HILL CLIMBS SUCH AS WINTER HILL.",
    difficulty: 'moderate',
    image_key: '8nq0ky15pm75xausmvdmhcglzcqa' # Cloudinary image key
  },
  {
    name: 'Epping Forest Hike - Circular Hike',
    description: "Walking Pace: 2 miles per hour. Average. Relaxed walking Pace. No steep hills. Mostly Flat and easy walking Pace. Epping Forest is one of a number of green spaces that lie just outside London. It covers around 6,000 acres of ancient woodland consisting of various tree species including oak and beech, many pollarded (pruned) from medieval times. The forest was a royal hunting ground and is now run and managed by The City of London Corporation that also manages Burnham Beeches and Hampstead Heath. Some features on this walk include Queen Elizabeth's Tudor hunting lodge (outside view), a number of lakes and ponds such as Connaught Water (named after the Duke of Connaught) and the Loughton earthworks (Iron Age Camp) thought to date back to 500 BC, and a number of panoramic views such as 'High Beach.'",
    difficulty: 'easy',
    image_key: 'cefzpc1ezjrnpwq23q8icwvqzbqr' # Cloudinary image key
  },
  {
    name: 'Chalfont Circular Hike',
    description: "Join us for a our Chalfont Circular. Chalfont is the gateway to the Chilterns area of outstanding beauty. With rolling hills, and gentle wooded valleys of chalk escarpments, this is a walk of changing landscape. We're likely to see buzzards, skylark, wild garlic, and other flora and fauna of spring. A moderate level of fitness is needed to join this walk. We recommend bringing 1ltr of water and a packed lunch with you. We'll stop halfway at a pub for a hot drink. There will be access to toilets at this halfway stop.",
    difficulty: 'moderate',
    image_key: 'iv1jjgppdblmpr70dk2b3neam73t' # Cloudinary image key
  },
  {
    name: 'Daffodils of Chartwell 20 Km Hike',
    description: "After cold and dark winter, vibrant yellow daffodils are symbol of spring which can be easily found in English counytryside. This is a leisurely circular hike from Hurst Green Station via Chartwell; Churchill's country house in Kent and is now preserved as an historic property by the National Trust. It is consistently one of their most visited sites with beautiful dispaly of daffodils in especially in March. Another highlight is Octavia Hill; co founder of National Trust, lived at Larkfield in Crockham Hill. She was an conservationist, a social reformer known to protect green spaces and communities access to Nature. Photo Credit : David Fenton",
    difficulty: 'difficult',
    image_key: 'va13zczanl5rczqpu4ez6gskyair' # Cloudinary image key
  }
]

# Seed data for the Activity model
activity_datas.each do |activity_data|
  activity = Activity.create!(activity_data)
  # You can store the Cloudinary image key directly in your Activity model
  # activity.update(cover_image_key: activity_data[:image_key])
end
