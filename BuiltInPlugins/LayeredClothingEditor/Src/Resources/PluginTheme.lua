local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local deepCopy = Util.deepCopy

local UI = Framework.UI
local Spritesheet = Framework.Util.Spritesheet

local FrameworkStyle = Framework.Style
local makeTheme = FrameworkStyle.makeTheme
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey
local ui = FrameworkStyle.ComponentSymbols
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local DarkTheme = FrameworkStyle.Themes.DarkTheme
local LightTheme = FrameworkStyle.Themes.LightTheme

local darkThemeOverride = Cryo.Dictionary.join(DarkTheme, {
	[StyleKey.PlayImage] = "rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png",
	[StyleKey.AddMoreImage] = "rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Light.png",
	[StyleKey.MoreActionsImage] = "rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Light.png",
	[StyleKey.AddMoreBigImage] = "rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Light.png",
})

local lightThemeOverride = Cryo.Dictionary.join(LightTheme, {
	[StyleKey.PlayImage] = "rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png",
	[StyleKey.AddMoreImage] = "rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png",
	[StyleKey.MoreActionsImage] ="rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png",
	[StyleKey.AddMoreBigImage] = "rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png",
})

local function mockStyleKeyImages()
	StyleKey.PlayImage = "rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"
	StyleKey.AddMoreImage = "rbxasset://textures/LayeredClothingEditor/Icon_AddMore_Dark.png"
	StyleKey.MoreActionsImage ="rbxasset://textures/LayeredClothingEditor/Icon_MoreAction_Dark.png"
	StyleKey.AddMoreBigImage = "rbxasset://textures/LayeredClothingEditor/AddMore_Big_50X50_Dark.png"
end

