--[[
	A line of text prefaced with a bullet point. Useful for lists of entries.

	Props:
		string Text = The text to display after the bullet point.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local DOT = "rbxasset://textures/GameSettings/RadioButton.png"

local BulletPoint = Roact.PureComponent:extend("BulletPoint")

function BulletPoint:init()
	self.frameRef = Roact.createRef()
	self.textConnection = nil

	self.updateFrameSize = function()
		local frame = self.frameRef.current
		local sizeX = frame.AbsoluteSize.x
		local textSize = TextService:GetTextSize(
			self.props.Text or "",
			20,
			Enum.Font.SourceSansLight,
			Vector2.new(sizeX, 10000)
		)
		frame.Size = UDim2.new(1, 0, 0, textSize.y)
	end
end

function BulletPoint:didMount()
	local frame = self.frameRef.current
	self.textConnection = frame:GetPropertyChangedSignal("AbsoluteSize"):connect(self.updateFrameSize)
	self.updateFrameSize()
end

function BulletPoint:willUnmount()
	self.textConnection:Disconnect()
	self.textConnection = nil
end

function BulletPoint:render()
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder or 1,
			Size = UDim2.new(1, 0, 0, 20),

			[Roact.Ref] = self.frameRef,
		}, {
			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 16, 0, -1),
				Size = UDim2.new(1, -16, 1, 0),
				Text = self.props.Text or "",
				Font = Enum.Font.SourceSans,
				TextColor3 = theme.dialog.text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				TextSize = 20,
			}),

			Dot = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 4, 0, 4),
				AnchorPoint = Vector2.new(0, 0.5),
				TextColor3 = theme.dialog.text,
				Text = "???",
				TextYAlignment = Enum.TextYAlignment.Top,
				Font = Enum.Font.SourceSans,
				TextSize = 20,
			}),
		})
	end)
end

return BulletPoint