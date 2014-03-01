module MyCalendar
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_my_account, :partial => "hooks/account"
  end
end
