class ModForMyCalendar < ActiveRecord::Migration
  def self.up
    puts "Nothing to do."
  end

  def self.down
    puts "Delete MyCalendar setting."
    UserPreference.all.each do |p|
      p.others.delete(:my_calendar)
      p.save
    end
  end
end
