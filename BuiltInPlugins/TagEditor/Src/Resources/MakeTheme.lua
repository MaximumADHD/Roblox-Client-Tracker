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
local join = Dash.join

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local DarkTheme = Style.Themes.DarkTheme
local LightTheme = Style.Themes.LightTheme
local BaseTheme = Style.Themes.BaseTheme
local _StyleKey = Style.StyleKey
local ui = Style.ComponentSymbols

local PluginTheme = {
	[ui.Pane] = join(BaseTheme[ui.Pane], {
		["&ColorTextInput"] = join(BaseTheme[ui.Pane]["&BorderBox"]),
		["&WStyle"] = join(BaseTheme[ui.Pane]["&BorderBox"], {
			Background = _StyleKey.SubBackground,
			Border = {
				Color = _StyleKey.SubBackground,
			}
		}),

		["&PaneHover"] =  join(BaseTheme[ui.Pane], {
			Background = _StyleKey.SubBackground,
		}),

		["&SelectedTag"] =  join(BaseTheme[ui.Pane], {
			Background = _StyleKey.ActionSelected,
		}),

		["&ButtonHover"] = join(BaseTheme[ui.Pane], {
			Background = _StyleKey.ButtonHover,
		}),
	}),

	[ui.IconButton] = join(BaseTheme[ui.IconButton], {
		IconColor = _StyleKey.TextPrimary,
		Background = _StyleKey.ForegroundMain,
		Size = UDim2.fromOffset(24, 24),

		["&Disabled"] = join(BaseTheme[ui.IconButton], {
			IconColor = _StyleKey.ButtonDisabled,
			BackgroundStyle = "None",
			Size = UDim2.fromOffset(24, 24),
		}),

		["&ToggledOff"] = join(BaseTheme[ui.IconButton], {
			TextColor = _StyleKey.DimmedText,
			IconColor = _StyleKey.TextPrimary,
			Size = UDim2.fromOffset(24, 24),
		}),
	}),

	[ui.Checkbox] = join(BaseTheme[ui.Checkbox], {
		Spacing = 8,
	}),

	[ui.SearchBar] = join(BaseTheme[ui.SearchBar], {
		["&Compact"] = {
			Padding = {
				Top = -1,
				Left = 5,
				Bottom = -1,
				Right = 5,
			},
		},
	}),

	[ui.TextInput2] = join(BaseTheme[ui.TextInput2], {
		["&ColorTextInput"] = join(BaseTheme[ui.TextInput2], {
			BottomTextSpacing = -2,
		}),
	}),

	[ui.TextLabel] = join(BaseTheme[ui.TextLabel], {
		["&ButtonText"] = join(BaseTheme[ui.TextLabel], {
			TextColor = _StyleKey.TextSecondary,
		}),
		["&ButtonTextHover"] = join(BaseTheme[ui.TextLabel], {
			TextColor = _StyleKey.TextPrimary,
		}),
	}),

	[ui.Tooltip] = join(BaseTheme[ui.Tooltip], {
		ShowDelay = 0.7,
	}),

	ColorPicker = {
		Padding = 10,
		Spacing = 8,
		BodySize = UDim2.new(1, 0, 1, -80),
		BodySpacing = 8,
		PickerSize = UDim2.new(0.5, 0, 1, 0),
	},
	ColorPropertiesPanel = {
		Size = UDim2.new(0.5, 0, 0, 96),
		Spacing = 7,
		TextInputSize = UDim2.new(1, 0, 0, 24),
	},

	ColorPickerTopControls = {
		Size = UDim2.new(1, 0, 0, 72),
		Spacing = 5,
		TitleTextSize = UDim2.new(1, -48, 0, 24),
		ButtonsPaneSize = UDim2.new(1, 0, 0, 24),
		ButtonsPaneSpacing = 10,
		ButtonsPanePadding = 8,
		CancelButtonSize = UDim2.new(0.5, 0, 0, 24),
		SubmitButtonSize = UDim2.new(0.5, 0, 0, 24),
		ColorPaneSize = UDim2.new(1, 0, 0, 26),
		ColorPaneSpacing = 10,
		ColorPanePadding = 2,
		ColorPreviewSize = UDim2.new(0.5, 0, 0, 24),
		PreviewTitleSize = UDim2.new(0.5, 0, 0, 24),
	},

	ColorValueSlider = {
		Size = UDim2.new(1, -4, 0, 25),
		Black = Color3.fromRGB(0, 0, 0),
		White = Color3.fromRGB(1, 1, 1),
		GradientImage = "rbxasset://textures/TagEditor/lineargradient.png",
		PositionIndicatorSize = UDim2.new(0, 8, 0, 5),
		PositionIndicatorAnchor = Vector2.new(0.5, 0),
		PositionIndicatorImage = "rbxasset://textures/TagEditor/trianglesmall.png",
	},

	HueSaturationPicker = {
		Size = UDim2.new(1, -4, 1, -50),
		Black = Color3.fromRGB(1, 1, 1),
		GradientImage = "rbxasset://textures/TagEditor/huesatgradient.png",
		PositionIndicatorSize = UDim2.new(0, 8, 0, 5),
		PositionIndicatorAnchor = Vector2.new(0.5, 1),
		PositionIndicatorImage = "rbxasset://textures/TagEditor/trianglesmall.png",
	},

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
		Size = UDim2.new(1, -98, 0, 30),
		EditingSize = UDim2.new(1, 0, 0, 30),
		TextInputSize = UDim2.new(1, -30, 0, 30),
		Spacing = 9,
		IconColorHover = _StyleKey.ActionEnabled,
		IconColor = _StyleKey.ActionEnabled,
		IconSize = UDim2.fromOffset(16, 16),
	},

	TagTopPane = {
		SearchBarPaneSize = UDim2.new(1, -8, 0, 30),
		SearchBarSize = UDim2.new(1, -60, 0, 30),
		NewTagRowSize = UDim2.new(1, -8, 0, 30),
		WorldViewButtonSize = UDim2.fromOffset(98, 30),
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
		Spacing = UDim.new(0, 1),
		CanvasYPadding = 14,
	},

	TagListRow = {
		CheckboxSize = UDim2.fromOffset(24, 24),
		Size = UDim2.new(1, 0 , 0 , 24),
		Spacing = 9,
		TextSize = UDim2.new(1, -100, 0, 24),
		GroupTextSize = UDim2.new(1, -108, 0, 24),

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
		EditAssignmentsIcon = "rbxasset://textures/TagEditor/Compose.png",
		StopAssigningIcon = "rbxasset://textures/TagEditor/Close.png",
		ArrowColor = _StyleKey.TextPrimary,
		ClosedArrowImage = "rbxassetid://2606412312",
		OpenArrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
	},

	TagListGroupRow = {
		Size = UDim2.new(1, 0 , 0 , 24),
		Spacing = 9,
		SpacerSize = UDim2.fromOffset(24, 24),
		TextSize = UDim2.new(1, -108, 0, 24),
		IconColorActive = _StyleKey.TextContrast,
		IconColorInactive = _StyleKey.ActionEnabled,
		EditAssignmentsIcon = "rbxasset://textures/TagEditor/Compose.png",
		StopAssigningIcon = "rbxasset://textures/TagEditor/Close.png",
		ArrowColor = _StyleKey.TextPrimary,
		ClosedArrowImage = "rbxasset://textures/TagEditor/rightarrow.png",
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
			Icon = "rbxasset://textures/TagEditor/rightarrow.png",
			UnassignIcon = "rbxasset://textures/TagEditor/Remove.png",
			NewGroupIcon = "rbxasset://textures/TagEditor/Add.png",
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
			Icon = "rbxasset://textures/TagEditor/rightarrow.png",
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
		ClosedArrowImage = "rbxasset://textures/TagEditor/rightarrow.png",
		OpenArrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
		Size = UDim2.new(1, 0, 0, 30),
		Spacing = 10,
	},
}

return function(createMock: boolean?)
	local styleRoot
	local overridedDarkTheme = join(DarkTheme, {
		VisibleIcon = "rbxasset://textures/TagEditor/VisibilityOnDarkTheme.png",
		VisibleOffIcon = "rbxasset://textures/TagEditor/VisibilityOffDarkTheme.png",
	})
	local overridedLightTheme = join(LightTheme, {
		VisibleIcon = "rbxasset://textures/TagEditor/VisibilityOnLightTheme.png",
		VisibleOffIcon = "rbxasset://textures/TagEditor/VisibilityOffLightTheme.png",
	})

	if createMock then
		styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
	else
		styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
	end

	return styleRoot:extend(PluginTheme)
end
