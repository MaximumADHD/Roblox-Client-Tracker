--[[
	Demonstrates how to use RoactRodux to link Roact and Rodux toegther into
	a single project.
]]

local CoreGui = game:GetService("CoreGui")

local Common = script.Parent.Parent
local Roact = require(Common.Roact)
local Rodux = require(Common.Rodux)
local RoactRodux = require(Common.RoactRodux)

-- React Portion
-- This code doesn't know anything about Rodux.
-- It can function as an isolated component and should be able to do so.
local App = Roact.Component:extend("App")

function App:render()
	local count = self.props.count
	local onClick = self.props.onClick

	return Roact.createElement("ScreenGui", nil, {
		Label = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			Text = "Count: " .. tostring(count),
			AutoButtonColor = false,

			[Roact.Event.MouseButton1Click] = onClick,
		})
	})
end

-- React-Rodux Portion
-- This code ties together Roact and Rodux by generating a wrapper component.
-- The wrapper component maps the 'store' to a set of props we can use.
-- It also receives (and passes on) 'props' given from the parent component.
local connector = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	local function increment()
		store:Dispatch("increment")
	end

	return {
		count = state.count,
		onClick = increment,
	}
end)

-- In a lot of cases it's useful to preserve the original component
-- For this example, we don't need the unwrapped App
App = connector(App)

-- Rodux Portion
-- This is a reducer that lets you increment a value.
local function reducer(state, action)
	state = state or {
		count = 0,
	}

	if action == "increment" then
		return {
			count = state.count + 1
		}
	end

	return state
end

-- Setup
return function()
	local store = Rodux.Store.new(reducer)

	-- We wrap our Roact-Rodux app in a `StoreProvider`, which makes sure our
	-- components know what store they should be connecting to.
	local app = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		App = Roact.createElement(App),
	})

	Roact.reify(app, CoreGui, "Roact-demo-rodux")
end