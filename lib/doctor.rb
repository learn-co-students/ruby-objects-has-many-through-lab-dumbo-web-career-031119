class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        @appointment = Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select {|app| app.doctor == self}
    end

    def patients
        appointments.collect {|app| app.patient}
    end

    def self.all
        @@all
    end

end