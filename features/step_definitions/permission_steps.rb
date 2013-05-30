Given /^"([^"]*)" can view the "([^"]*)" project$/ do |user, project|
	@permission = Permission.create!
	@permission.user = User.find_by_email!(user)
	@permission.thing = Project.find_by_name!(project)
	@permission.action = "view"
	@permission.save
end