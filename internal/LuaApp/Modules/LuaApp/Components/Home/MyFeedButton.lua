local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Common = Modules.Common
local LuaApp = Modules.LuaApp

local Roact = require(Common.Roact)

local LocalizedTextLabel = require(LuaApp.Components.LocalizedTextLabel)

local FEED_BUTTON_ASSET_DEFAULT = "rbxasset://textures/ui/LuaApp/9-slice/gr-btn-white-3px.png"
local FEED_BUTTON_ASSET_PRESSED = "rbxasset://textures/ui/LuaApp/9-slice/gr-btn-white-3px-pressed.png"

local onViewFeed = function()
	local notificationType = GuiService:GetNotificationTypeList().VIEW_MY_FEED
	GuiService:BroadcastNotification("", notificationType)
end

local MyFeedButton = Roact.PureComponent:extend("MyFeedButton")

function MyFeedButton:init()
	self.state = {
		isMyFeedButtonPressed = false,
	}

	self.onInputBegan = function()
		self:setState({
			isMyFeedButtonPressed = true
		})
	end

	self.onInputEnded = function()
		self:setState({
			isMyFeedButtonPressed = false
		})
	end
end

function MyFeedButton:render()
	local Size = self.props.Size
	local LayoutOrder = self.props.LayoutOrder
	local isMyFeedButtonPressed = self.state.isMyFeedButtonPressed

	local myFeedButtonAsset
	if isMyFeedButtonPressed then
		myFeedButtonAsset = FEED_BUTTON_ASSET_PRESSED
	else
		myFeedButtonAsset = FEED_BUTTON_ASSET_DEFAULT
	end

	return Roact.createElement("Frame", {
		Size = Size,
		BackgroundTransparency = 1,
		LayoutOrder = LayoutOrder,
	}, {
		Button = Roact.createElement("ImageButton", {
			Size = UDim2.new(0.5, 0, 1, 0),
			Position = UDim2.new(0.25, 0, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,4,4),
			Image = myFeedButtonAsset,
			AutoButtonColor = true,
			[Roact.Event.Activated] = onViewFeed,
			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputEnded] = self.onInputEnded,
		}, {
			Text = Roact.createElement(LocalizedTextLabel, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = Enum.Font.SourceSans,
				Text = "Feature.Home.Action.ViewMyFeed",
				TextSize = 20,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		}),
	})
end

return MyFeedButton