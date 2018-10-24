def get_first_name_of_season_winner(data, season)
  data.each do |season_num,contestants|
    if season_num==season
      contestants.each do |conts_hash|
        if conts_hash["status"]=="Winner"
          return conts_hash["name"].split(" ")[0]
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_num,contestants|
    contestants.each do |cont_hash|
      if cont_hash["occupation"]== occupation
        return cont_hash["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
counter=0
  data.each do |season_num, contestants|
    contestants.each do |cont_hash|
      if cont_hash["hometown"]==hometown
      counter+=1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
data.each do |season_num,contestant|
  contestant.each do |cont_hash|
    if cont_hash["hometown"]== hometown
      return cont_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_i
  end
  average = total_age.to_f/data[season].length
  average.round
end
