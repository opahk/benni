class Benni < AwesomePerson

  attr_reader :available_time, :stress_level, :energy_level, :vegetarian?,
    :happy?

  def initialize
    @available_time = 0
    @stress_level = :medium
    @energy_level = :low
    @vegetarian = true
    @birthday_presents = []
    @happy = nil
  end

  def receive_birthday_present(present)
    @birthday_presents << present
    @happy = true
  end
end
