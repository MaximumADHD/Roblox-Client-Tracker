--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local DEPRECATED_UILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)
local getUILibraryTheme = DEPRECATED_UILibraryTheme.getUILibraryTheme

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local StyleKey = Style.StyleKey

local darkThemeOverride = {
	-- TODO: jbousellam - remove draftsButton when UILibrary Buttons are removed
	draftsButton = {
		ButtonColor = StyleKey.PrimaryMain,
		ButtonColor_Hover = StyleKey.PrimaryStatesHoverBackground,
		ButtonColor_Disabled = StyleKey.DialogMainButtonDisabled,
		TextColor = StyleKey.TextContrast,
		TextColor_Disabled = StyleKey.TextDisabled,
		BorderColor = StyleKey.Border,
		TextSize = 12,
	},
}

local lightThemeOverride = {
	-- TODO: jbousellam - remove draftsButton when UILibrary Buttons are removed
	draftsButton = {
		ButtonColor = StyleKey.PrimaryMain,
		ButtonColor_Hover = StyleKey.PrimaryStatesHoverBackground,
		ButtonColor_Disabled = StyleKey.DialogMainButtonDisabled,
		TextColor = StyleKey.TextContrast,
		TextColor_Disabled = StyleKey.TextDisabled,
		BorderColor = StyleKey.Light,
		TextSize = 12,
	},
}

local PluginTheme = {
	-- New Plugin Setup: Add theme values, i.e.
	-- [StyleKey.Something] = Color3.new()

	-- TODO: jbousellam - remove backgroundColor, icons, labels, and dialogUILibrary when UILibrary Components are removed
	backgroundColor = StyleKey.MainBackground,

	icons = {
		DraftState = {
			Committed = "rbxasset://textures/StudioSharedUI/statusSuccess.png",
			Outdated = "rbxasset://textures/DraftsWidget/newSource.png",
			Deleted = "rbxasset://textures/DraftsWidget/deletedSource.png",
		},
	},
	labels = {
		MainFont = Enum.Font.SourceSans,
		MainText = StyleKey.TextPrimary,
	},
	dialogUILibrary = {
		HeaderFont = Enum.Font.SourceSans,
		HeaderTextColor = StyleKey.TextPrimary,
	},
}

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock(darkThemeOverride, lightThemeOverride)
	else
		styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	end

	local theme = styleRoot:extend(PluginTheme)
	theme.getUILibraryTheme = getUILibraryTheme

	return theme
end

