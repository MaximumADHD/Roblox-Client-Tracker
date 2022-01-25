--[[
	LEGACY SUPPORT
	This exists to support plugins using the UILibrary that are
	migrating to the DeveloperFramework.

	UILibraryWrapper is a ContextItem that can be used to replace
	any overhead related to the UILibrary that a plugin may have.

	UILibraryWrapper expects to be provided
	after a Theme, Plugin, and Focus ContextItem.
]]
local Framework = script.Parent.Parent
local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local FlagsList = Util.Flags.new({
	FFlagStudioDevFrameworkPackage = {"StudioDevFrameworkPackage"},
	FFlagRefactorDevFrameworkContextItems2 = {"RefactorDevFrameworkContextItems2"},
})

local noGetThemeError
if THEME_REFACTOR then
	noGetThemeError = [[
	UILibraryProvider expects Stylizer to have a 'getUILibraryTheme' instance function.]]
else
	noGetThemeError = [[
	UILibraryProvider expects Theme to have a 'getUILibraryTheme' instance function.]]
end

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")
local UILibraryFromParent

-- We assume plugins will completely move away from the UILibrary
-- to the Framework in the future, so we don't want to depend on it.
if Framework.Parent:FindFirstChild("UILibrary") then
	UILibraryFromParent = require(Framework.Parent.UILibrary)
end

local Roact = require(Framework.Parent.Roact)
local ContextItem = require(Framework.ContextServices.ContextItem)
local withContext = require(Framework.ContextServices.withContext)
local Stylizer = require(Framework.Style.Stylizer)
local Theme = require(Framework.ContextServices.Theme)
local Plugin = require(Framework.ContextServices.Plugin)
local Focus = require(Framework.ContextServices.Focus)

local UILibraryProvider = Roact.PureComponent:extend("UILibraryProvider")

function UILibraryProvider:render()
	local props = self.props
	local plugin = props.Plugin
	local theme
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme
	end
	local focus = props.Focus
	local UILibrary = props.UILibrary

	assert(theme.getUILibraryTheme, noGetThemeError)

	return Roact.createElement(UILibrary.Wrapper, {
		theme = theme:getUILibraryTheme(),
		plugin = plugin:get(),
		focusGui = FlagsList:get("FFlagRefactorDevFrameworkContextItems2") and focus:get() or focus:getTarget(),
	}, {
		Roact.oneChild(self.props[Roact.Children])
	})
end


UILibraryProvider = withContext({
	Stylizer = THEME_REFACTOR and Stylizer or nil,
	Theme = (not THEME_REFACTOR) and Theme or nil,
	Plugin = Plugin,
	Focus = Focus,
})(UILibraryProvider)


local UILibraryWrapper = ContextItem:extend("UILibraryWrapper")

function UILibraryWrapper.new(uiLibraryProp)
	local UILibrary

	if not FlagsList:get("FFlagStudioDevFrameworkPackage") then
		UILibrary = UILibraryFromParent
	else
		UILibrary = uiLibraryProp or UILibraryFromParent
		assert(UILibrary, "UILibraryWrapper must be passed a reference to UILibrary")
	end

	local self = {
		UILibrary = UILibrary
	}
	setmetatable(self, UILibraryWrapper)

	return self
end

if FFlagDevFrameworkUseCreateContext then
	function UILibraryWrapper:getProvider(children)
		return Roact.createElement(UILibraryProvider, {
			UILibrary = self.UILibrary
		}, children)
	end
else
	function UILibraryWrapper:createProvider(root)
		return Roact.createElement(UILibraryProvider, {
			UILibrary = self.UILibrary
		}, {root})
	end
end

return UILibraryWrapper
