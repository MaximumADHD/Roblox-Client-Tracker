local ChromeService = require(script.Parent.Parent.Service)
local ChromeTypes = require(script.Parent.Parent.Service.Types)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local CommonIcon = require(script.Parent.CommonIcon)
local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local StarterGui = game:GetService("StarterGui")
local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)

function setCoreGuiAvailability(integration: ChromeTypes.IntegrationProps, coreGui)
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

local leaderboardVisibility = MappedSignal.new(PlayerListMaster:GetSetVisibleChangedEvent().Event, function()
	return PlayerListMaster:GetSetVisible()
end)

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
			return CommonIcon("icons/controls/leaderboardOff", "icons/controls/leaderboardOn", leaderboardVisibility)
		end,
	},
})
setCoreGuiAvailability(leaderboard, Enum.CoreGuiType.PlayerList)

local emotesVisibility = MappedSignal.new(EmotesMenuMaster.EmotesMenuToggled.Event, function()
	return EmotesMenuMaster:isOpen()
end)
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
			return CommonIcon("icons/controls/emoteOff", "icons/controls/emoteOn", emotesVisibility)
		end,
	},
})
setCoreGuiAvailability(emotes, Enum.CoreGuiType.EmotesMenu)

local backpackVisibility = MappedSignal.new(BackpackModule.StateChanged.Event, function()
	return BackpackModule.IsOpen
end)
local backpack = ChromeService:register({
	id = "backpack",
	label = "Inventory",
	activated = function(self)
		BackpackModule:OpenClose()
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/inventoryOff", "icons/menu/inventory", backpackVisibility)
		end,
	},
})
setCoreGuiAvailability(backpack, Enum.CoreGuiType.Backpack)

-- todo: reduce external boilerplate for a signal sourced directly from ChromeService
local currentSubMenu = ChromeService:currentSubMenu()
local submenuVisibility = MappedSignal.new(currentSubMenu:signal(), function()
	return currentSubMenu:get() == "nine_dot"
end)

submenuVisibility:connect(function(menuVisible)
	PlayerListMaster:SetMinimized(menuVisible)
end)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	notification = ChromeService:subMenuNotifications("nine_dot"),
	id = "nine_dot",
	label = "Overflow Menu",
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/9dot", "icons/menu/9dot", submenuVisibility)
		end,
	},
})
