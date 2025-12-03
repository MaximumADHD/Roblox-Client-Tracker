--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local InviteEvents = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local ToasterComponent = require(ShareGame.Components.ErrorToaster)
local BackButton = require(ShareGame.Components.BackButton)
local Text = require(CorePackages.Workspace.Packages.AppCommonLib).Text
local Theme = require(RobloxGui.Modules.Settings.Theme)

local GetFFlagEnableNewInviteMenu = require(Modules.Flags.GetFFlagEnableNewInviteMenu)
local GetFFlagEnableNewInviteSendEndpoint = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)

local HEADER_HEIGHT = 60
local USER_LIST_PADDING = 10
local CONTENT_PADDING = 15

local HEADER_HEIGHT_NEW = 40
local HEADER_PADDING = 10

local CONVERSATION_ENTRY_HEIGHT = 62
local CONVERSATION_ENTRY_PADDING = 18

local CLAMP_TO_FIVE_HALF_ENTRIES = HEADER_HEIGHT + ((CONVERSATION_ENTRY_HEIGHT + CONVERSATION_ENTRY_PADDING) * 5.5)

local MAX_MODAL_WIDTH = UDim.new(0.8, 320)
local MAX_MODAL_HEIGHT = UDim.new(0.7, CLAMP_TO_FIVE_HALF_ENTRIES)
local POSITION_HEIGHT_OFFSET = 0.075

local NEW_MAX_MODAL_WIDTH = UDim.new(0.8, 440)

local IMAGE_ROUNDED_BACKGROUND = "rbxasset://textures/ui/LuaChat/9-slice/btn-control-sm.png"

-- Color 41/41/41 comes from the SettingsShield background color
local SETTINGS_SHIELD_BACKGROUND_COLOR = Color3.fromRGB(41, 41, 41)
local BACKGROUND_BORDER_RADIUS = 3

local ModalShareGamePageFrame = Roact.PureComponent:extend("ModalShareGamePageFrame")
ModalShareGamePageFrame.defaultProps = {
	isVisible = true,
}

function ModalShareGamePageFrame:init()
	self.state = {
		promptMessageFitsFrame = true,
	}

	self.onCustomTextAreaSizeChange = function(rbx)
		local deviceLayout = self.props.deviceLayout
		local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
		local promptMessage = self.props.promptMessage
		local promptTextSize = Theme.textSize(layoutSpecific.PAGE_TITLE_TEXT_SIZE)
		self:setState({
			promptMessageFitsFrame = promptMessage
				and Text.GetTextWidth(promptMessage, Theme.font(Enum.Font.SourceSans), promptTextSize)
					< rbx.AbsoluteSize.X,
		})
	end
	self.customTextAreaRef = Roact.createRef()

	self.onClosePage = function()
		self.props.closePage()
		if self.props.onAfterClosePage then
			self.props.onAfterClosePage()
		end
	end
end

function ModalShareGamePageFrame:didMount()
	if GetFFlagEnableNewInviteMenu() then
		if self.customTextAreaRef.current then
			self.onCustomTextAreaSizeChange(self.customTextAreaRef.current)
		end
	end
	if GetFFlagEnableNewInviteSendEndpoint() then
		if self.props.promptMessage and self.props.analytics then
			self.props.analytics:sendEvent(Constants.Triggers.DeveloperMultiple, InviteEvents.CustomTextShown)
		end
	end
end

