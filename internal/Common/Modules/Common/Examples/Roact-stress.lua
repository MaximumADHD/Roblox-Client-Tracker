local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local GRID_SIZE = 50
local NODE_SIZE = 10

local Common = script.Parent.Parent
local Roact = require(Common.Roact)

local Node = Roact.Component:extend("Node")

function Node:render()
	local x = self.props.x
	local y = self.props.y
	local time = self.props.time

	local n = time + x / NODE_SIZE + y / NODE_SIZE

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, NODE_SIZE, 0, NODE_SIZE),
		Position = UDim2.new(0, NODE_SIZE * x, 0, NODE_SIZE * y),
		BackgroundColor3 = Color3.new(0.5 + 0.5 * math.sin(n), 0.5, 0.5),
	})
end

local App = Roact.Component:extend("App")

function App:init()
	self.state = {
		time = tick(),
	}
end

function App:render()
	local time = self.state.time
	local nodes = {}

	local n = 0
	for x = 0, GRID_SIZE - 1 do
		for y = 0, GRID_SIZE - 1 do
			n = n + 1
			nodes[n] = Roact.createElement(Node, {
				x = x,
				y = y,
				time = time,
			})
		end
	end

	return Roact.createElement("ScreenGui", nil, nodes)
end

function App:didMount()
	RunService.Stepped:Connect(function()
		self:setState({
			time = tick(),
		})
	end)
end

return function()
	Roact.reify(Roact.createElement(App), CoreGui)
end