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

local workspace = game:GetService("Workspace")

function MockWrapper:init()
	self.mockGui = Instance.new("ScreenGui", workspace)
	self.mockGui.Name = "MockGui"
end

function MockWrapper:render()
	return Roact.createElement(UILibraryWrapper, {
		theme = dummyTheme,
		focusGui = self.mockGui,
	}, self.props[Roact.Children])
end

function MockWrapper:willUnmount()
	self.mockGui:Destroy()
end

return MockWrapper