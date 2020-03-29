if Symptom.count.zero?
  Symptom.create!(name: 'Goteo nasal', weight: 2)
  Symptom.create!(name: 'Fatiga', weight: 2)
  Symptom.create!(name: 'Dolor de cabeza', weight: 4)
  Symptom.create!(name: 'Malestar corporal generalizado', weight: 4)
  Symptom.create!(name: 'Diarrea', weight: 4)
  Symptom.create!(name: 'Dolor de garganta', weight: 4)
  Symptom.create!(name: 'Fiebre mayor a 38C', weight: 6)
  Symptom.create!(name: 'Tos', weight: 6)
  Symptom.create!(name: 'Dificultad para respirar', weight: 10)
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

if Risk.count.zero?
  Risk.create!(name: 'Bajo', key: 'low', description: 'Los datos ingresados no son coincidentes con síntomas relacionados a pacientes con Coronavirus (COVID-19).')
  Risk.create!(name: 'Medio', key: 'medium', description: 'Algunos pacientes pueden presentar síntomas que aunque parecen leves y aparecen de forma gradual pueden ser coincidentes con síntomas de Coronavirus (COVID-19).')
  Risk.create!(name: 'Alto', key: 'high', description: 'Los síntomas presentados tienen una fuerte relación con los síntomas de el COVID-19. Llame al número 132 para presentar su caso. Al llamar tendrá una breve consulta por teléfono para determinar si requiere atención especializada.')
end

if Question.count.zero?
  Question.create!(question: '¿Qué es un Coronavirus?', answer: '')
  Question.create!(question: '¿Qué es la COVID-19?', answer: '')
  Question.create!(question: '¿Cuáles son los síntomas de la COVID-19?', answer: '')
  Question.create!(question: '¿Cómo se propaga la COVID-19?', answer: '')
  Question.create!(question: '¿Puede transmitirse a través del aire el virus causante de la COVID-19?', answer: '')
  Question.create!(question: '¿Es posible contagiarse de COVID-19 por contacto con una persona que no presente ningún síntoma?', answer: '')
  Question.create!(question: '¿Es posible contagiarse de COVID-19 por contacto con las heces de una persona que padezca la enfermedad?', answer: '')
  Question.create!(question: '¿Qué puedo hacer para protegerse y prevenir la propagación de la enfermedad?', answer: '')
end
