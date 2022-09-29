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
		["&ColorTextInput"] = Dash.join(BaseTheme[ui.Pane]["&BorderBox"]),
		["&WStyle"] = Dash.join(BaseTheme[ui.Pane]["&BorderBox"], {
			Background = _StyleKey.SubBackground,
			Border = {
				Color = _StyleKey.SubBackground,
			}
		}),

		["&SelectedTag"] =  Dash.join(BaseTheme[ui.Pane], {
			Background = _StyleKey.ActionSelected,
		}),
	}),

	[ui.IconButton] = Dash.join(BaseTheme[ui.IconButton], {
		IconColor = _StyleKey.TextPrimary,
		BackgroundStyle = "None",
		Size = UDim2.fromOffset(24, 24),
	}),

	[ui.Checkbox] = Dash.join(BaseTheme[ui.Checkbox], {
		Spacing = 8,
	}),

	[ui.TextInput2] = Dash.join(BaseTheme[ui.TextInput2], {
		["&ColorTextInput"] = Dash.join(BaseTheme[ui.TextInput2], {
			BottomTextSpacing = -2,
		}),
	}),

	[ui.TextLabel] = Dash.join(BaseTheme[ui.TextLabel], {
		["&ButtonText"] = Dash.join(BaseTheme[ui.TextLabel], {
			TextColor = _StyleKey.TextSecondary,
		}),
		["&ButtonTextHover"] = Dash.join(BaseTheme[ui.TextLabel], {
			TextColor = _StyleKey.TextPrimary,
		}),
	}),

	[ui.Tooltip] = Dash.join(BaseTheme[ui.Tooltip], {
		ShowDelay = 0.7,
	}),

	Icon = {
		Size = UDim2.fromOffset(16, 16),
		TextSize = 20,
		IconColor = _StyleKey.TextPrimary,
	},

	MainGui = {
		SplitPaneMinsizes = {UDim.new(0, 100), UDim.new(0, 60)},
		SplitPaneInitialSizes = {UDim.new(0.5, 0), UDim.new(0.5, 0)},
		SoloTopPaneSize = UDim2.new(1, 0, 1, -35),
	},

	NewTagTextInput = {
		TextInputSize = UDim2.new(1, -30, 0, 30),
		Spacing = 9,
		IconColorHover = _StyleKey.ActionEnabled,
		IconColor = _StyleKey.ActionEnabled,
		IconSize = UDim2.fromOffset(16, 16),
	},

	TagTopPane = {
		SearchBarPaneSize = UDim2.new(1, -24, 0, 30),
		SearchBarSize = UDim2.new(1, -60, 0, 30),
		ButtonSize = UDim2.fromOffset(24, 24),
		Padding = {
			Top = 5,
			Bottom = 5,
			Left = 0,
			Right = 0,
		},
		RowSpacing = 9,
		NewGroupIcon = "rbxasset://textures/TagEditor/Folder.png",
		DeleteIcon = "rbxasset://textures/TagEditor/Trash.png",
	},

	TagListView = {
		Size = UDim2.new(1, 0, 1, -60),
		CanvasYPadding = 14,
	},

	TagListRow = {
		CheckboxSize = UDim2.fromOffset(24, 24),
		Size = UDim2.new(1, 0 , 0 , 24),
		TextSize = UDim2.new(1, -100, 0, 24),
		VisibleIcon = "rbxasset://textures/TagEditor/Visibility.png",
		VisibleOffIcon = "rbxasset://textures/TagEditor/VisibilityOff.png",
		AssignIcon = "rbxasset://textures/TagEditor/Add.png",
		AssignIconColor = _StyleKey.PrimaryMain,
		UnassignIcon = "rbxasset://textures/TagEditor/Remove.png",
		UnassignIconColor = _StyleKey.ErrorMain,
		PaddingIndented = {
			Top = 0,
			Bottom = 0,
			Left = 14,
			Right = 0,
		},
		PaddingUnindented = 0,
	},

	TagListGroupRow = {
		Size = UDim2.new(1, 0 , 0 , 24),
		Spacing = 9,
		SpacerSize = UDim2.fromOffset(24, 24),
		TextSize = UDim2.new(1, -108, 0, 24),
		IconColorActive = _StyleKey.TextContrast,
		IconColorInactive = _StyleKey.ActionEnabled,
		VisibleIcon = "rbxasset://textures/TagEditor/Visibility.png",
		VisibleOffIcon = "rbxasset://textures/TagEditor/VisibilityOff.png",
		EditAssignmentsIcon = "rbxasset://textures/TagEditor/Compose.png",
		StopAssigningIcon = "rbxasset://textures/TagEditor/Close.png",
		ArrowColor = _StyleKey.TextPrimary,
		ClosedArrowImage = "rbxassetid://2606412312",
		OpenArrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
	},

	TagListUnknownRow = {
		CheckboxSize = UDim2.fromOffset(24, 24),
		Size = UDim2.new(1, 0 , 0 , 24),
		TextSize = UDim2.new(1, -100, 0, 24),
		AssignIcon = "rbxasset://textures/TagEditor/Add.png",
		AssignIconColor = _StyleKey.PrimaryMain,
		Spacing = 9,
		PaddingIndented = {
			Top = 0,
			Bottom = 0,
			Left = 14,
			Right = 0,
		},
	},

	TagSettingsPane = {
	},

	TagSettingsListView = {
		Size = UDim2.new(1, 0, 1, -30),
		CanvasSize = UDim2.new(1, 0, 0, 8 + (6 * 26)),
		Padding = 4,
		Spacing = UDim.new(0, 2),

		GroupRow = {
			Size = UDim2.fromOffset(24, 24),
			Icon = "rbxassetid://2606412312",
			UnassignIcon = "rbxassetid://2606412312",
			NewGroupIcon = "rbxassetid://2606412312",
			DropDownWidth = 170,
			ItemHeight = 30,
			MaxHeight = 150,
		},
		VisualizeAsRow = {
			Size = UDim2.fromOffset(90, 24),
			Icon = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
			DropDownWidth = 120,
			ItemHeight = 30,
			MaxHeight = 150,
		},
		TaggedInstancesRow = {
			Icon = "rbxassetid://2606412312",
			Size = UDim2.fromOffset(24, 24),
		},
		AlwaysOnTopRow = {
			Size = UDim2.fromOffset(16, 16),
		},
		IconRow = {
			Size = UDim2.fromOffset(18, 16),
		},
		ColorRow = {
			Size = UDim2.fromOffset(24, 24),
			Icon =  "rbxasset://textures/ui/InGameMenu/WhiteSquare.png",
		},
	},


	TagSettingRow = {
		Size = UDim2.new(1, 0, 0, 24),
		TextSize = UDim2.new(1, -40, 0, 24),
		Spacing = 10,
	},

	TagSettingsToggleButton = {
		ClosedArrowImage = "rbxassetid://2606412312",
		OpenArrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
		Size = UDim2.new(1, 0, 0, 30),
		Spacing = 10,
	},
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
