--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

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
local StyleModifier = Util.StyleModifier
local deepCopy = Util.deepCopy

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local DarkTheme = Style.Themes.DarkTheme
local LightTheme = Style.Themes.LightTheme
local StyleKey = Style.StyleKey


local FFlagMaterialManagerSideBarHide = game:GetFastFlag("MaterialManagerSideBarHide")

local Flags = Plugin.Src.Flags
local getFFlagDevFrameworkInfiniteScrollingGridBottomPadding = require(Flags.getFFlagDevFrameworkInfiniteScrollingGridBottomPadding)

local devFrameworkRoundBox = getRawComponentStyle("RoundBox")
local devFrameworkSelectInput = getRawComponentStyle("SelectInput")
local roundBox = deepCopy(devFrameworkRoundBox)
local selectInput = deepCopy(devFrameworkSelectInput)

local function getPluginTheme()
	local TopBarHeight = 36
	local MaterialDetailsWidth = 300
	local TopBarButtonWidth = 28
	local MaterialDetailsRowHeight = 30
	local MaterialDetailsTextureHeight = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then 64 else 60
	local MaterialDetaulsLabelWidth = 108
	local ColumnWidth = 270
	local LabelColumnWidth = UDim.new(0, 80)
	local DialogWidth = 720
	local DialogHeight = 480
	local SearchBarMaxWidth = 600
	local IconSize = UDim2.fromOffset(20, 20)
	local MaterialTileWidth = 200
	local TilePadding = 10
	local LabeledItemSpacing = 5
	local LabeledVerticalSpacing = 4
	local LabeledItemPaddingHorizontal = UDim.new(0, 35)
	local LabeledErrorOrWarningTextSize = 16
	local LabeledErrorOrWarningColor = Color3.fromRGB(255, 0, 0)

	return {
		MaterialBrowser = {
			TopBarSize = UDim2.new(1, 0, 0, TopBarHeight),
			MainViewSize = UDim2.new(1, 0, 1, -TopBarHeight),
			MinSideBarWidth = 120,
			MaterialDetailsWidth = MaterialDetailsWidth,
			MaterialGridSize = UDim2.new(1, -MaterialDetailsWidth, 1, 0),
			MaterialDetailsSize = UDim2.new(0, MaterialDetailsWidth, 1, 0),
			MinListWidth = 50,
			HideIcon = "rbxasset://textures/MaterialManager/chevrons-left.png",
			ChevronLeft = "rbxasset://textures/MaterialManager/chevrons-left.png",
			ChevronRight = "rbxasset://textures/MaterialManager/chevrons-right.png",
			IconColor = StyleKey.ButtonText,
			BackgroundColor = StyleKey.MainBackground,
			IconSize = IconSize,
			MaterialTileWidth = MaterialTileWidth,
			Padding = TilePadding,
		},

		MaterialPrompt = {
			DialogWidth = DialogWidth,
			DialogHeight = DialogHeight,
		},

		MaterialVariantCreator = {
			Background = StyleKey.ScrollingFrameBackgroundColor,
			ListItemPadding = UDim.new(0, 12),
			Padding = 20,
			PreviewSize = UDim2.new(0, 300, 1, 0),
			TextFont = Enum.Font.SourceSansBold,
			SettingsSize = UDim2.new(1, -300, 1, 0),
		},

		GeneralSettings = {
			DialogColumnSize = UDim2.new(0, ColumnWidth, 0, 25),
			LabelColumnWidth = LabelColumnWidth,
			ItemSpacing = LabeledItemSpacing,
			VerticalSpacing = LabeledVerticalSpacing,
			ItemPaddingHorizontal = LabeledItemPaddingHorizontal,
			ErrorOrWarningTextSize = LabeledErrorOrWarningTextSize,
			ErrorOrWarningColor = LabeledErrorOrWarningColor,
		},

		TextureSettings = {
			LabelColumnWidth = LabelColumnWidth,
			ItemSpacing = LabeledItemSpacing,
		},

		AdditionalPropertiesSettings = {
			DialogColumnSize = UDim2.new(0, ColumnWidth, 0, 25),
			ItemSpacing = LabeledItemSpacing,
			LabelColumnWidth = LabelColumnWidth,
			VerticalSpacing = LabeledVerticalSpacing,
			ItemPaddingHorizontal = LabeledItemPaddingHorizontal,
			ErrorOrWarningTextSize = LabeledErrorOrWarningTextSize,
			ErrorOrWarningColor = LabeledErrorOrWarningColor,
		},

		CustomSelectInput = join(selectInput, {
			PlaceholderTextColor = StyleKey.ButtonText,
			BackgroundStyle = join(roundBox, {
				Color = StyleKey.SelectInputBackgroundColor,
			}),
		}),

		CustomSelectInputError = join(selectInput, {
			PlaceholderTextColor = StyleKey.ButtonText,
			BackgroundStyle = join(roundBox, {
				Color = StyleKey.SelectInputBackgroundColor,
				BorderColor = StyleKey.ErrorText,
			}),
		}),

		LabeledTextureElement = {
			VerticalSpacing = LabeledVerticalSpacing,
			ItemPaddingHorizontal = LabeledItemPaddingHorizontal,
			ErrorOrWarningTextSize = LabeledErrorOrWarningTextSize,
			ErrorOrWarningColor = LabeledErrorOrWarningColor,
		},

		-- Remove with removing FFlagMaterialManagerRefactorMaterialVariantCreator
		LabeledElementList = {
			ItemSpacing = 5,
			VerticalSpacing = 4,
			ItemPaddingHorizontal = UDim.new(0, 35),
			ErrorOrWarningTextSize = 16,
			ErrorOrWarningColor = Color3.fromRGB(255, 0, 0),			
		},

		MaterialGrid = {
			BackgroundColor = StyleKey.ScrollingFrameBackgroundColor,
			ChevronLeft = "rbxasset://textures/MaterialManager/chevrons-left.png",
			ChevronRight = "rbxasset://textures/MaterialManager/chevrons-right.png",
			GridPadding = 4,
			IconColor = StyleKey.ButtonText,
			IconSize = IconSize,
			ListHeight = 40,
			ListPadding = 2,
			Padding = 5,
			ShowIcon = "rbxasset://textures/MaterialManager/chevrons-right.png",
		},

		MaterialItem = {
			ApplyIcon = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = StyleKey.BrightText,
			},
			ApplyIconPosition = UDim2.new(1, -4, 0, 4),
			ApplyIconAnchorPoint = Vector2.new(1, 0),
			ButtonSize = UDim2.fromOffset(28, 28),
			Gradient = StyleKey.Gradient,
			GradientHover = StyleKey.GradientHover,
			GridPadding = 4,
			ListPadding = 2,
			IconSize = IconSize,
			ListHeight = 40,
			MaterialVariantIcon = {
				Image = "rbxasset://textures/MaterialManager/Material_Variant.png",
			},
			MaterialVariantIconPosition = UDim2.new(1, -4, 1, -4),
			MaterialVariantIconAnchorPoint = Vector2.new(1, 1),
			Padding = 4,
			Spacing = 4,
			StatusIconPosition = UDim2.new(0, 6, 0, 6),
			TextSize = 20,
		},

		-- Remove MaterialTile with FFlagMaterialManagerGridListView
		MaterialTile = {
			Height = 40,
			ApplyMaterialIconPosition = UDim2.new(1, -34, 0, 6),
			MaterialVariantIconPosition = UDim2.new(1, -26, 1, -26),
			StatusIconPosition = UDim2.new(0, 10, 0, 10),
			Padding = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding then TilePadding else 5,
			IconSize = IconSize,
			MaterialVariant = {
				Image = "rbxasset://textures/MaterialManager/Material_Variant.png",
			},
			MaxWidth = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding then 180 else 190,
			Size = if FFlagMaterialManagerSideBarHide then UDim2.fromOffset(MaterialTileWidth, MaterialTileWidth) else UDim2.fromOffset(200, 200),
			Spacing = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding then 10 else 5,
			TextLabelSize = UDim2.new(1, if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding then -20 else -10, 0, 18),

		},

		MaterialListItem = {
			ApplyIcon = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = StyleKey.BrightText,
			},
			ApplyIconPosition = UDim2.new(1, -4, 0, 4),
			ButtonSize = UDim2.fromOffset(28, 28),
			Height = 40,
			IconSize = IconSize,
			MaterialVariantIcon = {
				Image = "rbxasset://textures/MaterialManager/Material_Variant.png",
			},
			Spacing = 4,
			TextSize = 20,
		},


		MaterialTileItem = {
			ApplyIcon = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = StyleKey.BrightText,
			},
			ApplyIconPosition = UDim2.new(1, -4, 0, 4),
			ApplyIconAnchorPoint = Vector2.new(1, 0),
			ButtonSize = UDim2.fromOffset(28, 28),
			Gradient = StyleKey.Gradient,
			GradientHover = StyleKey.GradientHover,
			GradientPosition = UDim2.new(0.5, 0, 1, -2),
			GradientSize = UDim2.new(1, -8, 0, 24),
			IconSize = IconSize,
			MaterialVariantIcon = {
				Image = "rbxasset://textures/MaterialManager/Material_Variant.png",
			},
			MaterialVariantIconAnchorPoint = Vector2.new(1, 1),
			MaterialVariantIconPosition = UDim2.new(1, -4, 1, -4),
			Padding = 6,
			StatusIconPosition = UDim2.new(0, 10, 0, 10),
			TextSize = 20,
		},

		MaterialDetails = {
			AdditionalLabelSize = UDim2.new(0, MaterialDetaulsLabelWidth, 1, 0), -- Remove with FFlagMaterialManagerDetailsOverhaul
			AdditionalTextSize = UDim2.new(1, -MaterialDetaulsLabelWidth, 1, 0), -- Remove with FFlagMaterialManagerDetailsOverhaul
			ButtonPosition = UDim2.new(1, -MaterialDetailsRowHeight, 0, 5),
			ButtonSize = UDim2.fromOffset(MaterialDetailsRowHeight, MaterialDetailsRowHeight),
			ButtonStyle = "RoundSubtle",
			Close = {
				Image = "rbxasset://textures/ui/TopBar/close.png",
				Color = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then StyleKey.BrightText else StyleKey.MainText,
			},
			CreateVariant = {
				Image = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
				Color = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then StyleKey.BrightText else StyleKey.MainText,
			},
			Delete = {
				Image = "rbxasset://textures/MaterialManager/Delete.png",
				Color = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then StyleKey.BrightText else StyleKey.MainText,
			},
			DropdownSize = UDim2.fromOffset(160, 30),
			Edit = {
				Image = "rbxasset://textures/MaterialManager/Edit.png",
				Color = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then StyleKey.BrightText else StyleKey.MainText,
			},
			HeaderBackground = StyleKey.ScrollingFrameBackgroundColor,
			HeaderFont = Enum.Font.SourceSansBold,
			HeaderSize = UDim2.new(1, 0, 0, 300),
			ImagePosition = UDim2.fromOffset(5, 5),
			ImageSize = UDim2.fromOffset(20, 20),
			-- Remove NameLabelSize* with FFlagMaterialManagerGlassNeonForceField
			NameLabelSizeVariant = UDim2.new(1, -2 * MaterialDetailsRowHeight, 1, 0),
			NameLabelSizeBuiltIn = UDim2.new(1, -MaterialDetailsRowHeight, 1, 0),
			NoTexture = StyleKey.NoTextureFound, -- Remove with FFlagMaterialManagerDetailsOverhaul
			LabelRowSize = UDim2.new(1, 0, 0, MaterialDetailsRowHeight),
			OverrideSize = UDim2.fromOffset(140, 20),
			Padding = 10,
			SectionHeaderTextSize = 18,
			TextureLabelSize = UDim2.new(1, -MaterialDetailsTextureHeight, 1, 0), -- Remove with FFlagMaterialManagerDetailsOverhaul
			TextureRowSize = UDim2.new(1, 0, 0, MaterialDetailsTextureHeight), -- Remove with FFlagMaterialManagerDetailsOverhaul
			TextureSize = UDim2.fromOffset(MaterialDetailsTextureHeight, MaterialDetailsTextureHeight), -- Remove with FFlagMaterialManagerDetailsOverhaul
			TitleTextSize = 22,
		},

		LabeledString = {
			LabelSize = UDim2.new(0, MaterialDetaulsLabelWidth, 1, 0),
			RowSize = UDim2.new(1, 0, 0, MaterialDetailsRowHeight),
			TextSize = UDim2.new(1, -MaterialDetaulsLabelWidth, 1, 0),
		},

		LabeledTexture = {
			LabelSize = UDim2.new(1, -MaterialDetailsTextureHeight, 1, 0),
			NoTexture = StyleKey.NoTextureFound,
			Padding = 10,
			RowSize = UDim2.new(1, 0, 0, MaterialDetailsTextureHeight),
			TextureSize = UDim2.fromOffset(MaterialDetailsTextureHeight, MaterialDetailsTextureHeight),
		},

		StatusIcon = {
			Error = {
				Image = "rbxasset://textures/StudioSharedUI/alert_error@2x.png",
			},
			IconSize = IconSize,
			Warning = {
				Image = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png",
			},
		},

		TopBar = {
			CreateNewVariant = {
				Image = "rbxasset://textures/MaterialManager/Create_New_Variant.png",
				Color = StyleKey.BrightText,
			},
			Grid = StyleKey.GridIcon,
			List = StyleKey.ListIcon,
			ShowInExplorer = {
				Image = "rbxasset://textures/MaterialManager/Show_In_Explorer.png",
				Color = StyleKey.BrightText,
				[StyleModifier.Disabled] = {
					Transparency = 0.5,
				},
			},
			ApplyToSelection = {
				Image = "rbxasset://textures/MaterialManager/Apply_To_Selection.png",
				Color = StyleKey.BrightText,
				[StyleModifier.Disabled] = {
					Transparency = 0.5,
				},
			},
			-- TODO: return when Filter is on
			-- Filter = {
			-- 	Image = "rbxasset://textures/MaterialManager/Filter.png",
			-- 	Color = StyleKey.MainText,
			-- },
			-- DropdownSize = UDim2.fromOffset(TopBarDropdownWidth, TopBarButtonWidth),
			TopBarButtonWidth = TopBarButtonWidth,
			BackgroundColor = StyleKey.Titlebar,
			ViewTypeBackground = StyleKey.Button,
			ButtonSize = UDim2.fromOffset(TopBarButtonWidth, TopBarButtonWidth),
			ImagePosition = UDim2.fromOffset(6, 6),
			ImageSize = UDim2.fromOffset(16, 16),
			Padding = (TopBarHeight - TopBarButtonWidth) / 2,
			SearchBarMaxWidth = SearchBarMaxWidth,
			SpacerWidth = (DialogWidth - 3 * (TopBarButtonWidth + (TopBarHeight - TopBarButtonWidth) / 2) - SearchBarMaxWidth) / 2,
			ViewTypeSize = UDim2.new(0, 50, 1, 0),
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
			ButtonIconHoveredColor = Color3.fromRGB(255, 255, 255),
			BorderColorError = StyleKey.ErrorText,

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

return function(createMock: boolean?)
	local styleRoot
	local overridedDarkTheme = join(DarkTheme, {
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(41, 41, 41),
		[StyleKey.SelectInputBackgroundColor] = Color3.fromRGB(60, 60, 60),
		[StyleKey.ImportImageBackground] = Color3.fromRGB(34, 34, 34),
		[StyleKey.NoTextureFound] = "rbxasset://textures/MaterialManager/Texture_None.png",
		[StyleKey.GridIcon] = "rbxasset://textures/MaterialManager/Grid_DT.png",
		[StyleKey.ListIcon] = "rbxasset://textures/MaterialManager/List_DT.png",
		[StyleKey.Gradient] = "rbxasset://textures/MaterialManager/Gradient_DT.png",
		[StyleKey.GradientHover] = "rbxasset://textures/MaterialManager/Gradient_Hover_DT.png",
	})
	local overridedLightTheme = join(LightTheme, {
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(245, 245, 245),
		[StyleKey.SelectInputBackgroundColor] = Color3.fromRGB(255, 255, 255),
		[StyleKey.ImportImageBackground] = Color3.fromRGB(255, 255, 255),
		[StyleKey.NoTextureFound] = "rbxasset://textures/MaterialManager/Texture_None_Light.png",
		[StyleKey.GridIcon] = "rbxasset://textures/MaterialManager/Grid_LT.png",
		[StyleKey.ListIcon] = "rbxasset://textures/MaterialManager/List_LT.png",
		[StyleKey.Gradient] = "rbxasset://textures/MaterialManager/Gradient_LT.png",
		[StyleKey.GradientHover] = "rbxasset://textures/MaterialManager/Gradient_Hover_LT.png",
	})

	if createMock then
		styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
	else
		styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
	end

	return styleRoot:extend(getPluginTheme())
end
