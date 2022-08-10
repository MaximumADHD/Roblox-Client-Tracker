--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Dash = require(Plugin.Packages.Dash)

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local BaseTheme = Style.Themes.BaseTheme
local _StyleKey = Style.StyleKey
local ui = Style.ComponentSymbols

local PluginTheme = {
	[ui.Pane] = Dash.join(BaseTheme[ui.Pane], {
		["&WStyle"] = Dash.join(BaseTheme[ui.Pane]["&BorderBox"], {
			Background = _StyleKey.SubBackground,
			Border = {
				Color = _StyleKey.SubBackground,
			}
		}),
	}),

	[ui.IconButton] = Dash.join(BaseTheme[ui.IconButton], {
		Size = UDim2.fromOffset(16, 16),
	}),

	[ui.Checkbox] = Dash.join(BaseTheme[ui.Checkbox], {
	}),

	MainGui = {
		SplitPaneSize = UDim2.new(1, 0, 1, -30),
	},

	TagTopPane = {
		SearchBarPaneSize = UDim2.new(1, 0, 0, 30),
		SearchBarSize = UDim2.new(1, -60, 0, 30),
		ButtonSize = UDim2.fromOffset(24, 24),
	},

	TagListView = {
		Size = UDim2.new(1, 0, 1, -60),
	},

	TagListRow = {
		Size = UDim2.new(1, 0 , 0 , 24),
		TextSize = UDim2.new(1, -72, 0, 24),
	},

	TagSettingsPane = {
		TitlePaneSize = UDim2.new(1, 0, 0, 24),
		TitlePaneSpacing = 10,
	},

	TagSettingsListView = {
		Size = UDim2.new(1, 0, 1, -24),
		IconControlSize = UDim2.fromOffset(16, 16),
		CheckboxControlSize = UDim2.fromOffset(16, 16),
		DropdownControlSize = UDim2.fromOffset(90, 24),
	},

	TagSettingRow = {
		Size = UDim2.new(1, 0, 0, 24),
		TextSize = UDim2.new(1, -56, 0, 24),
	}
}

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	return styleRoot:extend(PluginTheme)
end