local function createValuesInternal(mock)
	if mock then
		mockStyleKeyImages()
	end

	local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
		SpriteSize = 12,
		NumSprites = 4,
	})
	local downArrowProps = arrowSpritesheet[3]

	local devFrameworkRoundTextInput = getRawComponentStyle("TextInput")
	local TextInput = Cryo.Dictionary.join(devFrameworkRoundTextInput, {
		PlaceholderTextColor = StyleKey.DimmedText,
		TextColor = StyleKey.MainText,
		["&RoundedBorder"] = {
			Padding = {
				Left = 10,
				Top = 5,
				Right = 10,
				Bottom = 5
			},
			BackgroundStyle = {
				Color = StyleKey.RibbonTab,
				BorderColor = StyleKey.RibbonTab,
				Transparency = 0,
				BorderTransparency = 0,
				BackgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
				BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
				SliceCenter = Rect.new(3, 3, 13, 13),
			},
		}
	})

	local CageControls = {
		Padding = 8,
		ButtonSize = 32,
		CageModeIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Mode.png",
		InnerCageIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Inner Cage.png",
		OuterCageIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Outer Cage.png",
		AutoWeightIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Auto-Weight.png",
		OptionsIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Option Dots.png",
	}

	local VisibilityControls = {
		Padding = 8,
		ButtonSize = 32,
		CageVisibilityIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Cage Visibility.png",
		MeshPartVisibilityIcon = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Mesh Visibility Icon.png",
		FocusMannequinIcon = "",
	}

	local DeformerDropdownMenu = Cryo.Dictionary.join(downArrowProps, {
		Size = UDim2.new(0, 10, 0, 10),
		Color = StyleKey.MainText,
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -6, 0.5, 0),
		Padding = 96,
		DropdownFramePadding = 12,
		ArrowSize = 24,
		DropdownFrameWidth = 216,
		Font = Enum.Font.SourceSans,
		TextSize = 18,
	})

	local EditorScreen = {
		EditHeight = 350,
		EditAndPreviewHeight = 175,
		PreviewHeight = 350,
	}

	local SelectFrame = {
		TextBoxHeight = 24,
		LabelWidth = 64,
	}

	local EditorFrame = {
		Height = 140,
		EditingModeHeight = 36,
		CageRowTextLabelSize = 0.3,
	}

	local LatticeToolSettings = {
		UIPadding = 24,
		Height = 24,
		ButtonWidth = 64,
		LayoutPadding = 6,
	}

	local Point = {
		DefaultPointSize = 0.015,
		DefaultColor = Color3.new(0, 1, 1),
		HoveredColor = Color3.new(1, 1, 0),
		SelectedColor = Color3.new(1, 1, 0),
		SelectedColorNoWeight = Color3.new(1, 0, 0),
	}

	local PointTool = {
		DefaultPointSize = 0.015,
	}

	local ControlPoint = {
		Transparency = 0.7,
		PointSize = 0.1,
		DefaultColor = Color3.new(0, 0, 1),
		HoveredColor = Color3.new(1, 1, 0),
		SelectedColor = Color3.new(1, 0, 0),
	}

	local EditTransparencyView = {
		TitleHeight = 32,
	}

	local AnimPlaybackSlider = {
		PlayImage = StyleKey.PlayImage,
		PauseImage = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png",
		PlayButtonWidth = 20,
		PlayTimeLabelWidth = 60,
		Padding = 24,
	}

	local InstanceSelector = {
		HoverLineThickness = 0.02,
	}

	local AddItemFromExplorerButton = {
		AddFromExploreButtonFrameHeight = 25,
		AddFromExploreButtonImage = StyleKey.AddMoreImage,
		AddFromExploreButtonSize = UDim2.new(0, 20, 0, 20),
	}

	local EditingModeFrame = {
		CageRowTextLabelSize = 0.3,
	}

	local SelectItemFrame = {
		AddFromExploreButtonFrameHeight = 25,
	}

	local SelectItemList = {
		SelectItemListScrollingFrameStyle = {
			BackgroundColor3 = StyleKey.CategoryItem,
			ScrollBarThickness = 7,
			BorderSizePixel = 0,
			AutoSizeCanvas = true,
			AutoSizeLayoutElement = "UIListLayout",
			ScrollingDirection = Enum.ScrollingDirection.Y,
		},
	}

	local SelectItemListRow = {
		MoreButtonSize = 20,
		SelectableRowStyle = {
			Background = UI.Decoration.Box,
			BackgroundStyle = {
				BorderSize = 0,
				Transparency = 1,
			},
			[StyleModifier.Hover] = {
				BackgroundStyle = {
					Color = StyleKey.ButtonHover,
					Transparency = 0,
				},
			},
			[StyleModifier.Selected] = {
				BackgroundStyle = {
					Color = StyleKey.DialogMainButtonSelected,
					Transparency = 0,
				},
			}
		},
	}

	local SelectItemMoreButton = {
		MoreButtonImage = StyleKey.MoreActionsImage,
		MoreButtonSize = 20,
	}

	local Tile = {
		TileSize = UDim2.new(0, 140, 0, 160),
		TileInnerBorder = Vector2.new(10, 10),
		ImageFrameSize = UDim2.new(0, 120, 0, 118),
		ImageSize = UDim2.new(0, 100, 0, 98),
		TextLabelSize = UDim2.new(0, 120, 0, 22),

		ButtonBackgroundColor = StyleKey.ButtonPressed,
		TextSize = 18,
		ImageBackgroundColor = StyleKey.CategoryItem,
	}

	local EditingModeRadioButtonList = {
		Padding = 8,
	}

	local PreviewGrid = {
		TileSize = UDim2.new(0, 140, 0, 160),
		TileInnerBorder = Vector2.new(10, 10),
		ImageFrameSize = UDim2.new(0, 120, 0, 118),
		ImageSize = UDim2.new(0, 100, 0, 98),
		TextLabelSize = UDim2.new(0, 120, 0, 22),

		ButtonBackgroundColor = StyleKey.ButtonPressed,
		TextSize = 18,
		DefaultTileImages = {
			[PreviewConstants.TABS_KEYS.Avatars] = "rbxasset://textures/LayeredClothingEditor/Default_Preview_Avatars.png",
			[PreviewConstants.TABS_KEYS.Clothing] = "rbxasset://textures/LayeredClothingEditor/Default_Preview_Clothing.png",
			[PreviewConstants.TABS_KEYS.Animations] = "rbxasset://textures/LayeredClothingEditor/Default_Preview_Animation.png",
		},
		AddNewImage = StyleKey.AddMoreBigImage,
		SmallImageSize = UDim2.new(0, 46, 0, 42),
		ImageBackgroundColor = StyleKey.CategoryItem,
	}

	local Lattice = {
		LinkColor = Color3.new(0, 0, 0),
	}

	local Wireframe = {
		WireColorInner = Color3.fromRGB(68, 103, 128),
		WireColorOuter = Color3.fromRGB(140, 65, 168),
	}

	local ResetSettings = {
		ButtonHeight = 36
	}

	local PreviewToStarterCharacterButton = {
		ButtonHeight = 36,
	}

	local MeshPartTool = {
		Transparency = 0.8,
		InBoundsColor = Color3.new(0, 0, 1),
		OutBoundsColor = Color3.new(1, 0, 0),
		LineThickness = 5,
		LineColor = Color3.new(0, 0, 0),
	}

	local rootTheme = {
		BackgroundColor = StyleKey.MainBackground,
		ButtonColor = StyleKey.Button,
		RibbonTab = StyleKey.RibbonTab,
		ProgressBarColor = StyleKey.DialogMainButtonSelected,
		ScrollBarColor = StyleKey.ScrollBar,
		HoverColor = StyleKey.ButtonHover,
		BorderColor = StyleKey.Border,
		SubTextColor = StyleKey.SubText,
		InfoTextColor = StyleKey.DimmedText,
		TitleTextColor = StyleKey.TitlebarText,
		TextColor = StyleKey.MainText,
		TextDisabledColor = Color3.fromRGB(148, 148, 148),
		ErrorColor = StyleKey.ErrorText,
		LinkColor = StyleKey.LinkText,
		Green = Color3.fromRGB(64, 166, 81),
		White = Color3.fromRGB(255, 255, 255),
		DisabledColor = StyleKey.MainTextDisabled,
		ScrollbarTransparency = 0.7,
		ScrollbarSize = 7,
		TextSize = 18,
		RowHeight = 32,
		Font = Enum.Font.SourceSans,
		FontBold = Enum.Font.SourceSansSemibold,
		PopupMessageSize = Vector2.new(200, 100),
		MainPadding = 20,
		HeaderPadding = 8,
		SliderHeight = 32,
		ScrollBarThickness = 8,
		TabHeight = 32,
		BorderSize = 1,
	}

	local componentThemes = {
		CageControls = CageControls,
		VisibilityControls = VisibilityControls,
		EditorScreen = EditorScreen,
		EditorFrame = EditorFrame,
		DeformerDropdownMenu = DeformerDropdownMenu,
		LatticeToolSettings = LatticeToolSettings,
		AddItemFromExplorerButton = AddItemFromExplorerButton,
		EditingModeFrame = EditingModeFrame,
		EditingModeRadioButtonList = EditingModeRadioButtonList,
		SelectItemFrame = SelectItemFrame,
		SelectItemList = SelectItemList,
		SelectItemListRow = SelectItemListRow,
		SelectItemMoreButton = SelectItemMoreButton,
		PreviewGrid = PreviewGrid,
		EditTransparencyView = EditTransparencyView,
		AnimPlaybackSlider = AnimPlaybackSlider,
		Tile = Tile,
		SelectFrame = SelectFrame,
		PointTool = PointTool,
		Point = Point,
		ControlPoint = ControlPoint,
		Lattice = Lattice,
		Wireframe = Wireframe,
		ResetSettings = ResetSettings,
		PreviewToStarterCharacterButton = PreviewToStarterCharacterButton,
		TextInput = TextInput,
		InstanceSelector = InstanceSelector,
		MeshPartTool = MeshPartTool,
	}

	return rootTheme, componentThemes
