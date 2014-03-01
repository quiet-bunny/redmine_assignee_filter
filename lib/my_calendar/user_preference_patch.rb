module MyCalendar
  module UserPreferencePatch
    def my_calendar; self[:my_calendar].to_i end
    def my_calendar=(type); self[:my_calendar]=type.to_i end
  end
end

unless UserPreference.included_modules.include? MyCalendar::UserPreferencePatch
  UserPreference.send(:include, MyCalendar::UserPreferencePatch)
end
