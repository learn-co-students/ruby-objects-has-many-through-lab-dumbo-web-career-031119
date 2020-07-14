require 'pry'

class Doctor
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select{|appoint| appoint.doctor == self}
  end

  def patients
    appointments.map{|appoint| appoint.patient}
  end
end