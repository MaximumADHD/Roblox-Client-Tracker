--[[
	USE IN TESTS ONLY
	Provides mocks of all necessary context items for testing.
]]

local Library = script.Parent
local Roact = require(Library.Parent.Roact)

local UILibraryWrapper = require(Library.UILibraryWrapper)

local createTheme = require(Library.createTheme)
local dummyTheme = createTheme()

local MockWrapper = Roact.PureComponent:extend("MockWrapper")

function MockWrapper:render()
	return Roact.createElement(UILibraryWrapper, {
		theme = dummyTheme,
		focusGui = {},
	}, self.props[Roact.Children])
end

return MockWrapper