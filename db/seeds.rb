investor_1 = Investor.create(name: "Michael Bluth")
investor_2 = Investor.create(name: "George Michael")
investor_3 = Investor.create(name: "Lindsay Bluth")
investor_4 = Investor.create(name: "G.O.B")
investor_5 = Investor.create(name: "Maeby Fünke")
investor_6 = Investor.create(name: "Buster Bluth")

property_1 = Property.create(price: 1675000, rent: 5728, year_built: "2018", last_year_appreciation: 4.0, next_year_appreciation: 2.2, lease_length: 36, beds_baths_sqft: "4 bd | 5 ba | 6,421 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39602 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")
property_2 = Property.create(price: 1734000, rent: 5978, year_built: "2017", last_year_appreciation: 4.1, next_year_appreciation: 2.5, lease_length: 36, beds_baths_sqft: "4 bd | 5 ba | 6,352 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39600 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")
property_3 = Property.create(price: 1928000, rent: 7225, year_built: "2019", last_year_appreciation: 4.5, next_year_appreciation: 2.7, lease_length: 48, beds_baths_sqft: "5 bd | 5 ba | 7,534 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39601 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")
property_4 = Property.create(price: 1485000, rent: 5354, year_built: "2017", last_year_appreciation: 3.8, next_year_appreciation: 2.4, lease_length: 24, beds_baths_sqft: "4 bd | 4 ba | 6,758 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39603 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")
property_5 = Property.create(price: 1889000, rent: 7150, year_built: "2019", last_year_appreciation: 4.3, next_year_appreciation: 2.3, lease_length: 12, beds_baths_sqft: "4 bd | 5 ba | 6,879 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39604 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")
property_6 = Property.create(price: 1834000, rent: 7050, year_built: "2018", last_year_appreciation: 4.2, next_year_appreciation: 2.5, lease_length: 36, beds_baths_sqft: "4 bd | 5 ba | 6,434 sqft", description: "Golden Nugget Award of Merit custom Contemporary home on 5+ private acres w/panoramic views. Architectural features: floating roofs, curvilinear elements expressed in the desert vernacular of Arizona brown schist, treated copper fascias, walls of glass and polished aggregate floors.", zone: "residencial", location: "39605 N Charles Blair Macdonald Rd, Scottsdale, AZ 85262")

holding_1 = Holding.create(investor_id: 1, property_id: 1)
holding_2 = Holding.create(investor_id: 1, property_id: 5)
holding_3 = Holding.create(investor_id: 2, property_id: 3)
holding_4 = Holding.create(investor_id: 2, property_id: 2)
holding_5 = Holding.create(investor_id: 3, property_id: 1)
holding_6 = Holding.create(investor_id: 3, property_id: 5)
holding_7 = Holding.create(investor_id: 4, property_id: 4)
holding_8 = Holding.create(investor_id: 4, property_id: 5)
holding_9 = Holding.create(investor_id: 5, property_id: 6)
holding_10 = Holding.create(investor_id: 5, property_id: 3)
holding_11 = Holding.create(investor_id: 6, property_id: 4)
holding_12 = Holding.create(investor_id: 6, property_id: 6)
