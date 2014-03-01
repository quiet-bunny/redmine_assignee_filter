require "redmine"
require "assignee_filter"

Redmine::Plugin.register :redmine_assignee_filter do
  name 'Assignee Filter plugin'
  author 'Quiet Bunny'
  description 'Filter assignee'
  version '0.0.1'
  url 'https://github.com/quiet-bunny/redmine_assignee_filter/'
  author_url 'https://github.com/quiet-bunny/'
end
