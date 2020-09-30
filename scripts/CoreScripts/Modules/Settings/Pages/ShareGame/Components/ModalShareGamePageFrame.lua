local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)

local ShareGame = Modules.Settings.Pages.ShareGame
local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local ToasterComponent = require(ShareGame.Components.ErrorToaster)
local BackButton = require(ShareGame.Components.BackButton)

local isSelectionGroupEnabled = require(ShareGame.isSelectionGroupEnabled)

local HEADER_HEIGHT = 60
local USER_LIST_PADDING = 10
local CONTENT_PADDING = 15

local CONVERSATION_ENTRY_HEIGHT = 62
local CONVERSATION_ENTRY_PADDING = 18

local CLAMP_TO_FIVE_HALF_ENTRIES = (HEADER_HEIGHT)
	+ ((CONVERSATION_ENTRY_HEIGHT + CONVERSATION_ENTRY_PADDING) * 5.5)

local MAX_MODAL_WIDTH = UDim.new(0.8, 320)
local MAX_MODAL_HEIGHT = UDim.new(0.7, CLAMP_TO_FIVE_HALF_ENTRIES)
local POSITION_HEIGHT_OFFSET = 0.075

local IMAGE_ROUNDED_BACKGROUND = "rbxasset://textures/ui/LuaChat/9-slice/btn-control-sm.png"

-- Color 41/41/41 comes from the SettingsShield background color
local SETTINGS_SHIELD_BACKGROUND_COLOR = Color3.fromRGB(41, 41, 41)
local BACKGROUND_BORDER_RADIUS = 3

local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")

local ModalShareGamePageFrame = Roact.PureComponent:extend("ModalShareGamePageFrame")
ModalShareGamePageFrame.defaultProps = {
	isVisible = true,
}

function ModalShareGamePageFrame:init()
	self.onClosePage = function()
		self.props.closePage()
		if self.props.onAfterClosePage then
			self.props.onAfterClosePage()
		end
	end
end

function ModalShareGamePageFrame:render()
	local analytics = self.props.analytics
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local searchAreaActive = self.props.searchAreaActive
	local searchText = self.props.searchText

	local isVisible = nil
	if isSelectionGroupEnabled() then
		isVisible = self.props.isVisible
	end

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = IMAGE_ROUNDED_BACKGROUND,
		ImageColor3 = SETTINGS_SHIELD_BACKGROUND_COLOR,
		ImageTransparency = 0.1,
		Modal = isVisible,
		Position = UDim2.new(0.5, 0, 0.5 - POSITION_HEIGHT_OFFSET, 0),
		Size = UDim2.new(MAX_MODAL_WIDTH.Scale, 0, MAX_MODAL_HEIGHT.Scale, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(
			Vector2.new(BACKGROUND_BORDER_RADIUS, BACKGROUND_BORDER_RADIUS),
			Vector2.new(BACKGROUND_BORDER_RADIUS, BACKGROUND_BORDER_RADIUS)
		),
	}, {
		sizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(MAX_MODAL_WIDTH.Offset, MAX_MODAL_HEIGHT.Offset),
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

			Header = Roact.createElement(Header, {
				deviceLayout = deviceLayout,
				size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				layoutOrder = 0,
				zIndex = zIndex,
				closePage = self.onClosePage,
				searchAreaActive = searchAreaActive,
				toggleSearchIcon = true,
				iconType = FFlagLuaInviteModalEnabled and BackButton.IconType.Cross or nil,
			}),
			ConversationList = Roact.createElement(ConversationList, {
				analytics = analytics,
				size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
				topPadding = USER_LIST_PADDING,
				layoutOrder = 1,
				zIndex = zIndex,
				searchText = searchText,
				entryHeight = CONVERSATION_ENTRY_HEIGHT,
				entryPadding = CONVERSATION_ENTRY_PADDING,
				isVisible = isVisible,
			})
		})
	})
end

return ModalShareGamePageFrame
