local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local UpdateCoreGuiEnabled = require(Actions.UpdateCoreGuiEnabled)

local initialCoreGuiEnabled = {
	[Enum.CoreGuiType.PlayerList] = true,
	[Enum.CoreGuiType.Health] = true,
	[Enum.CoreGuiType.Backpack] = true,
	[Enum.CoreGuiType.Chat] = true,
	[Enum.CoreGuiType.EmotesMenu] = true,
}

local CoreGuiEanbled = Rodux.createReducer(initialCoreGuiEnabled, {
	[UpdateCoreGuiEnabled.name] = function(state, action)
		if action.coreGuiType == Enum.CoreGuiType.All then
			local newState = {}
			for coreGuiType, _ in pairs(state) do
				newState[coreGuiType] = action.enabled
			end
			return newState
		else
			return Cryo.Dictionary.join(state, {
				[action.coreGuiType] = action.enabled,
			})
		end
	end,
})

return CoreGuiEanbled
