local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local TenFootSideBar = Roact.Component:extend("TenFootSideBar")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local function openPlatformProfileUI(platformId)
	pcall(function()
		local platformService = game:GetService("PlatformService")
		if platformId and #platformId > 0 then
			platformService:PopupProfileUI(Enum.UserInputType.Gamepad1, platformId)
		end
	end)
end

function TenFootSideBar:init()
	self.sideBar = nil
end

function TenFootSideBar:render()
	return nil
end

function TenFootSideBar:shouldShowSidebar(player, platformId)
	local addReportItem = false
	if player ~= Players.LocalPlayer then
		addReportItem = true
	end
	local addGamerCardItem = false
	if platformId and #platformId > 0 then
		addGamerCardItem = true
	end
	return addReportItem, addGamerCardItem
end

function TenFootSideBar:openSidebar(player)
	local platformId
	pcall(function()
		local platformService = game:GetService("PlatformService")
		platformId = platformService:GetPlatformId(player.UserId)
	end)

	local addReportItem, addGamerCardItem = self:shouldShowSidebar(player, platformId)

	if not (addReportItem or addGamerCardItem) then
		self.props.closeSideBar()
		return
	end

	local savedSelectedGuiObject = GuiService.SelectedCoreObject
	local screenManagerModule = RobloxGui.Modules:FindFirstChild("ScreenManager") or RobloxGui.Modules.Shell.ScreenManager
	local ScreenManager = require(screenManagerModule)
	local stringsModule = RobloxGui.Modules:FindFirstChild("LocalizedStrings") or RobloxGui.Modules.Shell.LocalizedStrings
	local Strings = require(stringsModule)

	self.sideBar:RemoveAllItems()
	if addGamerCardItem then
		self.sideBar:AddItem(Strings:LocalizedString("ViewGamerCardWord"), function()
			openPlatformProfileUI(platformId)
		end)
	end

	local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)

	--We can't report guests/localplayer
	if addReportItem then
		self.sideBar:AddItem(Strings:LocalizedString("Report Player"), function()
			--Force closing player list before open the report tab
			self.props.closePlayerList()
			GuiService.SelectedCoreObject = nil
			ReportAbuseMenu:ReportPlayer(player)
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
	local sideBarModule = RobloxGui.Modules:FindFirstChild("SideBar") or RobloxGui.Modules.Shell.SideBar
	local createSideBarFunc = require(sideBarModule)
	self.sideBar = createSideBarFunc()

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

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TenFootSideBar)