function ModalShareGamePageFrame:render()
	local analytics = self.props.analytics
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local searchAreaActive = self.props.searchAreaActive
	local searchText = self.props.searchText

	local isVisible = self.props.isVisible

	local isNewUI = GetFFlagEnableNewInviteMenu()
	local modalWidth = if isNewUI then NEW_MAX_MODAL_WIDTH else MAX_MODAL_WIDTH

	local useMobileLandscapeLayout = isNewUI
		and self.props.deviceInfo
		and self.props.deviceInfo.DeviceLayout == Constants.DeviceLayout.PHONE_LANDSCAPE

	local anchorPoint = Vector2.new(0.5, 0.5)
	local size = UDim2.new(modalWidth.Scale, 0, MAX_MODAL_HEIGHT.Scale, 0)
	local maxSize = Vector2.new(modalWidth.Offset, MAX_MODAL_HEIGHT.Offset)
	local position = UDim2.new(0.5, 0, 0.5 - POSITION_HEIGHT_OFFSET, 0)
	if useMobileLandscapeLayout then
		anchorPoint = Vector2.new(0.5, 1)
		size = UDim2.new(modalWidth.Scale, 0, 1, 0)
		maxSize = Vector2.new(modalWidth.Offset, math.huge)
		position = UDim2.new(0.5, 0, 1, 4)
	end

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local promptMessage = self.props.promptMessage
	local promptTextSize = Theme.textSize(layoutSpecific.PAGE_TITLE_TEXT_SIZE)
	local displayCustomText = isNewUI and promptMessage and self.state.promptMessageFitsFrame
	local customTextHeight = if displayCustomText then promptTextSize + HEADER_PADDING else HEADER_PADDING

	local headerSpace = if isNewUI then HEADER_HEIGHT_NEW + customTextHeight else HEADER_HEIGHT

	return Roact.createElement("ImageButton", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		Image = IMAGE_ROUNDED_BACKGROUND,
		ImageColor3 = SETTINGS_SHIELD_BACKGROUND_COLOR,
		ImageTransparency = 0.1,
		Modal = isVisible,
		Position = position,
		Size = size,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(
			Vector2.new(BACKGROUND_BORDER_RADIUS, BACKGROUND_BORDER_RADIUS),
			Vector2.new(BACKGROUND_BORDER_RADIUS, BACKGROUND_BORDER_RADIUS)
		),
	}, {
		sizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = maxSize,
		}),
		uiPadding2 = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, CONTENT_PADDING),
			PaddingRight = UDim.new(0, CONTENT_PADDING),
			PaddingBottom = UDim.new(0, CONTENT_PADDING),
		}),
		content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			ZIndex = zIndex,
		}, {
			toasterPortal = Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				Toaster = Roact.createElement(ToasterComponent),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Padding = if isNewUI
				then Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, HEADER_PADDING),
				})
				else nil,

			Header = Roact.createElement(Header, {
				deviceLayout = deviceLayout,
				size = UDim2.new(1, 0, 0, if isNewUI then HEADER_HEIGHT_NEW else HEADER_HEIGHT),
				layoutOrder = 0,
				zIndex = zIndex,
				closePage = self.onClosePage,
				searchAreaActive = searchAreaActive,
				toggleSearchIcon = true,
				iconType = BackButton.IconType.Cross,
			}),
			CustomText = isNewUI and Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, customTextHeight),
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = promptTextSize,
				TextColor3 = Constants.Color.WHITE,
				Font = Theme.font(Enum.Font.SourceSans),
				BackgroundTransparency = 1,
				Text = if displayCustomText then promptMessage else "",
				[Roact.Change.AbsoluteSize] = self.onCustomTextAreaSizeChange,
				[Roact.Ref] = self.customTextAreaRef,
			}),
			ConversationList = Roact.createElement(ConversationList, {
				analytics = analytics,
				size = UDim2.new(1, 0, 1, -headerSpace),
				topPadding = USER_LIST_PADDING,
				layoutOrder = 1,
				zIndex = zIndex,
				searchText = searchText,
				entryHeight = CONVERSATION_ENTRY_HEIGHT,
				entryPadding = CONVERSATION_ENTRY_PADDING,
				isVisible = isVisible,
				trigger = Constants.Triggers.DeveloperMultiple,
				inviteMessageId = self.props.inviteMessageId,
				launchData = self.props.launchData,
			}),
		}),
	})
end

ModalShareGamePageFrame = RoactRodux.connect(function(state)
	return {
		deviceInfo = state.DeviceInfo,
	}
end)(ModalShareGamePageFrame)

return ModalShareGamePageFrame
