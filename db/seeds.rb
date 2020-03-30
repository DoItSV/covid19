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
  Question.create!(question: '¿Qué es un Coronavirus?', answer: 'Los coronavirus son una extensa familia de virus que pueden causar enfermedades tanto en animales como en humanos. En los humanos, se sabe que varios coronavirus causan infecciones respiratorias que pueden ir desde el resfriado común hasta enfermedades más graves como el síndrome respiratorio de Oriente Medio (MERS) y el síndrome respiratorio agudo severo (SRAS). El coronavirus que se ha descubierto más recientemente causa la enfermedad por coronavirus COVID-19.')
  Question.create!(question: '¿Qué es la COVID-19?', answer: 'La COVID-19 es la enfermedad infecciosa causada por el coronavirus que se ha descubierto más recientemente. Tanto el nuevo virus como la enfermedad eran desconocidos antes de que estallara el brote en Wuhan (China) en diciembre de 2019.')
  Question.create!(question: '¿Cuáles son los síntomas de la COVID-19?', answer: 'Los síntomas más comunes de la COVID-19 son fiebre, cansancio y tos seca. Algunos pacientes pueden presentar dolores, congestión nasal, rinorrea, dolor de garganta o diarrea. Estos síntomas suelen ser leves y aparecen de forma gradual. Algunas personas se infectan pero no desarrollan ningún síntoma y no se encuentran mal. La mayoría de las personas (alrededor del 80%) se recupera de la enfermedad sin necesidad de realizar ningún tratamiento especial. Alrededor de 1 de cada 6 personas que contraen la COVID-19 desarrolla una enfermedad grave y tiene dificultad para respirar. Las personas mayores y las que padecen afecciones médicas subyacentes, como hipertensión arterial, problemas cardiacos o diabetes, tienen más probabilidades de desarrollar una enfermedad grave. En torno al 2% de las personas que han contraído la enfermedad han muerto. Las personas que tengan fiebre, tos y dificultad para respirar deben buscar atención médica.')
  Question.create!(question: '¿Cómo se propaga la COVID-19?', answer: 'Una persona puede contraer la COVID-19 por contacto con otra que esté infectada por el virus. La enfermedad puede propagarse de persona a persona a través de las gotículas procedentes de la nariz o la boca que salen despedidas cuando una persona infectada tose o exhala. Estas gotículas caen sobre los objetos y superficies que rodean a la persona, de modo que otras personas pueden contraer la COVID-19 si tocan estos objetos o superficies y luego se tocan los ojos, la nariz o la boca. También pueden contagiarse si inhalan las gotículas que haya esparcido una persona con COVID-19 al toser o exhalar. Por eso es importante mantenerse a más de 1 metro (3 pies) de distancia de una persona que se encuentre enferma. La OMS está estudiando las investigaciones en curso sobre las formas de propagación de la COVID-19 y seguirá informando sobre los resultados actualizados.')
  Question.create!(question: '¿Puede transmitirse a través del aire el virus causante de la COVID-19?', answer: 'Los estudios realizados hasta la fecha apuntan a que el virus causante de la COVID-19 se transmite principalmente por contacto con gotículas respiratorias, más que por el aire. Véase la respuesta anterior a la pregunta «¿Cómo se propaga la COVID-19?»')
  Question.create!(question: '¿Es posible contagiarse de COVID-19 por contacto con una persona que no presente ningún síntoma?', answer: 'La principal forma de propagación de la enfermedad es a través de las gotículas respiratorias expelidas por alguien al toser. El riesgo de contraer la COVID-19 de alguien que no presente ningún síntoma es muy bajo. Sin embargo, muchas personas que contraen la COVID-19 solo presentan síntomas leves. Esto es particularmente cierto en las primeras etapas de la enfermedad. Por lo tanto, es posible contagiarse de alguien que, por ejemplo, solamente tenga una tos leve y no se sienta enfermo. La OMS está estudiando las investigaciones en curso sobre el periodo de transmisión de la COVID-19 y seguirá informando sobre los resultados actualizados.')
  Question.create!(question: '¿Es posible contagiarse de COVID-19 por contacto con las heces de una persona que padezca la enfermedad?', answer: 'El riesgo de contraer la COVID-19 por contacto con las heces de una persona infectada parece ser bajo. Aunque las investigaciones iniciales apuntan a que el virus puede estar presente en algunos casos en las heces, la propagación por esta vía no es uno de los rasgos característicos del brote. La OMS está estudiando las investigaciones en curso sobre las formas de propagación de la COVID-19 y seguirá informando sobre los nuevos resultados. No obstante, se trata de un riesgo y por lo tanto es una razón más para lavarse las manos con frecuencia, después de ir al baño y antes de comer.')
  Question.create!(question: '¿Qué puedo hacer para protegerse y prevenir la propagación de la enfermedad?', answer: 'Manténgase al día de la información más reciente sobre el brote de COVID-19, a la que puede acceder en el sitio web de la OMS y a través de las autoridades de salud pública pertinentes a nivel nacional y local. Se han registrado casos en muchos países de todo el mundo, y en varios de ellos se han producido brotes. Las autoridades chinas y las de otros países han conseguido enlentecer o detener el avance de los brotes, pero la situación es impredecible y es necesario comprobar con regularidad las noticias más recientes.')
end
