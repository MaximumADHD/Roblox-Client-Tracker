--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)

local CommonConstants = require(RobloxGui.Modules.Common.Constants)
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Promise = require(CorePackages.Promise)
local utility = require(RobloxGui.Modules.Settings.Utility)
local Theme = require(RobloxGui.Modules.Settings.Theme)

local GetFFlagEnableNewInviteMenu = require(Modules.Flags.GetFFlagEnableNewInviteMenu)
local GetFFlagInviteFriendsDesignUpdates = require(Modules.Settings.Flags.GetFFlagInviteFriendsDesignUpdates)
local GetFFlagShareInviteLinkContextMenuV1Enabled =
	require(Modules.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1Enabled)

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local httpRequest = require(Modules.Common.httpRequest)

local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local Constants = require(ShareGame.Constants)
local ShareInviteLink = require(ShareGame.Components.ShareInviteLink)
local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

local BackButton = require(ShareGame.Components.BackButton)

local SetGameInfoCreated = require(ShareGame.Actions.SetGameInfoCreated)

local USER_LIST_PADDING = 10
local SHARE_INVITE_LINK_HEIGHT = 44
if GetFFlagInviteFriendsDesignUpdates() and GetFFlagEnableNewInviteMenu() then
	USER_LIST_PADDING = 16
	SHARE_INVITE_LINK_HEIGHT = 52
end

local ShareGamePageFrame = Roact.PureComponent:extend("ShareGamePageFrame")

local ToasterComponent = require(ShareGame.Components.ErrorToaster)

function ShareGamePageFrame:init()
	if GetFFlagShareInviteLinkContextMenuV1Enabled() then
		self.state = {
			serverType = nil,
		}
	end
end

function ShareGamePageFrame:shouldShowInviteLink(gameInfo)
	if
		GetFFlagShareInviteLinkContextMenuV1Enabled()
		and self.state.serverType == CommonConstants.STANDARD_SERVER
		and utility:IsExperienceOlderThanOneWeek(gameInfo)
	then
		return true
	end

	return false
end

function ShareGamePageFrame:didMount()
	if GetFFlagShareInviteLinkContextMenuV1Enabled() then
		self.props.fetchGameInfo()
		if self.state.serverType == nil then
			Promise.try(function()
				local serverTypeRemote = RobloxReplicatedStorage:WaitForChild("GetServerType", math.huge)
				return serverTypeRemote:InvokeServer()
			end):andThen(function(serverType)
				self:setState({ serverType = serverType })
			end)
		end
	end
end

function ShareGamePageFrame:render()
	local analytics = self.props.analytics
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local closePage = self.props.closePage
	local searchAreaActive = self.props.searchAreaActive
	local searchText = self.props.searchText

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local headerHeight = layoutSpecific.HEADER_HEIGHT
	local isDesktop = deviceLayout == Constants.DeviceLayout.DESKTOP
	local iconType = not isDesktop and BackButton.IconType.Arrow or BackButton.IconType.None
	local toggleSearchIcon = not isDesktop

	local isVisible = self.props.isVisible
	local showInviteLink = self:shouldShowInviteLink(self.props.gameInfo)
	local listHeightOffset = 0
	local listPositionOffset = 0
	if showInviteLink and Theme.UIBloxThemeEnabled then
		listHeightOffset = listHeightOffset - SHARE_INVITE_LINK_HEIGHT
		listPositionOffset = 10
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		ZIndex = zIndex,
		AutoLocalize = false,
	}, {
		toasterPortal = Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			Toaster = Roact.createElement(ToasterComponent),
		}),

		Header = Roact.createElement(Header, {
			deviceLayout = deviceLayout,
			size = UDim2.new(1, 0, 0, headerHeight),
			position = UDim2.new(0, 0, 0, -headerHeight),
			layoutOrder = 0,
			zIndex = zIndex,
			closePage = closePage,
			searchAreaActive = searchAreaActive,
			toggleSearchIcon = toggleSearchIcon,
			iconType = iconType,
			analytics = analytics,
		}),
		ShareInviteLink = showInviteLink and Roact.createElement(ShareInviteLink, {
			position = UDim2.new(0, 0, 0, listPositionOffset),
			analytics = analytics,
			deviceLayout = deviceLayout,
			size = UDim2.new(1, 0, 0, SHARE_INVITE_LINK_HEIGHT),
			layoutOrder = 1,
			zIndex = zIndex,
		}) or nil,
		ConversationList = Roact.createElement(ConversationList, {
			analytics = analytics,
			size = UDim2.new(1, 0, 1, layoutSpecific.EXTEND_BOTTOM_SIZE - USER_LIST_PADDING + listHeightOffset),
			topPadding = showInviteLink and USER_LIST_PADDING + SHARE_INVITE_LINK_HEIGHT + listPositionOffset
				or USER_LIST_PADDING,
			layoutOrder = showInviteLink and 2 or 1,
			zIndex = zIndex,
			searchText = searchText,
			isVisible = isVisible,
			trigger = "GameMenu",
		}),
	})
end

if GetFFlagShareInviteLinkContextMenuV1Enabled() then
	ShareGamePageFrame = RoactRodux.connect(function(state)
		return {
			gameInfo = state.GameInfo,
		}
	end, function(dispatch)
		return {
			fetchGameInfo = function()
				local httpImpl = httpRequest(HttpRbxApiService)
				GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(result)
					dispatch(SetGameInfoCreated(result.Created))
				end)
			end,
		}
	end)(ShareGamePageFrame)
end

return ShareGamePageFrame
