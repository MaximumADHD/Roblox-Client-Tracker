-- Remove with FFlagTopBarDeprecateGameInfoRodux
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local Actions = script.Parent.Parent.Actions

local SetGameName = require(Actions.SetGameName)

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateGameInfoRodux = require(TopBar.Flags.FFlagTopBarDeprecateGameInfoRodux)

if FFlagTopBarDeprecateGameInfoRodux then
	return nil :: never
end

return Rodux.createReducer({
	name = RobloxTranslator:FormatByKey("CoreScripts.TopBar.GameNamePlaceHolder"),
}, {
	[SetGameName.name] = function(state, action)
		return {
			name = action.gameName,
		}
	end,
})
