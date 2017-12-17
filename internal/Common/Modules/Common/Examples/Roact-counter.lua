--[[
	Demonstrates use of state updates to re-render the UI.
]]

local CoreGui = game:GetService("CoreGui")

local Common = script.Parent.Parent
local Roact = require(Common.Roact)

-- A functional component to render the current tick value.
local function TickLabel(props)
	local value = props.value

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Text = ("Current tick is %d!"):format(value),
	})
end

local App = Roact.Component:extend("App")

function App:init()
	-- State that cannot affect rendering exists directly on the instance.
	self.running = false

	-- State that the component changes that affects rendering exists on `state`
	-- You can only assign to `state` directly in the constructor.
	self.state = {
		count = 0
	}
end

function App:render()
	return Roact.createElement("ScreenGui", {
		Name = "Roact-demo-counter",
	}, {
		Count = Roact.createElement(TickLabel, {
			value = self.state.count,
		}),
	})
end

function App:didMount()
	-- Use 'didMount' to be notified when a component instance is created
	-- and added to the Roblox tree.

	spawn(function()
		self.running = true

		while self.running do
			-- Use 'setState' to update the component and patch the current
			-- state with new properties.
			-- Don't set `state` directly!
			self:setState({
				count = self.state.count + 1
			})

			wait(1)
		end
	end)
end

function App:willUnmount()
	-- Use 'willUnmount' to be notified when your component is about to be
	-- removed from the tree. Do any cleanup here, like terminating a loop!
	self.running = false
end

return function()
	Roact.reify(Roact.createElement(App), CoreGui, "Roact-counter")
end