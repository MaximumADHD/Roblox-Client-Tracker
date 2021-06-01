local dependencies = require(script.Parent.Parent.Parent.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux

local mockStyle = require(script.Parent.mockStyle)
local mockNavigation = require(script.Parent.mockNavigation)

local EMPTY_STORE = Rodux.Store.new(
	function()
		return {}
	end,
	{},
	{ Rodux.thunkMiddleware }
)

return function(element, override)
	override = override or {}
	local store = override.store or EMPTY_STORE

	local createNavigationMock = override.mockNavigation or mockNavigation

	local testElement = mockStyle(createNavigationMock(element))

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		children = testElement,
	})
end
