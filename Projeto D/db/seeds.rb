doutor1 = Doctor.create(name: "Dr. Smith")

paciente1 = Patient.create(name: "John Doe")

Appointment.create(doctor: doutor1, patient: paciente1, date: Date.today)