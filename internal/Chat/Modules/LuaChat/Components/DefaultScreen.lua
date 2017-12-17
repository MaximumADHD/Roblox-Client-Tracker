local LuaChat = script.Parent.Parent

local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local DialogInfo = require(LuaChat.DialogInfo)

local Components = LuaChat.Components
local HeaderLoader = require(Components.HeaderLoader)

local Intent = DialogInfo.Intent

local DefaultScreen = {}

DefaultScreen.__index = DefaultScreen

function DefaultScreen.new(appState)
	local self = {}

	setmetatable(self, DefaultScreen)

	local header = HeaderLoader.GetHeader(appState, Intent.DefaultScreen)
	header:SetDefaultSubtitle()

	self.rbx = Create.new "Frame" {
		Name = "DefaultScreen",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.GRAY6,
		BorderSizePixel = 0,

		Create.new "UIListLayout" {
			SortOrder = "LayoutOrder",
		},

		header.rbx,

		Create.new "Frame" {
			Name = "Main",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1.0,

			Create.new "ImageLabel" {
				BackgroundTransparency = 1.0,
				Size = UDim2.new(0, 150, 0, 150),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-chat-large.png",
			}
		},
	}

	return self
end

function DefaultScreen:Update(current, previous) end

return DefaultScreen
