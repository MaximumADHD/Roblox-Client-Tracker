--[[
	Entry point into InGameChat. Bootstraps the StoreProvider and any other
	context we want to supply.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local CameraContext = require(script.Parent.CameraContext)
local BubbleChatBillboards = require(script.Parent.BubbleChatBillboards)

local App = Roact.Component:extend("App")

App.validateProps = t.strictInterface({
	store = t.table,
})

function App:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.props.store,
	}, {
		CameraContext = Roact.createElement(CameraContext.Provider, nil, {
			BubbleChatBillboards = Roact.createElement(BubbleChatBillboards),
		})
	})
end

return App
