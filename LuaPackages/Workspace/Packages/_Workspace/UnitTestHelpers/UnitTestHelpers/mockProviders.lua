--!nonstrict
local Root = script.Parent
local Packages = Root.Parent
local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)
local RoactRodux = require(Packages.RoactRodux)

local mockPolicyProvider = require(script.Parent.mockPolicyProvider)
local mockStyle = require(script.Parent.mockStyle)
local mockLocale = require(script.Parent.mockLocale)
local mockNavigation = require(script.Parent.mockNavigation)

local EMPTY_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

return function(element, override)
	override = override or {}
	local store = override.store or EMPTY_STORE

	local appPolicy = override.appPolicy
	local createNavigationMock = override.mockNavigation or mockNavigation

	local testElement = mockStyle(mockLocale(createNavigationMock(element)))

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		children = mockPolicyProvider(testElement, appPolicy),
	})
end
