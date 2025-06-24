--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local isNewInGameMenuEnabled = require(CoreGui.RobloxGui.Modules.isNewInGameMenuEnabled)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TenFootSideBar = Roact.PureComponent:extend("TenFootSideBar")

function TenFootSideBar:init()
	self.sideBar = nil
end

function TenFootSideBar:render()
	return nil
end

function TenFootSideBar:openSidebar(player)
	local addGamerCardItem = false
	local addReportItem = not RunService:IsStudio() and player ~= Players.LocalPlayer

	if not (addReportItem or addGamerCardItem) then
		self.props.closeSideBar()
		return
	end

	local savedSelectedGuiObject = GuiService.SelectedCoreObject
	local screenManagerModule = RobloxGui.Modules:FindFirstChild("ScreenManager")
		or RobloxGui.Modules.Shell.ScreenManager
	local ScreenManager = require(screenManagerModule)
	local stringsModule = RobloxGui.Modules:FindFirstChild("LocalizedStrings")
		or RobloxGui.Modules.Shell.LocalizedStrings
	local Strings = require(stringsModule)

	if not self.sideBar then
		local sideBarModule = RobloxGui.Modules:FindFirstChild("SideBar") or RobloxGui.Modules.Shell.SideBar
		local createSideBarFunc = require(sideBarModule)
		self.sideBar = createSideBarFunc()
	end

	self.sideBar:RemoveAllItems()

	--We can't report localplayer
	if addReportItem then
		local loc_text = Strings:LocalizedString("ReportPlayer")
		self.sideBar:AddItem(loc_text, function()
			--Force closing player list before open the report tab
			self.props.closePlayerList()
			GuiService.SelectedCoreObject = nil
			if isNewInGameMenuEnabled() then
				-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
				local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
				InGameMenu.openReportDialog(player, self.__componentName)
			else
				local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
				ReportAbuseMenu:ReportPlayer(player, self.__componentName)
			end
		end)
	end

	local closedCon = nil
	--Will fire when sidebar closes, fires before the item callback
	closedCon = self.sideBar.Closed:connect(function()
		closedCon:disconnect()
		self.props.closeSideBar()
		if self.props.playerListVisible then
			if savedSelectedGuiObject and savedSelectedGuiObject.Parent then
				GuiService.SelectedCoreObject = savedSelectedGuiObject
			else
				--Toogle menu to reselect local players frame.
				self.props.closePlayerList()
				self.props.openPlayerList()
			end
		end
	end)

	ScreenManager:OpenScreen(self.sideBar, false)
end

function TenFootSideBar:didMount()
	if self.props.sideBarVisible then
		self:openSidebar(self.props.selectedPlayer)
	end
end

function TenFootSideBar:didUpdate(prevProps)
	if self.props.sideBarVisible and self.props.sideBarVisible ~= prevProps.sideBarVisible then
		self:openSidebar(self.props.selectedPlayer)
	end
end

local function mapStateToProps(state)
	return {
		selectedPlayer = state.playerDropDown.selectedPlayer,
		sideBarVisible = state.displayOptions.isTenFootInterface and state.playerDropDown.isVisible,
		playerListVisible = state.displayOptions.isVisible,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeSideBar = function()
			return dispatch(ClosePlayerDropDown())
		end,

		closePlayerList = function()
			return dispatch(SetPlayerListVisibility(false))
		end,

		openPlayerList = function()
			return dispatch(SetPlayerListVisibility(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TenFootSideBar)
