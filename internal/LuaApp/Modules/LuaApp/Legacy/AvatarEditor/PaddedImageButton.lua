
local CoreGui = game:GetService("CoreGui")

local Common = CoreGui.RobloxGui.Modules.Common
local Mobile = CoreGui.RobloxGui.Modules.Mobile

local Create = require(Mobile.Create)
local Signal = require(Common.Signal)

local PaddedImageButton = {}
PaddedImageButton.__index = PaddedImageButton

function PaddedImageButton.new(name, imageUrl, size)
	local self = {}
	setmetatable(self, PaddedImageButton)

	size = size or 24

	self.rbx = Create.new "ImageButton" {
		Name = name,
		Size = UDim2.new(0, 40, 0, 40),
		BackgroundTransparency = 1,

		Create.new "ImageLabel" {
			Name = "ImageLabel",
			Size = UDim2.new(0, size, 0, size),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = imageUrl,
			ZIndex = 10,
		},
	}

	self.Pressed = Signal.new()

	self.rbx.MouseButton1Click:Connect(function()
		self.Pressed:Fire()
	end)

	return self
end


function PaddedImageButton:SetVisible(value)
	self.rbx.Visible = value
end

return PaddedImageButton