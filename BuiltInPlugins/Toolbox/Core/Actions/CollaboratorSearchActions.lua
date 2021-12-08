local Plugin = script.Parent.Parent.Parent
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

return {
	LoadingLocalUserFriends = Action("LoadingLocalUserFriends", function()
		return {}
	end),
	LoadingLocalUserGroups = Action("LoadingLocalUserGroups", function()
		return {}
	end),
	LoadingWebResults = Action("LoadingWebResults", function(searchTerm)
		return {
			searchTerm = searchTerm,
		}
	end),

	LoadedLocalUserFriends = Action("LoadedLocalUserFriends", function(success, friends)
		return {
			success = success,
			friends = friends,
		}
	end),
	LoadedLocalUserGroups = Action("LoadedLocalUserGroups", function(success, groups)
		return {
			success = success,
			groups = groups,
		}
	end),
	LoadedWebResults = Action("LoadedWebResults", function(success, key, results)
		return {
			success = success,
			key = key,
			results = results,
		}
	end),

	SearchTextChanged = Action("SearchTextChanged", function(text)
		return {
			text = text,
		}
	end),

	CollaboratorAdded = Action("CollaboratorAdded", function(collaboratorType, collaboratorId, action)
		return {
			collaboratorType = collaboratorType,
			collaboratorId = collaboratorId,
			action = action,
		}
	end),
}
