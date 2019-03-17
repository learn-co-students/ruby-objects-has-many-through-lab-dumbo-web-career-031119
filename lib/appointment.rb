require 'pry'
class Appointment

attr_reader :date, :patient, :doctor
@@all = []
    def initialize(date, doctor, patient)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
      @@all
    end
end