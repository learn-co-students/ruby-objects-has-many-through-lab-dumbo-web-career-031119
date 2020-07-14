require 'pry'
class Patient

attr_reader :name
@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
      Appointment.new(date, doctor, self)
    end

    def appointments
        Appointment.all.select{|appoint| appoint.patient == self}
    end

    def doctors
        appointments.map{|appoint|appoint.doctor}
    end
end