module AssigneeFilter
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_bottom, :partial => "hooks/assignee_filter"
    #def view_issues_form_details_bottom(ctx={})
    #  ctx[:hook_caller].send(
    #    :render,
    #    {
    #      :partial => 'hooks/filter'
    #    }
    #  )
    #end
  end
end
