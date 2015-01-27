# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Park.delete_all
Park_Feature.delete_all
Feature.delete_all
User.delete_all
Review.delete_all


# Create Park
puts "Creating parks..."
arches = Park.create(name: "Arches", state: "Utah", country: "US", rating: "5", summary: "A landscape of contrasting colors, landforms and textures")
bryce_canyon = Park.create(name: "Bryce Canyon", state: "Utah", country: "US", rating: "4", summary: "Archetypal hoodoo-iferous terrain")
yellowstone = Park.create(name: "Yellowstone", state: "Wyoming", country: "US", rating: "5", summary: "Best park")
yosemite = Park.create(name: "Yosemite", state: "California", country: "US", rating: "4", summary: "World Heritage Site")
sequoia = Park.create(name: "Sequoia", state: "California", country: "US", rating: "4", summary: "Giant sequoia trees")


# Create Feature
puts "Creating features..."
hiking = Feature.create(activity: "Hiking")
camping = Feature.create(activity: "Camping")
boating = Feature.create(activity: "Boating")
fishing = Feature.create(activity: "Fishing")
sightseeing = Feature.create(activity: "Sightseeing")
skiing = Feature.create(activity: "Skiing")

# Create Park_Feature
puts "Creating part_features..."

# Create the park_features for Arches
Park_Feature.create(park_id: arches.id, feature_id: hiking.id)
Park_Feature.create(park_id: arches.id, feature_id: camping.id)
Park_Feature.create(park_id: arches.id, feature_id: sightseeing.id)

# Create the park_features for Bryce Canyon
Park_Feature.create(park_id: bryce_canyon.id, feature_id: hiking.id)
Park_Feature.create(park_id: bryce_canyon.id, feature_id: camping.id)
Park_Feature.create(park_id: bryce_canyon.id, feature_id: sightseeing.id)

# Create the park_features for Yellowstone
Park_Feature.create(park_id: yellowstone.id, feature_id: hiking.id)
Park_Feature.create(park_id: yellowstone.id, feature_id: camping.id)
Park_Feature.create(park_id: yellowstone.id, feature_id: boating.id)
Park_Feature.create(park_id: yellowstone.id, feature_id: fishing.id)
Park_Feature.create(park_id: yellowstone.id, feature_id: sightseeing.id)

# Create the park_features for Yosemite
Park_Feature.create(park_id: yosemite.id, feature_id: hiking.id)
Park_Feature.create(park_id: yosemite.id, feature_id: camping.id)
Park_Feature.create(park_id: yosemite.id, feature_id: sightseeing.id)
Park_Feature.create(park_id: yosemite.id, feature_id: skiing.id)

# Create the park_features for Sequoia
Park_Feature.create(park_id: sequoia.id, feature_id: hiking.id)
Park_Feature.create(park_id: sequoia.id, feature_id: camping.id)
Park_Feature.create(park_id: sequoia.id, feature_id: sightseeing.id)