local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local TopBar = script.Parent.Parent

local Actions = TopBar.Actions
local UpdateCoreGuiEnabled = require(Actions.UpdateCoreGuiEnabled)
local FFlagMountCoreGuiBackpack = require(RobloxGui.Modules.Flags.FFlagMountCoreGuiBackpack)


local initialCoreGuiEnabled = nil
if FFlagMountCoreGuiBackpack then
		initialCoreGuiEnabled = {
			[Enum.CoreGuiType.PlayerList] = true,
			[Enum.CoreGuiType.Health] = true,
			[Enum.CoreGuiType.Chat] = true,
			[Enum.CoreGuiType.EmotesMenu] = true,
		}
else
		initialCoreGuiEnabled = {
			[Enum.CoreGuiType.PlayerList] = true,
			[Enum.CoreGuiType.Health] = true,
			[Enum.CoreGuiType.Backpack] = true,
			[Enum.CoreGuiType.Chat] = true,
			[Enum.CoreGuiType.EmotesMenu] = true,
		}
end

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
