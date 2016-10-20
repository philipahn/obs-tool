Metro.destroy_all

current_metro = Metro.create!({
  name: "DC"
})

current_instructor = Instructor.create!({
    name: "Nayana",
    unique_id: 1,
    metro: current_metro
  })

Observation.create!({
  instance: "WDI13",
  obs_date: DateTime.now.to_date,
  created_by: "Phil",
  obs_notes: "she da bomb",
  prep: 2,
  framing: 2,
  inst: 2,
  cfu: 2,
  active: 2,
  obs_edit: DateTime.now.to_date,
  instructor: current_instructor
})

current_metro = Metro.create!({
  name: "ATL"
})

current_metro = Metro.create!({
  name: "CHI"
})
