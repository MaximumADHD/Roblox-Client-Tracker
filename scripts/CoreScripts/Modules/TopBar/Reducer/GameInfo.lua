local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Rodux = require(CorePackages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Actions = script.Parent.Parent.Actions

local SetGameName = require(Actions.SetGameName)

return Rodux.createReducer({
	name = RobloxTranslator:FormatByKey("CoreScripts.TopBar.GameNamePlaceHolder"),
}, {
	[SetGameName.name] = function(state, action)
		return {
			name = action.gameName,
		}
	end,
})