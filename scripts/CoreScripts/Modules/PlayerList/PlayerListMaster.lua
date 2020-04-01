local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagPlayerListPerformanceImprovements = require(RobloxGui.Modules.Flags.FFlagPlayerListPerformanceImprovements)

local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local PlayerList = script.Parent

local PlayerListApp = require(PlayerList.Components.PlayerListApp)
local Reducer = require(PlayerList.Reducers.Reducer)

local GlobalConfig = require(PlayerList.GlobalConfig)
local CreateLayoutValues = require(PlayerList.CreateLayoutValues)
local Connection = PlayerList.Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local LayoutValuesProvider = LayoutValues.Provider

local MakePlayerInfoRequests = require(PlayerList.Thunks.MakePlayerInfoRequests)

-- Actions
local SetPlayerListEnabled = require(PlayerList.Actions.SetPlayerListEnabled)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)
local SetTempHideKey = require(PlayerList.Actions.SetTempHideKey)
local SetTopBarEnabled = require(PlayerList.Actions.SetTopBarEnabled)
local SetTenFootInterface = require(PlayerList.Actions.SetTenFootInterface)
local SetSmallTouchDevice = require(PlayerList.Actions.SetSmallTouchDevice)
local AddPlayer = require(PlayerList.Actions.AddPlayer)
local SetPlayerFollowRelationship = require(PlayerList.Actions.SetPlayerFollowRelationship)
local AddTeam = require(PlayerList.Actions.AddTeam)
local AddPlayerToTeam = require(PlayerList.Actions.AddPlayerToTeam)
local SetIsUsingGamepad = require(PlayerList.Actions.SetIsUsingGamepad)
local SetHasPermissionToVoiceChat = require(PlayerList.Actions.SetHasPermissionToVoiceChat)

if not Players.LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local XPRIVILEGE_COMMUNICATION_VOICE_INGAME = 205

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")

local isNewTopBarEnabled = require(RobloxGui.Modules.TopBar.isNewTopBarEnabled)

local PlayerListMaster = {}
PlayerListMaster.__index = PlayerListMaster

function PlayerListMaster.new()
	local self = setmetatable({}, PlayerListMaster)

	if FFlagPlayerListDesignUpdate then
		Roact.setGlobalConfig({
			propValidation = GlobalConfig.propValidation,
			elementTracing = GlobalConfig.elementTracing,
		})
	end

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
		self.store:dispatch(SetPlayerListEnabled(false))
	end

	self.store:dispatch(SetSmallTouchDevice(SettingsUtil.IsSmallTouchScreen()))
	self.store:dispatch(SetTenFootInterface(TenFootInterface:IsEnabled()))
	if TenFootInterface:IsEnabled() then
		coroutine.wrap(function()
			pcall(function()
				--This is pcalled because platformService won't exist in Roblox studio when emulating xbox.
				local platformService = game:GetService("PlatformService")
				if platformService:BeginCheckXboxPrivilege(
					XPRIVILEGE_COMMUNICATION_VOICE_INGAME).PrivilegeCheckResult == "NoIssue" then
					self.store:dispatch(SetHasPermissionToVoiceChat(true))
				end
			end)
		end)()
	end

	local lastInputType = UserInputService:GetLastInputType()
	local isGamepad = lastInputType.Name:find("Gamepad")
	self.store:dispatch(SetIsUsingGamepad(isGamepad ~= nil))

	if not FFlagPlayerListPerformanceImprovements then
		self:_initalizePlayers()
		self:_initalizeTeams()
		self:_initalizeFollowingInfo()
	end
	if FFlagPlayerListPerformanceImprovements then
		self:_trackEnabled()
	end

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(
				TenFootInterface:IsEnabled(),
				SettingsUtil.IsSmallTouchScreen()
			)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				PlayerListApp = Roact.createElement(PlayerListApp)
			})
		})
	})

	self.element = Roact.mount(self.root, RobloxGui, "PlayerListMaster")

	if FFlagPlayerListPerformanceImprovements then
		self.topBarEnabled = true
		self.mounted = true
		self.coreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		self:_updateMounted()
	end

	if isNewTopBarEnabled() then
		self.SetVisibleChangedEvent = Instance.new("BindableEvent")

		self.store.changed:connect(function(newState, oldState)
			if newState.displayOptions.setVisible ~= oldState.displayOptions.setVisible then
				self.SetVisibleChangedEvent:Fire(newState.displayOptions.setVisible)
			end
		end)
	end

	return self
end

if FFlagPlayerListPerformanceImprovements then
	function PlayerListMaster:_updateMounted()
		if not TenFootInterface:IsEnabled() then
			local shouldMount = self.coreGuiEnabled and self.topBarEnabled
			if shouldMount and not self.mounted then
				self.element = Roact.mount(self.root, RobloxGui, "PlayerListMaster")
				self.mounted = true
			elseif not shouldMount and self.mounted then
				Roact.unmount(self.element)
				self.mounted = false
			end
		end
	end

	function PlayerListMaster:_trackEnabled()
		StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
			if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
				self.coreGuiEnabled = enabled
				self:_updateMounted()
				self.store:dispatch(SetPlayerListEnabled(enabled))
			end
		end)
	end
end

if not FFlagPlayerListPerformanceImprovements then
	function PlayerListMaster:_initalizePlayers()
		local players = Players:GetPlayers()
		for _, player in ipairs(players) do
			self.store:dispatch(AddPlayer(player))
			self.store:dispatch(MakePlayerInfoRequests(player))
		end
	end

	function PlayerListMaster:_initalizeTeams()
		for _, team in ipairs(Teams:GetTeams()) do
			self.store:dispatch(AddTeam(team))
			for _, player in ipairs(team:GetPlayers()) do
				self.store:dispatch(AddPlayerToTeam(player, team))
			end
		end
	end

	function PlayerListMaster:_initalizeFollowingInfo()
		if not TenFootInterface:IsEnabled() then
			coroutine.wrap(function()
				local getFollowRelationships = RobloxReplicatedStorage:WaitForChild("GetFollowRelationships", 300) or
					RobloxReplicatedStorage:WaitForChild("GetFollowRelationships")

				local followingInfo = getFollowRelationships:InvokeServer()
				for userIdStr, relationship in pairs(followingInfo) do
					local player = Players:GetPlayerByUserId(tonumber(userIdStr))
					if player then
						local isFollower = relationship.IsMutual or relationship.IsFollower
						local isFollowing = relationship.IsMutual or relationship.IsFollowing
						self.store:dispatch(SetPlayerFollowRelationship(player, isFollower, isFollowing))
					end
				end
			end)()
		end
	end
end

function PlayerListMaster:GetVisibility()
	return self.store:getState().displayOptions.isVisible
end

if isNewTopBarEnabled() then
	function PlayerListMaster:GetSetVisible()
		return self.store:getState().displayOptions.setVisible
	end

	function PlayerListMaster:GetSetVisibleChangedEvent()
		return self.SetVisibleChangedEvent
	end
end

function PlayerListMaster:SetVisibility(value)
	self.store:dispatch(SetPlayerListVisibility(value))
end

function PlayerListMaster:HideTemp(requester, hidden)
	if hidden == false then
		hidden = nil
	end
	self.store:dispatch(SetTempHideKey(requester, hidden))
end

function PlayerListMaster:SetTopBarEnabled(value)
	if FFlagPlayerListPerformanceImprovements then
		self.topBarEnabled = value
		self:_updateMounted()
	else
		self.store:dispatch(SetTopBarEnabled(value))
	end
end

return PlayerListMaster
