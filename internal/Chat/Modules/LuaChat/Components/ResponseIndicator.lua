local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local LoadingIndicatorComponent = require(LuaChat.Components.LoadingIndicator)

local PADDING = 48

local ResponseIndicator = {}

function ResponseIndicator.new(appState)
	local self = {}

	setmetatable(self, {__index = ResponseIndicator})

	self.connections = {}

	self.indicator = LoadingIndicatorComponent.new(appState)
	self.indicator:SetZIndex(3)

	self.indicator.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
	self.indicator.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)

	self.rbx = Create.new"ImageButton" { -- So you can't select buttons underneath
		Name = "ResponseIndicator",
		BackgroundTransparency = Constants.Color.ALPHA_SHADOW_HOVER,
		BackgroundColor3 = Constants.Color.GRAY1,
		AutoButtonColor = false,
		BorderSizePixel = 0,
		Active = false,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		ZIndex = 3,
		Create.new"ImageLabel" {
			BackgroundTransparency = 1,
			Size =  self.indicator.rbx.Size + UDim2.new(0, PADDING, 0, PADDING),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,4,4),
			Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png",
			BorderSizePixel = 0,
			ZIndex = 3,
			self.indicator.rbx,
		},
	}

	return self
end

function ResponseIndicator:SetVisible(value)
	self.rbx.Visible = value
	self.indicator:SetVisible(value)
end

function ResponseIndicator:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
	self.indicator:Destroy()
	self.rbx:Destroy()
end

return ResponseIndicator
