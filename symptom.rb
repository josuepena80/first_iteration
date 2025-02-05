class Symptom
  attr_reader :date # date of symptom
  attr_reader :what # description of symptom
  attr_reader :where # bodily system affected by symptom
  attr_reader :how_long # duration of symptoms in days
  
  def initialize(date, what, where, how_long)

    @when = date
    @what = what
    @where = where
    @how_long = how_long
  end
  
  def to_s
    "Symptom recorded on #{@date}: #{@what}, in #{@where}, lasted for #{@how_long}"
  end
end
