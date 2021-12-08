--[[
	A spinning loading indicator.

	Optional Props:
		number LayoutOrder: Order in which the element is placed.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		UDim2 Position: The position of this component.
		number Size: The width and height of this component as a square.
		number ZIndex: The render index of this component.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Style Values:
		table Colors: Ordered list of colors for each "block" in the spinner. First element is the front of the
			loop. Number of blocks depends on length of this array.
		number TimeBetweenBlocks: Time in seconds before the spinner advances to the next block in the sequence.
		number BlockWidth: Width of each block segment
		number InnerRadius: Radius of the inner circle the block segments surround
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Container = UI.Container

local RunService = game:GetService("RunService")

local Spinner = Roact.PureComponent:extend("Spinner")

Spinner.defaultProps = {
	Size = 2 * (7 + 7),
}

function Spinner:init()
	self.state = {
		leadingBlock = 0,
	}

	self.getStyle = function()
		return self.props.Stylizer.Spinner
	end

	self.moveToNext = function()
		if not self.isMounted then
			return
		end

		self:setState(function(oldState)
			return {
				leadingBlock = (oldState.leadingBlock + 1) % #self.getStyle().Colors,
			}
		end)
	end

	self.time = 0
	self.onHeartbeat = function(dt)
		self.time = self.time + dt

		local timeBetweenBlocks = self.getStyle().TimeBetweenBlocks
		while self.time > timeBetweenBlocks do
			self.time = self.time - timeBetweenBlocks
			self.moveToNext()
		end
	end
end

function Spinner:didMount()
	self.isMounted = true
	self.heartbeatConnection = RunService.Heartbeat:Connect(self.onHeartbeat)
end

function Spinner:willUnmount()
	if self.heartbeatConnection then
		self.heartbeatConnection:Disconnect()
		self.heartbeatConnection = nil
	end
	self.isMounted = false
end

function Spinner:render()
	local props = self.props

	local size = self.props.Size

	local style = self.getStyle()
	local blockWidth = style.BlockWidth
	local innerRadius = style.InnerRadius

	assert(size > 2 * innerRadius, "Spinner size is too small for inner radius from theme")
	local blockLength = math.floor((size / 2) - innerRadius)

	local colors = style.Colors
	local blockCount = #colors
	local anglePerBlock = 360 / blockCount

	local initialAngle = self.state.leadingBlock * anglePerBlock

	local blocks = {}
	for i = 1, blockCount, 1 do
		local angle = -anglePerBlock * (i - 1)
		local color = colors[i]

		blocks["Block_" .. tostring(i)] = Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 0, 0, 0),
			Rotation = angle,
			BackgroundTransparency = 1,
		}, {
			Block = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0, 0, 0, -innerRadius),
				Size = UDim2.fromOffset(blockWidth, blockLength),
				BorderSizePixel = 0,
				BackgroundColor3 = color,
			}),
		})
	end

	return Roact.createElement(Container, {
		LayoutOrder = props.LayoutOrder,
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		ZIndex = props.ZIndex,

		Size = UDim2.fromOffset(size, size),
	}, {
		Center = Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 0, 0, 0),
			Rotation = initialAngle,
			BackgroundTransparency = 1,
		}, blocks)
	})
end


Spinner = withContext({
	Stylizer = ContextServices.Stylizer,
})(Spinner)



return Spinner
