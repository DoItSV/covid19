if Symptom.count.zero?
  Symptom.create!(name: 'Goteo nasal', weight: 1)
  Symptom.create!(name: 'Fiebre mayor a 38C', weight: 3)
  Symptom.create!(name: 'Tos', weight: 3)
  Symptom.create!(name: 'Diarrea', weight: 2)
  Symptom.create!(name: 'Dificultad para respirar', weight: 4)
  Symptom.create!(name: 'Fatiga', weight: 2)
end

if Department.count.zero?
  d1 = Department.create!(name: 'San Salvador')
  d1.cities.create(name: 'San Salvador')
  d1.cities.create(name: 'Mejicanos')

  d2 = Department.create!(name: 'Santa Ana')
  d2.cities.create(name: 'Santa Ana')

  d3 = Department.create!(name: 'San Miguel')
  d3.cities.create(name: 'San Miguel')
end
