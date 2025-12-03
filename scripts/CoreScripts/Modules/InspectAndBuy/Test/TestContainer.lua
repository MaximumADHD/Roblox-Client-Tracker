--[[
	Component that wraps its provided children with a store provider,
	and a ScreenGui.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local InspectAndBuyFolder = script.Parent.Parent
local Modules = InspectAndBuyFolder.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local Constants = require(InspectAndBuyFolder.Constants)
local CompactView = require(InspectAndBuyFolder.CompactView)
local WideView = require(InspectAndBuyFolder.WideView)
local renderWithCoreScriptsStyleProvider = require(Modules.Common.renderWithCoreScriptsStyleProvider)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local TestContainer = Roact.Component:extend("TestContainer")

function TestContainer:init()
	self.store = self.props.overrideStore or Rodux.Store.new(Reducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.views = {}
	self.views[Constants.View.Compact] = CompactView
	self.views[Constants.View.Wide] = WideView
end

function TestContainer:render()
	local numChildren = 0
	for _, _ in self.props[Roact.Children] do
		numChildren += 1
	end
	assert(numChildren > 0, "TestContainer: no children provided, nothing will be tested")

	return Roact.createElement(InspectAndBuyContext.Provider, {
		value = self.views,
	}, {
		Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider({
				InspectMenu = Roact.createElement("ScreenGui", {}, self.props[Roact.Children]),
			}),
		}),
	})
end

return TestContainer
