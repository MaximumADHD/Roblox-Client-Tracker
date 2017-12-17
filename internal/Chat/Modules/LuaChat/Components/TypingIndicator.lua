local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)

local INDICATOR_WIDTH = 60
local INDICATOR_HEIGHT = 16
local DOT_COUNT = 3
local ANIMATION_SPEED_MULTIPLIER = 1.75

local TypingIndicator = {}

local function makeDot()
	return Create.new "ImageLabel" {
		Name = "DotContainer",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,

		Create.new "ImageLabel" {
			Name = "Dot",
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaChat/graphic/send-white.png",
			ImageColor3 = Color3.new(0.5, 0.5, 0.5),
			Size = UDim2.new(1, 0, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5)
		},
	}
end

function TypingIndicator.new(appState, scale)
	scale = scale or 1

	local self = {}
	self.connections = {}

	self.rbx = Create.new "Frame" {
		Name = "TypingIndicator",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, scale * INDICATOR_WIDTH, 0, scale * INDICATOR_HEIGHT)
	}

	self.dots = {}

	for i = 1, DOT_COUNT do
		local value = (i - 1) / (DOT_COUNT - 1)

		local dot = makeDot()
		dot.Position = UDim2.new(value, 0, 0, 0)
		dot.AnchorPoint = Vector2.new(value, 0)
		dot.Parent = self.rbx

		table.insert(self.dots, dot)
	end

	setmetatable(self, TypingIndicator)

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
				local size = 0.5
				if time >= i - 1 and time <= i then
					size = 0.5 + 0.5 * math.sin(math.pi * (time % 1))
				end

				dot.Dot.Size = UDim2.new(size, 0, size, 0)
			end
		end)
		table.insert(self.connections, connection)
	end

	return self
end

function TypingIndicator:Destroy()
	self.rbx:Destroy()

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

TypingIndicator.__index = TypingIndicator

return TypingIndicator