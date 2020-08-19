--[[
	A function for simplifying tests by creating a list of mock Context Items.
	This follows the ContextServce.provide() format, but adds a bunch of items for free.

	Optional Props:
		table contextItemsList:
			an array of ContextItems that need to be explicitly included for the test.

	Required Props:
		table children:
			a map of Roact elements that you would pass into Roact.createElement()'s children prop.

	Example Usage:
		local TestHelpers = require(...DevFramework.TestHelpers)
		local provideMockContext = TestHelpers.provideMockContext
		local TestElement = require(script.Parent.TestElement)

		it("should create and destroy without errors", function()
			local element = provideMockContext(nil, {
				test = Roact.createElement(TestElement)
			})
			local handle = Roact.mount(element)
			Roact.unmount(handle)
		end)
]]

local DevFrameworkRoot = script.Parent.Parent
local ContextServices = require(DevFrameworkRoot.ContextServices)
local StudioFrameworkStyles = require(DevFrameworkRoot.StudioUI).StudioFrameworkStyles
local mockPlugin = require(DevFrameworkRoot.TestHelpers.Services.mockPlugin)
local Rodux = require(DevFrameworkRoot.Parent.Rodux)


-- contextItemsList : (table, optional) a list of ContextItems to include in the stack. Will override any duplicates.
-- children : (table, required) a map of children like you would pass into Roact.createElement's children
return function(contextItemsList, children)
	if contextItemsList then
		assert(type(contextItemsList) == "table", "Expected contextItemsList to be a table.")
		assert(type(next(contextItemsList)) == "number" or type(next(contextItemsList)) == "nil",
			"Expected contextItemsList to be an array.")
	end
	assert(type(children) == "table", "Expected children to be a table.")
	assert(type(next(children)) == "string", "Expected children to be a map of components.")

	-- create a list of default mocks
	local contextItems = {}

	-- Focus
	local targetGui = Instance.new("ScreenGui")
	local focus = ContextServices.Focus.new(targetGui)
	table.insert(contextItems, focus)

	-- Localization
	local localization = ContextServices.Localization.mock()
	table.insert(contextItems, localization)

	-- Mouse
	local mouse = ContextServices.Mouse.new({
		Icon = "rbxasset://SystemCursors/Arrow",
	})
	table.insert(contextItems, mouse)

	-- Navigation
	local navigation = ContextServices.Navigation.new({})
	table.insert(contextItems, navigation)

	-- Analytics
	local analytics = ContextServices.Analytics.mock()
	table.insert(contextItems, analytics)

	-- Plugin
	local plugin = ContextServices.Plugin.new(mockPlugin.new())
	table.insert(contextItems, plugin)

	-- PluginActions
	local pluginActions = ContextServices.PluginActions.new(mockPlugin.new(), {})
	table.insert(contextItems, pluginActions)

	-- Store
	local storeObject = Rodux.Store.new(function()
	end)
	local store = ContextServices.Store.new(storeObject)
	table.insert(contextItems, store)

	-- Theme
	local theme = ContextServices.Theme.mock(function(theme, getColor)
		return {
			Framework = StudioFrameworkStyles.new(theme, getColor),
		}
	end, function()
		return {
			Name = Enum.UITheme.Light.Name,

			GetColor = function(_, _)
				return Color3.new()
			end,
		}
	end)
	table.insert(contextItems, theme)


	-- join the mock contextItems list with the contextItemsList,
	-- if there are any duplicates, the ones supplied here will take precedence
	if contextItemsList then
		for _, item in ipairs(contextItemsList) do
			table.insert(contextItems, item)
		end
	end

	-- render the components inside the provided context stack
	return ContextServices.provide(contextItems, children)
end