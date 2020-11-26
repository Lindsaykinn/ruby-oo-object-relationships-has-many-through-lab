class Appointment
    attr_accessor :date, :doctor, :patient

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor        
        @patient = patient       
        @@all << self
    end

    def self.all
        @@all
    end

    #the below two methods were screwing up my tests. why?
    # def patient
    #     self.map {|appointment| appointment.patient}
    # end

    # def doctor
    #     self.map do |a|
    #         a.doctor
    #     end
    # end
end
