require "redmine"
require "my_calendar"

Redmine::Plugin.register :redmine_my_calendar do
  name 'Redmine My Calendar plugin'
  author 'Quiet Bunny'
  description 'Show asigned and watched tasks on mypage calendar'
  version '0.0.1'
  url 'https://github.com/quiet-bunny/redmine_my_calendar/'
  author_url 'https://github.com/quiet-bunny/'
end
