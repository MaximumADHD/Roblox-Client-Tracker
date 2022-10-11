--[[
	Used for testing.
	A mock wrapper for the plugin, that can catch PluginGui
	and Focus item creation and put these in a place where tests can
	reach the items mounted inside.

	Optional Props:
		Instance Container: A container to mount PluginWidget items into.
		Instance FocusTarget: A container to mount Focus items into.
]]

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local TestHelpers = Framework.TestHelpers
local MockPlugin = TestHelpers.Instances.MockPlugin

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local MockProvider = Roact.PureComponent:extend("MockProvider")

function MockProvider.createMocks()
	local plugin = MockPlugin.new()

	return {
		plugin = plugin,
		mouse = plugin:GetMouse(),
		store = Rodux.Store.new(MainReducer),
		theme = MakeTheme(true),
	}
end

function MockProvider.createMockContextItems(mocks)
	return {
		plugin = ContextServices.Plugin.new(mocks.plugin),
		mouse = ContextServices.Mouse.new(mocks.mouse),
		store = ContextServices.Store.new(mocks.store),
		analytics = ContextServices.Analytics.mock(),
	}
end

function MockProvider.cleanupMocks(mocks, mockItems)
	mockItems.theme:destroy()
	mocks.store:destruct()

	mocks.plugin:Destroy()
end

function MockProvider:init()
	self.mocks = MockProvider.createMocks()
	self.mockItems = MockProvider.createMockContextItems(self.mocks)
end

function MockProvider:render()
	return ContextServices.provide({
		self.mockItems.plugin,
		self.mockItems.mouse,
		self.mockItems.store,
		self.mockItems.theme,
		self.mockItems.analytics,
	}, {
		-- TODO RIDE-2216: Fragments are not working after updating to Roact 1.3
		--WrappedComponent = Roact.createFragment(children),
		WrappedComponent = Roact.createElement("Frame", nil, self.props[Roact.Children]),
	})
end

function MockProvider.createElementWithMockContext(component, props, children)
	assert(
		type(component) == "function" or (type(component) == "table" and type(component.render) == "function"),
		"MockWrapper.createElementWithMockContext passed invalid component"
	)

	return Roact.createElement(MockProvider, {
		MyComponent = Roact.createElement(component, props, children),
	})
end

function mockWrap(component, mockProps, children)
	return MockProvider.createElementWithMockContext(component, mockProps, children)
end

return mockWrap
