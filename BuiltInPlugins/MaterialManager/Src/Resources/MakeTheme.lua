--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local _StyleKey = Style.StyleKey

local function getPluginTheme()
	local SideBarWidth = 300
	local TopBarHeight = 36
	local MaterialDetailsWidth = 300
	local TopBarButtonWidth = 28
	local TopBarDropdownWidth = 150

	return {
		MaterialManagerView = {
			SideBarSize = UDim2.new(0, SideBarWidth, 1, 0),
			TopBarSize = UDim2.new(1, 0, 0, TopBarHeight),
			MainViewSize = UDim2.new(1, -SideBarWidth, 1, 0),
			MaterialViewSize = UDim2.new(1, 0, 1, -TopBarHeight),
			MaterialGridSize = UDim2.new(1, -MaterialDetailsWidth, 1, 0),
			MaterialDetailsSize = UDim2.new(0, MaterialDetailsWidth, 1, 0),
		},

		MaterialPrompt = {
			DialogWidth = 800,
			DialogHeight = 600,
		},

		MaterialVariantCreator = {
			ListItemPadding = UDim.new(0, 10),
			Padding = 10,
		},

		MaterialVariantSettings = {
			DialogColumnSize = UDim2.new(0, 220, 0, 25),
		},

		LabeledElementList = {
			ItemSpacing = 10,
			ItemPaddingHorizontal = UDim.new(0, 15),
			TextWidth = UDim.new(0, 80),
		},

		MaterialTile = {
			Padding = 10,
			Size = UDim2.fromOffset(200, 200),
			TextSize = 12,
		},

		SideBar = {
			IconColor = _StyleKey.MainText,
			IconSize = UDim2.fromOffset(16, 16),
			AllIconImage = "rbxasset://textures/MaterialManager/All.png",
		},

		TopBar = {
			CreateNewVariant = {
				Image = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
				Color = _StyleKey.MainText,
			},
			ShowInExplorer = {
				Image = "rbxasset://textures/MaterialManager/Show_In_Explorer.png",
				Color = _StyleKey.MainText,
			},
			ApplyToSelection = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = _StyleKey.MainText,
			},
			Filter = {
				Image = "rbxasset://textures/MaterialManager/Filter.png",
				Color = _StyleKey.MainText,
			},
			BackgroundColor = _StyleKey.Titlebar,
			ButtonSize = UDim2.fromOffset(TopBarButtonWidth, TopBarButtonWidth),
			DropdownSize = UDim2.fromOffset(TopBarDropdownWidth, TopBarButtonWidth),
			ImagePosition = UDim2.fromOffset(6, 6),
			ImageSize = UDim2.fromOffset(16, 16),
			Padding = (TopBarHeight - TopBarButtonWidth) / 2,
			SearchBarSize = UDim2.new(1, -(TopBarButtonWidth * 4 + ((TopBarHeight - TopBarButtonWidth) / 2 * 5) + TopBarDropdownWidth), 0, TopBarButtonWidth),
		},

		PromptSelectorWithPreview = {
			ExpandIcon = "rbxasset://textures/StudioSharedUI/preview_expand.png",
			ClearIcon = "rbxasset://textures/StudioSharedUI/preview_clear.png",
			ImportIcon = "rbxasset://textures/StudioSharedUI/import@2x.png",

			PreviewBackgroundColor = _StyleKey.Button,
			PreviewBorderColor = _StyleKey.Border,

			ButtonIconColor = _StyleKey.Icon,
			ButtonIconHoveredColor = _StyleKey.ButtonHover,

			ToolbarTransparency = 0.4,
			ToolbarBackgroundColor = _StyleKey.ToolbarBackgroundColor,
			ToolbarButtonBackgroundColor = _StyleKey.ToolbarButtonBackgroundColor,
			ToolbarHeight = 32,

			ColumnWidth = 220,
			PreviewSize = 88,

			PaddingVertical = 4,
			PaddingHorizontal = 12,
			TextHeight = 16,

			ExpandedPreviewDefaultSize = Vector2.new(400, 400),
			ExpandedPreviewMinSize = Vector2.new(100, 100),
			ExpandedPreviewPadding = UDim.new(0, 16),
		}
	}
end

if THEME_REFACTOR then
	return function(createMock: boolean?)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(getPluginTheme())
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this template")
end
