local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)

local INDICATOR_WIDTH = 70
local INDICATOR_HEIGHT = 16
local DOT_COUNT = 3
local ANIMATION_SPEED_MULTIPLIER = 1.75

local LoadingIndicator = {}

local function makeDot()
	return Create.new "ImageLabel" {
		Name = "DotContainer",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,

		Create.new "Frame" {
			Name = "Dot",
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5)
		},
	}
end

function LoadingIndicator.new(appState, scale)
	scale = scale or 1

	local self = {}
	self.connections = {}

	self.rbx = Create.new "Frame" {
		Name = "LoadingIndicator",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, scale * INDICATOR_WIDTH, 0, scale * INDICATOR_HEIGHT)
	}

	self.dots = {}

	for i = 1, DOT_COUNT do
		local value = (i - 1) / (DOT_COUNT - 1)

		local dot = makeDot()
		dot.Position = UDim2.new(value, 0, 0.5, 0)
		dot.AnchorPoint = Vector2.new(value, 0.5)
		dot.Parent = self.rbx

		table.insert(self.dots, dot)
	end

	setmetatable(self, LoadingIndicator)

	do
		local connection = self.rbx.AncestryChanged:Connect(function(object, parent)
			if object == self.rbx and parent == nil then
				self:Destroy()
			end
		end)
		table.insert(self.connections, connection)
	end

	do
		local connection = RunService.RenderStepped:Connect(function()
			if not self.rbx.Visible then
				return
			end

			local time = (Workspace.DistributedGameTime * ANIMATION_SPEED_MULTIPLIER) % #self.dots

			for i, dot in ipairs(self.dots) do
				local size = 0.7
				if time >= i - 1 and time <= i then
					size = 0.7 + 0.3 * math.sin(math.pi * (time % 1))

					dot.Dot.BackgroundColor3 = Constants.Color.GRAY3:lerp(Constants.Color.BLUE_PRIMARY, math.sin(math.pi * (time % 1)))
				else
					dot.Dot.BackgroundColor3 = Constants.Color.GRAY3
				end

				dot.Dot.Size = UDim2.new(0.7, 0, size, 0)
			end
		end)
		table.insert(self.connections, connection)
	end

	return self
end

function LoadingIndicator:SetZIndex(index)
	self.rbx.ZIndex = index
	for _, dot in ipairs(self.dots) do
		dot.ZIndex = index
		dot.Dot.ZIndex = index
	end
end

function LoadingIndicator:SetVisible(visible)
	self.rbx.Visible = visible
end

function LoadingIndicator:Destroy()
	self.rbx:Destroy()

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

LoadingIndicator.__index = LoadingIndicator

return LoadingIndicator