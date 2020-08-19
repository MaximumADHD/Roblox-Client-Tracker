--[[
	Entry point into InGameChat. Bootstraps the StoreProvider and any other
	context we want to supply.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local BubbleChatBillboards = require(script.Parent.BubbleChatBillboards)

local App = Roact.Component:extend("App")

App.validateProps = t.strictInterface({
	store = t.table,
})

function App:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.props.store,
	}, {
		BubbleChatBillboards = Roact.createElement(BubbleChatBillboards),
	})
end

return App
