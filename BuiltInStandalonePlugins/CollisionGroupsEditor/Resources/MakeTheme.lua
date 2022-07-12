--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Dash = require(Plugin.Packages.Dash)

local StyleModifier = Framework.Util.StyleModifier
local Style = Framework.Style
local BaseTheme = Style.Themes.BaseTheme
local StudioTheme = Style.Themes.StudioTheme
local ColorSystem = Style.ColorSystem
local StyleKey = Style.StyleKey
local ui = Style.ComponentSymbols

local Constants = require(Plugin.Plugin.Constants)

ui:add("GroupButton")

local function getPluginTheme()
	local TextInputTextSize = 14

	local ControlsHeaderRowHeight = Constants.GroupRowHeight
	local ControlsHeaderRowPadding = 6
	local ControlsHeaderButtonWidth = Constants.ControlsHeaderButtonWidth
	local ControlsHeaderButtonHeight = 34
	local ControlsHeaderGroupButtonsPaneWidth = 60
	local GroupSetMembershipButtonWidth = 36

	local scrollBarThickness = BaseTheme[ui.ScrollingFrame]["ScrollBarThickness"]

	return {
		[ui.Pane] = Dash.join(BaseTheme[ui.Pane], {
			-- Overriding the BorderBox style since DF Table doesn't allow control over its border
			["&BorderBox"] = BaseTheme[ui.Pane]["&Box"],
			["&GroupLabel"] = {
				Border = {
					Color = StyleKey.SubBackground,
				},

				Background = StyleKey.ForegroundMain,
				[StyleModifier.Pressed] = {
					Background = StyleKey.ForegroundMain,
				},

				[StyleModifier.Hover] = {
					Background = StyleKey.ButtonHover,
				},

				[StyleModifier.Selected] = {
					Background = StyleKey.ActionFocusBorder,
				},
			},
		}),

		[ui.TextLabel] = Dash.join(BaseTheme[ui.TextLabel], {
			["&GroupLabel"] = {
				TextSize = TextInputTextSize,

				[StyleModifier.Selected] = {
					TextColor = ColorSystem.White[0],
				},
			},
		}),

		[ui.TextInput] = Dash.join(BaseTheme[ui.TextInput], {
			TextSize = TextInputTextSize,
			["&GroupRename"] = Dash.join(BaseTheme[ui.TextInput]["&FilledRoundedBorder"] ,{
				useRoundBox = true,
				TextSize = TextInputTextSize,
				Padding = {
					Left = 6,
					Top = 2,
					Right = 6,
					Bottom = 2,
				}
			}),
			["&AddGroup"] = Dash.join(BaseTheme[ui.TextInput]["&FilledRoundedBorder"], {
				TextSize = TextInputTextSize,
				Padding = {
					Left = 6,
					Top = 2,
					Right = 6,
					Bottom = 2,
				}
			}),
		}),

		[ui.Button] = Dash.join(BaseTheme[ui.Button], {
			TextWrapped = true,
		}),

		[ui.Table] = {
			Border = StyleKey.MainBackground,
		},

		[ui.GroupButton] = {
			Size = UDim2.fromOffset(32, 32),
			ImageSize = UDim2.fromOffset(26, 26),
			Padding = 6,
			["&Rename"] = {
				Image = "rbxasset://textures/CollisionGroupsEditor/rename.png",
				HoveredImage = "rbxasset://textures/CollisionGroupsEditor/rename-hover.png",
			},
			["&SetMembership"] = {
				Padding = 10,
				ImageSize = UDim2.fromOffset(22, 22),
				Image = "rbxasset://textures/CollisionGroupsEditor/assign.png",
				HoveredImage = "rbxasset://textures/CollisionGroupsEditor/assign-hover.png",
			},
			["&Delete"] = {
				Image = "rbxasset://textures/CollisionGroupsEditor/delete.png",
				HoveredImage = "rbxasset://textures/CollisionGroupsEditor/delete-hover.png",
			},
		},

		ScrollingFrameNoBar = Dash.join(BaseTheme[ui.ScrollingFrame], {
			ScrollBarThickness = 0,
		}),

		MainBackground = StyleKey.ForegroundMuted,

		TableEntryBackground = StyleKey.ForegroundMain,
		TableEntrySelected = StyleKey.ActionFocusBorder,
		TableEntryHover = StyleKey.ButtonHover,

		CheckboxUncheckedImage = StyleKey.CheckboxUncheckedImage,
		CheckboxCheckedImage = StyleKey.CheckboxCheckedImage,
		NoCheckboxPanelColor = StyleKey.ForegroundMain,

		AddGroupInternalButtonSize = UDim2.new(0, ControlsHeaderButtonWidth, 0, ControlsHeaderButtonHeight),

		ScrollBarThickness = scrollBarThickness,

		GroupLabelStyle = {
			GroupSetMembershipButtonWidth = GroupSetMembershipButtonWidth,
			GroupNameLabelSize = UDim2.new(1, -GroupSetMembershipButtonWidth, 1, -2),
		},

		GroupLabelColumn = {
			Padding = {
				Top = 1,
				Bottom = 1 ,
				Left = 1,
				Right = 1,
			},
		},

		TableHeader = {
			Padding = {
				Top = 1,
				Bottom = 1,
				Left = 2,
				Right = scrollBarThickness,
			},
			ScrollingFrameSize = UDim2.new(1, -Constants.GroupRowWidth + 1, 0, Constants.GroupRowHeight),
			ScrollingFramePadding = {
				Top = 0,
				Bottom = 0,
				Left = 0,
				Right = scrollBarThickness,
			}
		},

		ListHeader = {
			Padding = {
				Top = 1,
				Bottom = 1,
				Left = 2,
				Right = 0,
			},
			LabelPanePadding = {
				Top = 0,
				Bottom = 0,
				Left = 12,
				right = 0,
			},
		},

		MainView = {
			MiddlePaneSize = UDim2.new(1, 0, 1, -ControlsHeaderRowHeight * 2 - ControlsHeaderRowPadding * 2),
			GridFrameSize = UDim2.new(1, -Constants.GroupRowWidth, 1, 0),
			ListFrameSize = UDim2.new(1, -Constants.GroupRowWidth -scrollBarThickness, 1, 0),
		},

		GroupListView = {
			MainPanePadding = {
				Top = 2,
				Bottom = 5,
				Left = 4,
				Right = 4,
			},
			UnselectedViewPadding = scrollBarThickness,
		},

		ControlsHeaderRow = {
			Size = UDim2.new(1, 0, 0, ControlsHeaderRowHeight + ControlsHeaderRowPadding * 2),
			Padding = ControlsHeaderRowPadding,
			Spacing = ControlsHeaderRowPadding,
			ButtonWidth = ControlsHeaderButtonWidth,
			ButtonHeight = ControlsHeaderButtonHeight,
			GroupButtonsPaneSize = UDim2.new(0, ControlsHeaderGroupButtonsPaneWidth + 3, 1, 0),
			TextButtonPane = {
				Size = UDim2.new(1, -(ControlsHeaderGroupButtonsPaneWidth + 6), 1, 0),
				Padding =  0,
				Spacing = ControlsHeaderRowPadding,
			},
		},
	}
end

return function(createMock)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	return styleRoot:extend(getPluginTheme())
end
