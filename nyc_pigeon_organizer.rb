def nyc_pigeon_organizer(data)
  pigeons_by_name = {}
  data.each do |key, value|
    value.each do |new_key, new_value|
      new_key = new_key.to_s
      new_value.map do |e|
        if !pigeons_by_name[e]
          pigeons_by_name[e] = {key => [new_key]}
        elsif pigeons_by_name[e][key]
          pigeons_by_name[e] = {key => pigeons_by_name[e][key].push(new_key)}
        else
          pigeons_by_name[e].merge!({key => [new_key]})
        end
       end 
    end
  end
  pigeons_by_name
end