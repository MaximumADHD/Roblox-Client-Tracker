local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)

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
