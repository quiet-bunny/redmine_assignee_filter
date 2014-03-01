module MyCalendar
  module MyHelperPatch
    def self.included(base)
      base.send(:alias_method_chain, :calendar_items, :mine)
    end

    def calendar_items_with_mine(startdt, enddt)
      setting = User.current.preference[:my_calendar].to_i
      if ALL == setting
        calendar_items_without_mine(startdt, enddt)
      else
        result = Issue.visible.
          where(:project_id => User.current.projects.map(&:id)).
          where("(start_date>=? and start_date<=?) or (due_date>=? and due_date<=?)", startdt, enddt, startdt, enddt).
          where(:assigned_to_id => [User.current] + User.current.group_ids).
          includes(:project, :tracker, :priority, :assigned_to).
          all
        WATCH == setting ? result + issueswatched_items : result
      end
    end
  end
end

unless MyHelper.included_modules.include?(MyCalendar::MyHelperPatch)
  MyHelper.send(:include, MyCalendar::MyHelperPatch)
end
