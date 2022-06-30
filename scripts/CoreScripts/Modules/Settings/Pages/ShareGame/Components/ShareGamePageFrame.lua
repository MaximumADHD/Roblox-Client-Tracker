local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")

local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local isSelectionGroupEnabled = require(ShareGame.isSelectionGroupEnabled)

local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local httpRequest
if not FFlagLuaInviteModalEnabled then
	httpRequest = require(AppTempCommon.Temp.httpRequest)
end

local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local Constants = require(ShareGame.Constants)
local ShareInviteLink = require(ShareGame.Components.ShareInviteLink)
local GetFFlagShareInviteLinkContextMenuV1Enabled = require(Modules.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1Enabled)

local FetchUserFriends
local ClosePage
local BackButton
if FFlagLuaInviteModalEnabled then
	BackButton = require(ShareGame.Components.BackButton)
else
	FetchUserFriends = require(ShareGame.Thunks.FetchUserFriends)
	ClosePage = require(ShareGame.Actions.ClosePage)
end

local USER_LIST_PADDING = 10
local SHARE_INVITE_LINK_HEIGHT = 44

local ShareGamePageFrame = Roact.PureComponent:extend("ShareGamePageFrame")

local ToasterComponent = require(ShareGame.Components.ErrorToaster)

if not FFlagLuaInviteModalEnabled then
	function ShareGamePageFrame:init()
		self.props.reFetch()
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
	local isDesktop
	local iconType
	local toggleSearchIcon
	if FFlagLuaInviteModalEnabled then
		isDesktop = deviceLayout == Constants.DeviceLayout.DESKTOP
		iconType = not isDesktop and BackButton.IconType.Arrow or BackButton.IconType.None

		toggleSearchIcon = not isDesktop
	end

	local isVisible = nil
	if isSelectionGroupEnabled() then
		isVisible = self.props.isVisible
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
		}),
		ShareInviteLink = GetFFlagShareInviteLinkContextMenuV1Enabled()
			and Roact.createElement(ShareInviteLink, {
				analytics = analytics,
				deviceLayout = deviceLayout,
				size = UDim2.new(1, 0, 0, SHARE_INVITE_LINK_HEIGHT),
				layoutOrder = 1,
				zIndex = zIndex
			})
			or nil,
		ConversationList = Roact.createElement(ConversationList, {
			analytics = analytics,
			size = UDim2.new(1, 0, 1, layoutSpecific.EXTEND_BOTTOM_SIZE - USER_LIST_PADDING),
			topPadding = GetFFlagShareInviteLinkContextMenuV1Enabled() and USER_LIST_PADDING + SHARE_INVITE_LINK_HEIGHT or USER_LIST_PADDING,
			layoutOrder = GetFFlagShareInviteLinkContextMenuV1Enabled() and 2 or 1,
			zIndex = zIndex,
			searchText = searchText,
			isVisible = isVisible,
		}),
	})
end

if not FFlagLuaInviteModalEnabled then
	-- This logic is being moved to ShareGameContainer.lua
	-- so it can be shared with this file and ModalShareGamePageFrame.lua
	ShareGamePageFrame = RoactRodux.UNSTABLE_connect2(
		function(state, props)
			return {
				deviceLayout = state.DeviceInfo.DeviceLayout,
				searchAreaActive = state.ConversationsSearch.SearchAreaActive,
				searchText = state.ConversationsSearch.SearchText,
			}
		end,
		function(dispatch)
			return {
				closePage = function()
					dispatch(ClosePage(Constants.PageRoute.SHARE_GAME))
				end,

				reFetch = function()
					local userId = tostring(Players.LocalPlayer.UserId)
					local requestImpl = httpRequest(HttpRbxApiService)

					dispatch(FetchUserFriends(requestImpl, userId))
				end
			}
		end
	)(ShareGamePageFrame)
end

return ShareGamePageFrame
