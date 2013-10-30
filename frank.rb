class Frank < SimplePerson

  def give_present_to(person)
    person.receive_birthday_present present_for(person)
  end

  private

    def present_for(person)
      if person.kind_of? Benni
        benni = person
        # do something with Frank
        if benni.available_time > 0 and benni.stress_level == :high
          # mental training required
          :meditation_with_frank
        elsif benni.available_time > 0 and benni.energy_level == :low
          # maybe try yoga instead
          :yoga_with_frank
        elsif benni.available_time == 0
          # force him to do something anyway
          if benni.vegetarian?
            # do something simple
            :lunch_with_frank_at_la_mano_verde
          end
        end
      end
    end
end
