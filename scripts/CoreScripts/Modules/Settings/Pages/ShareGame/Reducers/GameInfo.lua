local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable

local SetGameInfoCreated = require(ShareGame.Actions.SetGameInfoCreated)

return function(state, action)
	state = state or {
		Created = nil,
	}

	if action.type == SetGameInfoCreated.name then
		state = Immutable.Set(state, "Created", action.Created)
	end

	return state
end
