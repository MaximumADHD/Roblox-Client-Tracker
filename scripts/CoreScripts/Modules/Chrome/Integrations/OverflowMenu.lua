local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local StarterGui = game:GetService("StarterGui")
local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)

function setCoreGuiAvailability(integration, coreGui)
	local function updateAvailable()
		local available = StarterGui:GetCoreGuiEnabled(coreGui)
		if available then
			integration.availability:available()
		else
			integration.availability:unavailable()
		end
	end

	local disconnect = StarterGui.CoreGuiChangedSignal:Connect(updateAvailable)
	updateAvailable()
	return disconnect
end

local leaderboard = ChromeService:register({
	id = "leaderboard",
	label = "Leaderboard",
	activated = function(self)
		if VRService.VREnabled then
			local InGameMenu = require(RobloxGui.Modules.InGameMenu)
			InGameMenu.openPlayersPage()
		else
			PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("rbxasset://textures/ui/TopBar/leaderboardOff.png")
		end,
	},
})
setCoreGuiAvailability(leaderboard, Enum.CoreGuiType.PlayerList)

local emotes = ChromeService:register({
	id = "emotes",
	label = "Emotes",
	activated = function(self)
		if EmotesMenuMaster:isOpen() then
			EmotesMenuMaster:close()
		else
			--if self.chatWasHidden then
			--	ChatSelector:SetVisible(true)
			--	self.chatWasHidden = false
			--end
			EmotesMenuMaster:open()
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/emoteOff")
		end,
	},
})
setCoreGuiAvailability(emotes, Enum.CoreGuiType.EmotesMenu)

local backpack = ChromeService:register({
	id = "backpack",
	label = "Inventory",
	activated = function(self)
		BackpackModule:OpenClose()
	end,
	components = {
		Icon = function(props)
			return CommonIcon("rbxasset://textures/ui/TopBar/inventoryOff.png")
		end,
	},
})
setCoreGuiAvailability(backpack, Enum.CoreGuiType.Backpack)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "nine_dot",
	label = "Overflow Menu",
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/more_off")
		end,
	},
})
