community_category = Category.where(name: "community").first_or_create(name: "community")
housing_category = Category.where(name: "housing").first_or_create(name: "housing")
personals_category = Category.where(name: "personals").first_or_create(name: "personals")
services_category = Category.where(name: "services").first_or_create(name: "services")
forsale_category = Category.where(name: "for sale").first_or_create(name: "for sale")
jobs_category = Category.where(name: "jobs").first_or_create(name: "jobs")



Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

Subcategory.where(name: 'buy', category_id: housing_category.id).first_or_create(name: 'buy', category_id: housing_category.id)
Subcategory.where(name: 'sell', category_id: housing_category.id).first_or_create(name: 'sell', category_id: housing_category.id)
Subcategory.where(name: 'rent', category_id: housing_category.id).first_or_create(name: 'rent', category_id: housing_category.id)

Subcategory.where(name: 'dating', category_id: personals_category.id).first_or_create(name: 'dating', category_id: personals_category.id)
Subcategory.where(name: 'meetups', category_id: personals_category.id).first_or_create(name: 'meetups', category_id: personals_category.id)
Subcategory.where(name: 'other', category_id: personals_category.id).first_or_create(name: 'other', category_id: personals_category.id)

Subcategory.where(name: 'lessons', category_id: services_category.id).first_or_create(name: 'lessons', category_id: services_category.id)
Subcategory.where(name: 'home', category_id: services_category.id).first_or_create(name: 'home', category_id: services_category.id)
Subcategory.where(name: 'business', category_id: services_category.id).first_or_create(name: 'business', category_id: services_category.id)

Subcategory.where(name: 'cars', category_id: forsale_category.id).first_or_create(name: 'cars', category_id: forsale_category.id)
Subcategory.where(name: 'music', category_id: forsale_category.id).first_or_create(name: 'music', category_id: forsale_category.id)
Subcategory.where(name: 'furniture', category_id: forsale_category.id).first_or_create(name: 'furniture', category_id: forsale_category.id)

Subcategory.where(name: 'fulltime', category_id: jobs_category.id).first_or_create(name: 'fulltime', category_id: jobs_category.id)
Subcategory.where(name: 'partime', category_id: jobs_category.id).first_or_create(name: 'partime', category_id: jobs_category.id)
Subcategory.where(name: 'contract', category_id: jobs_category.id).first_or_create(name: 'contract', category_id: jobs_category.id)

