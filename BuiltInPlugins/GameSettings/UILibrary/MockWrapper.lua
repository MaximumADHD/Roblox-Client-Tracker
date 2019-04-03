--[[
	USE IN TESTS ONLY
	Wraps providers of all necessary context items for testing.
	Currently, the only item that is provided is Theme.
]]

local Library = script.Parent
local Roact = require(Library.Parent.Roact)

local Theming = require(Library.Theming)
local ThemeProvider = Theming.Provider
local createTheme = require(Library.createTheme)

local MockWrapper = Roact.PureComponent:extend("MockWrapper")
local DummyTheme = createTheme()

function MockWrapper:render()
	return Roact.createElement(ThemeProvider, {
		theme = DummyTheme,
	}, self.props[Roact.Children])
end

return MockWrapper