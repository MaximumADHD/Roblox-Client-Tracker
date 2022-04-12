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
local FrameworkStyle = Framework.Style
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local join = Framework.Dash.join

local Util = Framework.Util
local deepCopy = Util.deepCopy
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local DarkTheme = Style.Themes.DarkTheme
local LightTheme = Style.Themes.LightTheme
local StyleKey = Style.StyleKey

local devFrameworkRoundBox = getRawComponentStyle("RoundBox")
local devFrameworkSelectInput = getRawComponentStyle("SelectInput")
local roundBox = deepCopy(devFrameworkRoundBox)
local selectInput = deepCopy(devFrameworkSelectInput)

local function getPluginTheme()
	local SideBarWidth = 300
	local TopBarHeight = 36
	local MaterialDetailsWidth = 300
	local TopBarButtonWidth = 28
	local TopBarDropdownWidth = 150
	local MaterialDetailsRowHeight = 30
	local MaterialDetailsTextureHeight = 60
	local ColumnWidth = 270

	return {
		MaterialManagerView = {
			-- Remove with FFlagDevFrameworkSplitPane
			SideBarSize = UDim2.new(0, SideBarWidth, 1, 0),
			TopBarSize = UDim2.new(1, 0, 0, TopBarHeight),
			-- Remove with FFlagDevFrameworkSplitPane
			MainViewSize = UDim2.new(1, -SideBarWidth, 1, 0),
			MaterialViewSize = UDim2.new(1, 0, 1, -TopBarHeight),
			MaterialGridSize = UDim2.new(1, -MaterialDetailsWidth, 1, 0),
			MaterialDetailsSize = UDim2.new(0, MaterialDetailsWidth, 1, 0),
		},

		MaterialPrompt = {
			DialogWidth = 720,
			DialogHeight = 720,
		},

		MaterialVariantCreator = {
			Background = StyleKey.ScrollingFrameBackgroundColor,
			ListItemPadding = UDim.new(0, 20),
			Padding = 20,
			PreviewSize = UDim2.new(0, 300, 1, 0),
			TextFont = Enum.Font.SourceSansBold,
			SettingsSize = UDim2.new(1, -300, 1, 0),
		},

		GeneralSettings = {
			DialogColumnSize = UDim2.new(0, ColumnWidth, 0, 25),
		},

		CustomSelectInput = join(selectInput, {
			PlaceholderTextColor = StyleKey.ButtonText,
			BackgroundStyle = join(roundBox, {
				Color = StyleKey.SelectInputBackgroundColor,
			}),
		}),

		LabeledElementList = {
			ItemSpacing = 5,
			VerticalSpacing = 4,
			ItemPaddingHorizontal = UDim.new(0, 35),
			ErrorOrWarningTextSize = 16,
			ErrorOrWarningColor = Color3.fromRGB(255, 0, 0),			
		},

		MaterialGrid = {
			BackgroundColor = StyleKey.ScrollingFrameBackgroundColor
		},

		MaterialTile = {
			ButtonPosition = UDim2.new(1, -26, 0, 10),
			ButtonSize = UDim2.fromOffset(16, 16),
			Padding = 5,
			MaterialVariant = {
				Image = "rbxasset://textures/MaterialManager/Material_Variant.png",
			},
			MaxWidth = 190,
			Size = UDim2.fromOffset(200, 200),
			Spacing = 5,
			TextLabelSize = UDim2.new(1, -10, 0, 18),
			TextSize = 20,
		},

		MaterialDetails = {
			ButtonPosition = UDim2.new(1, -MaterialDetailsRowHeight, 0, 5),
			ButtonSize = UDim2.fromOffset(MaterialDetailsRowHeight, MaterialDetailsRowHeight),
			ButtonStyle = "RoundSubtle",
			Close = {
				Image = "rbxasset://textures/ui/TopBar/close.png",
				Color = StyleKey.MainText,
			},
			DropdownSize = UDim2.fromOffset(160, 30),
			Favorite = {
				Image = "rbxasset://textures/MaterialManager/Favorite.png",
				Color = StyleKey.MainText,
			},
			HeaderBackground = StyleKey.ScrollingFrameBackgroundColor,
			HeaderFont = Enum.Font.SourceSansBold,
			HeaderSize = UDim2.new(1, 0, 0, 300),
			ImagePosition = UDim2.fromOffset(5, 5),
			ImageSize = UDim2.fromOffset(20, 20),
			LabelColumnWidth = UDim.new(0, 95),
			MoreMenu = {
				Image = "rbxasset://textures/MaterialManager/More_Menu.png",
				Color = StyleKey.MainText,
			},
			NameLabelSize = UDim2.new(1, -2 * MaterialDetailsRowHeight, 1, 0),
			LabelRowSize = UDim2.new(1, 0, 0, MaterialDetailsRowHeight),
			Padding = 10,
			SectionHeaderTextSize = 18,
			TextureLabelSize = UDim2.new(1, -MaterialDetailsTextureHeight, 1, 0),
			TextureRowSize = UDim2.new(1, 0, 0, MaterialDetailsTextureHeight),
			TextureSize = UDim2.fromOffset(MaterialDetailsTextureHeight, MaterialDetailsTextureHeight),
			TitleTextSize = 22,
		},

		TopBar = {
			CreateNewVariant = {
				Image = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
				Color = StyleKey.MainText,
			},
			ShowInExplorer = {
				Image = "rbxasset://textures/MaterialManager/Show_In_Explorer.png",
				Color = StyleKey.MainText,
			},
			ApplyToSelection = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = StyleKey.MainText,
			},
			Filter = {
				Image = "rbxasset://textures/MaterialManager/Filter.png",
				Color = StyleKey.MainText,
			},
			BackgroundColor = StyleKey.Titlebar,
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

			PreviewBackgroundColor = StyleKey.ScrollingFrameBackgroundColor,
			PreviewBorderColor = StyleKey.Border,

			ImportIconColor = StyleKey.ButtonText,
			ImportImageBackground = StyleKey.ImportImageBackground,
			ButtonColor = StyleKey.Button,
			ButtonHeight = 24,
			IconImportPaddingLeft = 45,
			IconImportPaddingRight = 55,

			ButtonIconColor = StyleKey.Icon,
			ButtonIconHoveredColor = StyleKey.ButtonHover,

			ToolbarTransparency = 0.4,
			ToolbarBackgroundColor = StyleKey.ToolbarBackgroundColor,
			ToolbarButtonBackgroundColor = StyleKey.ToolbarButtonBackgroundColor,
			ToolbarHeight = 32,

			ColumnWidth = ColumnWidth,
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
		local overridedDarkTheme = join(DarkTheme, {
			[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(41, 41, 41),
			[StyleKey.SelectInputBackgroundColor] = Color3.fromRGB(60, 60, 60),
			[StyleKey.ImportImageBackground] = Color3.fromRGB(34, 34, 34),
		})
		local overridedLightTheme = join(LightTheme, {
			[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(245, 245, 245),
			[StyleKey.SelectInputBackgroundColor] = Color3.fromRGB(255, 255, 255),
			[StyleKey.ImportImageBackground] = Color3.fromRGB(255, 255, 255),
		})

		if createMock then
			styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
		else
			styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
		end

		return styleRoot:extend(getPluginTheme())
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this template")
end

