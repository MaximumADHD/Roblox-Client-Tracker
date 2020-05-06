local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle
local Badge = UIBlox.App.Indicator.Badge

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local IconButton = require(script.Parent.IconButton)

local FFlagTopBarUseNewIcons = require(RobloxGui.Modules.Flags.FFlagTopBarUseNewIcons)
local FFlagTopBarHightightIconsOnHover = require(RobloxGui.Modules.Flags.FFlagTopBarHightightIconsOnHover)

local GameSettings = UserSettings().GameSettings

local ChatIcon = Roact.PureComponent:extend("ChatIcon")

local CHAT_ICON_AREA_WIDTH = 44
local CHAT_ICON_SIZE = 36

local BACKGROUND_SIZE = 32
local ICON_SIZE = 20
local BADGE_OFFSET_X = 18
local BADGE_OFFSET_Y = 2

ChatIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,

	chatVisible = t.boolean,
	unreadMessages = t.integer,

	topBarEnabled = t.boolean,
	chatEnabled = t.boolean,
})

if FFlagTopBarHightightIconsOnHover then
	function ChatIcon:init()
		self.chatIconActivated = function()
			ChatSelector:ToggleVisibility()
			GameSettings.ChatVisible = ChatSelector:GetVisibility()
		end
	end
end

function ChatIcon:render()
	return withStyle(function(style)
		local chatEnabled = self.props.topBarEnabled and self.props.chatEnabled and not TenFootInterface:IsEnabled()

		if FFlagTopBarUseNewIcons then
			local chatIcon = "rbxasset://textures/ui/TopBar/chatOn.png"
			if not self.props.chatVisible then
				chatIcon = "rbxasset://textures/ui/TopBar/chatOff.png"
			end

			return Roact.createElement("TextButton", {
				Text = "",
				Visible = chatEnabled,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, CHAT_ICON_AREA_WIDTH, 1, 0),
				LayoutOrder = self.props.layoutOrder,

				[Roact.Event.Activated] = (not FFlagTopBarHightightIconsOnHover) and function()
					ChatSelector:ToggleVisibility()
					GameSettings.ChatVisible = ChatSelector:GetVisibility()
				end or nil,
			}, {
				Background = FFlagTopBarHightightIconsOnHover and Roact.createElement(IconButton, {
					icon = chatIcon,
					iconSize = ICON_SIZE,

					onActivated = self.chatIconActivated,
				}) or Roact.createElement(ImageSetLabel, {
					ZIndex = 1,
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),
					Size = UDim2.fromOffset(BACKGROUND_SIZE, BACKGROUND_SIZE),
					Image = "rbxasset://textures/ui/TopBar/iconBase.png",
				}, {
					ChatIcon = Roact.createElement(ImageSetLabel, {
						Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Image = chatIcon,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						ImageTransparency = style.Theme.IconEmphasis.Transparency,
					}),
				}),

				BadgeContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = 2,
				}, {
					Badge = self.props.unreadMessages > 0 and Roact.createElement(Badge, {
						position = UDim2.fromOffset(BADGE_OFFSET_X, BADGE_OFFSET_Y),
						anchorPoint = Vector2.new(0, 0),

						hasShadow = false,
						value = self.props.unreadMessages,
					})
				})
			})
		else
			local chatIcon = Images["icons/menu/chat_on"]
			local chatDropShadow = Images["component_assets/dropshadow_chatOn"]
			if not self.props.chatVisible then
				chatIcon = Images["icons/menu/chat_off"]
				chatDropShadow = Images["component_assets/dropshadow_chatOff"]
			end

			return Roact.createElement("TextButton", {
				Text = "",
				Visible = chatEnabled,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, CHAT_ICON_AREA_WIDTH, 1, 0),
				LayoutOrder = self.props.layoutOrder,

				[Roact.Event.Activated] = function()
					ChatSelector:ToggleVisibility()
					GameSettings.ChatVisible = ChatSelector:GetVisibility()
				end,
			}, {
				ChatDropShadow = Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(0, CHAT_ICON_SIZE, 0, CHAT_ICON_SIZE),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Image = chatDropShadow,
					ZIndex = 1,
				}),

				ChatIcon = Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(0, CHAT_ICON_SIZE, 0, CHAT_ICON_SIZE),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Image = chatIcon,
					ImageColor3 = style.Theme.IconEmphasis.Color,
					ImageTransparency = style.Theme.IconEmphasis.Transparency,
					ZIndex = 2,
				}, {
					Badge = self.props.unreadMessages > 0 and Roact.createElement(Badge, {
						position = UDim2.new(0, 24, 0.5, 0),
						anchorPoint = Vector2.new(0, 0.5),

						hasShadow = true,
						value = self.props.unreadMessages,
					})
				}),
			})
		end
	end)
end

local function mapStateToProps(state)
	return {
		chatVisible = state.chat.visible,
		unreadMessages = state.chat.unreadMessages,

		topBarEnabled = state.displayOptions.topbarEnabled,
		chatEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Chat],
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(ChatIcon)