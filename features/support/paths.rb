module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /^the home page$/ then '/'
    when /^the start page$/ then '/get-started'
    when /^the login page$/ then '/login'
    when /^the worker signup page$/ then '/signup?employee=1'
    when /^the employer signup page$/ then '/signup?employer=1'
    when /^the worker profile creation page$/ then '/employees/new'
    when /^the employer profile creation page$/ then '/employers/new'
    when /^the job creation page$/ then '/jobs/new'
    when /^the job page$/ then '/jobs'
    when /^the worker home page$/ then '/user/dashboard'

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
