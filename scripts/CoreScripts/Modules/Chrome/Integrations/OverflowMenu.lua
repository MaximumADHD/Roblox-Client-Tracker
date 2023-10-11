local ChromeService = require(script.Parent.Parent.Service)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local CommonIcon = require(script.Parent.CommonIcon)
local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)

local leaderboardVisibility = MappedSignal.new(PlayerListMaster:GetSetVisibleChangedEvent().Event, function()
	return PlayerListMaster:GetSetVisible()
end)

local leaderboard = ChromeService:register({
	id = "leaderboard",
	label = "CoreScripts.TopBar.Leaderboard",
	activated = function(self)
		if VRService.VREnabled then
			local InGameMenu = require(RobloxGui.Modules.InGameMenu)
			InGameMenu.openPlayersPage()
		else
			if PlayerListMaster:GetSetVisible() then
				PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
			else
				ChromeUtils.dismissRobloxMenuAndRun(function()
					PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
				end)
			end
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/leaderboardOff", "icons/controls/leaderboardOn", leaderboardVisibility)
		end,
	},
})
ChromeUtils.setCoreGuiAvailability(leaderboard, Enum.CoreGuiType.PlayerList)

local emotesVisibility = MappedSignal.new(EmotesMenuMaster.EmotesMenuToggled.Event, function()
	return EmotesMenuMaster:isOpen()
end)
local emotes = ChromeService:register({
	id = "emotes",
	label = "CoreScripts.TopBar.Emotes",
	activated = function(self)
		if EmotesMenuMaster:isOpen() then
			EmotesMenuMaster:close()
		else
			--if self.chatWasHidden then
			--	ChatSelector:SetVisible(true)
			--	self.chatWasHidden = false
			--end
			ChromeUtils.dismissRobloxMenuAndRun(function()
				EmotesMenuMaster:open()
			end)
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/emoteOff", "icons/controls/emoteOn", emotesVisibility)
		end,
	},
})

local coreGuiEmoteAvailable = false
local emoteMounted = EmotesMenuMaster.MenuIsVisible

function updateEmoteAvailability()
	if coreGuiEmoteAvailable and emoteMounted then
		emotes.availability:available()
	else
		emotes.availability:unavailable()
	end
end

ChromeUtils.setCoreGuiAvailability(emotes, Enum.CoreGuiType.EmotesMenu, function(available)
	coreGuiEmoteAvailable = available
	updateEmoteAvailability()
end)

EmotesMenuMaster.MenuVisibilityChanged.Event:Connect(function()
	emoteMounted = EmotesMenuMaster.MenuIsVisible
	updateEmoteAvailability()
end)

local backpackVisibility = MappedSignal.new(BackpackModule.StateChanged.Event, function()
	return BackpackModule.IsOpen
end)
local backpack = ChromeService:register({
	id = "backpack",
	label = "CoreScripts.TopBar.Inventory",
	activated = function(self)
		if BackpackModule.IsOpen then
			BackpackModule:OpenClose()
		else
			ChromeUtils.dismissRobloxMenuAndRun(function()
				BackpackModule:OpenClose()
			end)
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/inventoryOff", "icons/menu/inventory", backpackVisibility)
		end,
	},
})
ChromeUtils.setCoreGuiAvailability(backpack, Enum.CoreGuiType.Backpack)

local respawn = ChromeService:register({
	id = "respawn",
	label = "CoreScripts.InGameMenu.QuickActions.Respawn",
	activated = function(self)
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ResetCharacterPage)
		SettingsHub:SwitchToPage(SettingsHub.Instance.ResetCharacterPage)
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/actions/respawn")
		end,
	},
})

function updateRespawn(enabled)
	if enabled then
		respawn.availability:available()
	else
		respawn.availability:unavailable()
	end
end

task.defer(function()
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	SettingsHub.RespawnBehaviourChangedEvent.Event:connect(updateRespawn)
	updateRespawn(SettingsHub:GetRespawnBehaviour())
end)

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
	label = "CoreScripts.TopBar.MoreMenu",
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/9dot", "icons/menu/9dot", submenuVisibility)
		end,
	},
})
