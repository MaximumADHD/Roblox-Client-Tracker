--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local getFFlagDevFrameworkExpandablePaneSectionStyle = require(Plugin.Src.Flags.getFFlagDevFrameworkExpandablePaneSectionStyle)

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local BaseTheme = Style.Themes.BaseTheme
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols

local UIData = Framework.UIData
local ExpandablePaneStyle = require(UIData.ExpandablePane.style)

local section = getFFlagDevFrameworkExpandablePaneSectionStyle() and ExpandablePaneStyle["&Section"] or nil
local content = ExpandablePaneStyle.Content

local Dash = Framework.Dash
local join = Dash.join

local PluginTheme = {
	PropertyView = {
		IconSize = 20,
		Spacing = 4,
	},

	TopBar = {
		-- TODO CIN-43: Use AutomaticSize.X once FFlagDevFrameworkAddContainerAutomaticSizing is enabled
		ButtonSize = UDim2.new(0, 80, 1, 0),
		Padding = {
			Left = 10,
			Top = 6,
			Right = 10,
			Bottom = 5,
		},
		Spacing = 6,
	},

	TreeViewToolbar = {
		Padding = {
			Left = 6,
			Top = 4,
			Right = 6,
			Bottom = 3,
		},
		Spacing = 6,
	},

	Sizes = {
		IndicatorOffset = 20,
		IndicatorSize = 100,
		PreviewRatio = 0.5,
		StatusMessagePadding = 24,
		ToolbarHeight = 30,
		TopBarHeight = 40,
	},

	UploadWidget = {
		Width = 500,
		Height = 100,
		TextLabelSize = UDim2.new(1, -10, 0, 22),
		TextSize = 24,
		SubtextSize = 16,
		TextAlignment = Enum.TextXAlignment.Center,
		LoadingBarHeight = 12,
		LoadingBarContainerSize = UDim2.new(0.8, 0, 0, 10),
		SuccessColor = Color3.fromRGB(2, 183, 87),
		FailureColor = Color3.fromRGB(255, 85, 85),
		TopPadding = {
			Left = 10,
			Top = 20,
			Right = 10,
			Bottom = 10,
		},
	},

	ErrorWidget = {
		Height = 100,
		IconSize = 48,
		IconSpacing = 16,
		SubtextSize = 18,
		TextSize = 24,
		Width = 500,
	},

	ErrorIcon = {
		Image = "rbxasset://textures/StudioSharedUI/alert_error@2x.png",
	},
	WarningIcon = {
		Image = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png",
	},
	ErrorStatus = {
		TextColor = Color3.fromRGB(255, 85, 85),
		TextXAlignment = Enum.TextXAlignment.Left,
	},
	WarningStatus = {
		TextColor = Color3.fromRGB(255, 170, 33),
		TextXAlignment = Enum.TextXAlignment.Left,
	},

	[ui.ExpandablePane] = join(BaseTheme[ui.ExpandablePane], {
		["&AssetSettings"] = join(section, {
			Content = join(content, {
				Padding = {
					Left = 4,
					Top = 10,
					Right = 4,
					Bottom = 10,
				},
			}),
		}),
	})
}

if THEME_REFACTOR then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(PluginTheme)
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	assert(false, "Mesh Importer requires Stylizer")
end
