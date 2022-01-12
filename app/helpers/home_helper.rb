module HomeHelper
    # For gretting to user 
    def gretting_user
        t = Time.now
        get_time = t.strftime("%I:%M %p")
        get_hour = Time.strptime(get_time, "%I:%M %p").strftime("%H:%M")
        if get_hour.between?("00:00", "13:00")
          return "Good Morning"
        elsif get_hour.between?("13:00", "17:00")
          return "Good Afternoon"
        elsif get_hour.between?("17:00", "23:59")
          return "Good evening"
        end
    end   
    
    def has_api_key?
      return current_user.user_api_key
    end
end