--[[
	Component that wraps its provided children with a store provider,
	and a ScreenGui.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local Constants = require(InspectAndBuyFolder.Constants)
local CompactView = require(InspectAndBuyFolder.CompactView)
local WideView = require(InspectAndBuyFolder.WideView)

local TestContainer = Roact.Component:extend("TestContainer")

function TestContainer:init()
	self.store = self.props.overrideStore or Rodux.Store.new(Reducer, {}, {
		Rodux.thunkMiddleware,
	})
	self._context[Constants.View.Compact] = CompactView
	self._context[Constants.View.Wide] = WideView
end

function TestContainer:render()
	assert(#self.props[Roact.Children] > 0,
		"TestContainer: no children provided, nothing will be tested")

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		InspectMenu = Roact.createElement("ScreenGui", {}, self.props[Roact.Children])
	})
end

return TestContainer