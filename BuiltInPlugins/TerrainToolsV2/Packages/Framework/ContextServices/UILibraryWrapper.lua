--[[
	LEGACY SUPPORT
	This exists to support plugins using the UILibrary that are
	migrating to the DeveloperFramework.

	UILibraryWrapper is a ContextItem that can be used to replace
	any overhead related to the UILibrary that a plugin may have.

	UILibraryWrapper expects to be provided
	after a Theme, Plugin, and Focus ContextItem.
]]

local noGetThemeError = [[
UILibraryProvider expects Theme to have a 'getUILibraryTheme' instance function.]]

local Framework = script.Parent.Parent
-- We assume plugins will completely move away from the UILibrary
-- to the Framework in the future, so we don't want to depend on it.
if not Framework.Parent:FindFirstChild("UILibrary") then
	return nil
end

local Roact = require(Framework.Parent.Roact)
local UILibrary = require(Framework.Parent.UILibrary)
local ContextItem = require(Framework.ContextServices.ContextItem)
local mapToProps = require(Framework.ContextServices.mapToProps)
local Theme = require(Framework.ContextServices.Theme)
local Plugin = require(Framework.ContextServices.Plugin)
local Focus = require(Framework.ContextServices.Focus)
local Util = require(Framework.Util)
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkContextItems = {"RefactorDevFrameworkContextItems"},
})

local UILibraryProvider = Roact.PureComponent:extend("UILibraryProvider")

function UILibraryProvider:render()
	local props = self.props
	local plugin = props.Plugin
	local theme = props.Theme
	local focus = props.Focus

	assert(theme.getUILibraryTheme, noGetThemeError)

	return Roact.createElement(UILibrary.Wrapper, {
		theme = theme:getUILibraryTheme(),
		plugin = plugin:get(),
		focusGui = FlagsList:get("FFlagRefactorDevFrameworkContextItems") and focus:get() or focus:getTarget(),
	}, {
		Roact.oneChild(self.props[Roact.Children])
	})
end

mapToProps(UILibraryProvider, {
	Theme = Theme,
	Plugin = Plugin,
	Focus = Focus,
})

local UILibraryWrapper = ContextItem:extend("UILibraryWrapper")

function UILibraryWrapper.new()
	local self = {}
	setmetatable(self, UILibraryWrapper)

	return self
end

function UILibraryWrapper:createProvider(root)
	return Roact.createElement(UILibraryProvider, {}, {root})
end

return UILibraryWrapper