end

local function customizeDevFrameworkComponents(componentThemeStyles)
	componentThemeStyles[ui.SimpleTab] = Cryo.Dictionary.join(getRawComponentStyle("SimpleTab"), {
		Color = StyleKey.ButtonText,
		BackgroundColor = StyleKey.MainBackground,
		BorderColor = StyleKey.MainBackground,
		TopLineColor = StyleKey.DialogMainButton,
		BottomLineColor = StyleKey.Border,
		[StyleModifier.Hover] = {
			Color = StyleKey.DialogMainButton,
		},
		[StyleModifier.Selected] = {
			BottomLineColor = StyleKey.MainBackground,
			BackgroundColor = StyleKey.MainBackground,
			BorderColor = StyleKey.Border,
		},
		[StyleModifier.Disabled] = {
			Color = StyleKey.ButtonTextDisabled,
		},
    })
end

local function createValues(mock)
	local rootTheme, componentThemes = createValuesInternal(mock)
	local componentThemeStyles = {}
	for component, componentTheme in pairs(componentThemes) do
		local componentUI = ui:add(component)
		componentThemeStyles[componentUI] = componentTheme
	end

	customizeDevFrameworkComponents(componentThemeStyles)

	return Cryo.Dictionary.join(rootTheme, componentThemeStyles)
end

local PluginTheme = {}

function PluginTheme.makePluginTheme()
	local styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	return makeTheme(AvatarToolsShared.StyleRoot, createValues(), styleRoot)()
end

function PluginTheme.mock()
	local styleRoot = StudioTheme.mock(darkThemeOverride, lightThemeOverride)
	return makeTheme(AvatarToolsShared.StyleRoot, createValues(true), styleRoot)()
end

function PluginTheme.getMockTheme(childName)
	return PluginTheme.mock()
end

return PluginTheme