local FFlagToolboxAssetCategorization3 = game:GetFastFlag("ToolboxAssetCategorization3")
local FFlagToolboxPrivatePublicAudioAssetConfig3 = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig3")
local FFlagToolboxAssetStyleUpdate = game:GetFastFlag("ToolboxAssetStyleUpdate")
local FFlagAssetConfigDistributionQuotas = game:GetFastFlag("AssetConfigDistributionQuotas")

local Plugin = script.Parent.Parent.Parent

local Images = require(Plugin.Core.Util.Images)

local Packages = Plugin.Packages

local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local isCli = require(Util.isCli)

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey
local StyleColors = FrameworkStyle.Colors
local DarkTheme = require(Packages.Framework).Style.Themes.DarkTheme
local LightTheme = require(Packages.Framework).Style.Themes.LightTheme

local Cryo = require(Packages.Cryo)

local ui = FrameworkStyle.ComponentSymbols
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local makeTheme = function(themeExtension, themeClass)
	themeClass = themeClass or StudioTheme

	local styleRoot
	local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
		[StyleKey.Toolbox_PublishAssetBackground] = StyleColors.Slate,
		[StyleKey.Toolbox_AssetOutlineBoarderColor] = FFlagToolboxAssetStyleUpdate and Color3.fromHex("#121212"),
		[StyleKey.Toolbox_AssetOutlineTransparency] = 0,
		[StyleKey.Toolbox_AssetOutlineVerifiedBackground] = Color3.fromRGB(12, 43, 89),
		[StyleKey.Toolbox_AssetDropdownSize] = 8,
		[StyleKey.Toolbox_AssetBorderSize] = FFlagToolboxAssetStyleUpdate and 0 or 1,
		[StyleKey.Toolbox_AssetBackgroundColor] = Color3.fromRGB(41, 41, 41),
		[StyleKey.Toolbox_AssetBackgroundImage] = "",
		[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(178, 178, 178),
		[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(136, 136, 136),
		[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Dark,
		[StyleKey.Toolbox_DropdownIconColor] = StyleColors.White,
		[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(34, 34, 34),
		[StyleKey.Toolbox_NavigationLinkTextColor] = FFlagToolboxAssetCategorization3 and StyleColors.White or nil,
		[StyleKey.Toolbox_NavigationLinkTextColorHover] = FFlagToolboxAssetCategorization3 and Color3.fromHex(
			"#AAAAAA"
		) or nil,
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(41, 41, 41),
		[StyleKey.ScrollingFrameImageColor] = Color3.fromRGB(85, 85, 85),
		[StyleKey.Toolbox_SearchTagBackgroundColor] = Color3.fromRGB(56, 56, 56),
		[StyleKey.Toolbox_SearchPillBackgroundColor] = if FFlagToolboxAssetCategorization3
			then Color3.fromHex("#173350")
			else nil,
		[StyleKey.Toolbox_SearchPillBackgroundColorHovered] = if FFlagToolboxAssetCategorization3
			then Color3.fromHex("#0055AC")
			else nil,
		[StyleKey.Toolbox_TipsTextColor] = if FFlagAssetConfigDistributionQuotas
			then nil
			else (if FFlagToolboxPrivatePublicAudioAssetConfig3
				then Color3.fromRGB(136, 136, 136)
				else Color3.fromRGB(136, 136, 136)),
		[StyleKey.Toolbox_TabTopBorderColor] = StyleColors.Blue,
		[StyleKey.Toolbox_TabSelectedColor] = StyleColors.White,
		[StyleKey.Toolbox_IconTileGradientColor] = FFlagToolboxAssetCategorization3 and StyleColors.Black or nil,
		[StyleKey.Toolbox_HomeviewBackgroundColor] = FFlagToolboxAssetCategorization3 and Color3.fromHex("#222222")
			or nil,
		[StyleKey.Toolbox_SearchOptionButtonHover] = StyleColors.White,

		-- Asset Configuration
		[StyleKey.AssetConfig_DividerHorizontalLineColor] = StyleColors.Carbon,
		[StyleKey.AssetConfig_PreviewSelectedColor] = StyleColors.White,
		[StyleKey.AssetConfig_SidetabSelectedBarColor] = Color3.fromRGB(11, 90, 175),
		[StyleKey.AssetConfig_SidetabSelectedBarTransparency] = 0,
		[StyleKey.AssetConfig_SidetabSelectedBarZIndex] = -1,
		[StyleKey.AssetConfig_SidetabSelectedIndicatorZindex] = 1,
		[StyleKey.AssetConfig_UploadResultButtonColor] = Color3.fromRGB(136, 136, 136),
		[StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor] = Color3.fromRGB(102, 102, 102),
		[StyleKey.AssetConfig_DistributionQuotaTextColor] = if FFlagAssetConfigDistributionQuotas
			then StyleColors.White
			else nil,
	})
	local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
		[StyleKey.Toolbox_PublishAssetBackground] = StyleColors.Slate,
		[StyleKey.Toolbox_AssetOutlineBoarderColor] = FFlagToolboxAssetStyleUpdate and Color3.fromHex("#989898"),
		[StyleKey.Toolbox_AssetOutlineTransparency] = 0.08,
		[StyleKey.Toolbox_AssetOutlineVerifiedBackground] = Color3.fromRGB(229, 243, 255),
		[StyleKey.Toolbox_AssetDropdownSize] = 0,
		[StyleKey.Toolbox_AssetBorderSize] = 0,
		[StyleKey.Toolbox_AssetBackgroundColor] = Color3.fromRGB(225, 225, 225),
		[StyleKey.Toolbox_AssetBackgroundImage] = Images.NO_BACKGROUND_ICON,
		[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(170, 170, 170),
		[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(184, 184, 184),
		[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Light,
		[StyleKey.Toolbox_DropdownIconColor] = Color3.fromRGB(25, 25, 25),
		[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(227, 227, 227),
		[StyleKey.Toolbox_NavigationLinkTextColor] = FFlagToolboxAssetCategorization3 and Color3.fromHex("#121212")
			or nil,
		[StyleKey.Toolbox_NavigationLinkTextColorHover] = FFlagToolboxAssetCategorization3 and Color3.fromHex(
			"#666666"
		) or nil,
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(245, 245, 245),
		[StyleKey.ScrollingFrameImageColor] = Color3.fromRGB(245, 245, 245),
		[StyleKey.Toolbox_SearchTagBackgroundColor] = StyleColors.Gray_Lighter,
		[StyleKey.Toolbox_SearchPillBackgroundColor] = if FFlagToolboxAssetCategorization3
			then Color3.fromHex("#0077D6")
			else nil,
		[StyleKey.Toolbox_SearchPillBackgroundColorHovered] = if FFlagToolboxAssetCategorization3
			then Color3.fromHex("#008BEA")
			else nil,
		[StyleKey.Toolbox_TipsTextColor] = if FFlagAssetConfigDistributionQuotas then nil else Colors.GRAY_3,
		[StyleKey.Toolbox_TabTopBorderColor] = Color3.fromRGB(182, 182, 182),
		[StyleKey.Toolbox_TabSelectedColor] = StyleColors.Blue,
		[StyleKey.Toolbox_IconTileGradientColor] = FFlagToolboxAssetCategorization3 and StyleColors.Gray_Light or nil,
		[StyleKey.Toolbox_HomeviewBackgroundColor] = FFlagToolboxAssetCategorization3 and StyleColors.White or nil,
		[StyleKey.Toolbox_SearchOptionButtonHover] = StyleColors.Black,

		-- Asset Configuration
		[StyleKey.AssetConfig_DividerHorizontalLineColor] = Color3.fromRGB(227, 227, 227),
		[StyleKey.AssetConfig_PreviewSelectedColor] = StyleColors.Blue,
		[StyleKey.AssetConfig_SidetabSelectedBarColor] = Colors.GRAY_1,
		[StyleKey.AssetConfig_SidetabSelectedBarTransparency] = 0.9,
		[StyleKey.AssetConfig_SidetabSelectedBarZIndex] = 0,
		[StyleKey.AssetConfig_SidetabSelectedIndicatorZindex] = 0,
		[StyleKey.AssetConfig_UploadResultButtonColor] = StyleColors.Black,
		[StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor] = Color3.fromRGB(151, 151, 151),
		[StyleKey.AssetConfig_DistributionQuotaTextColor] = if FFlagAssetConfigDistributionQuotas
			then StyleColors.Black
			else nil,
	})

	if isCli() then
		styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
	else
		styleRoot = themeClass.new(overridedDarkTheme, overridedLightTheme)
	end

	styleRoot:extend({
		-- TODO: Move colors from ToolboxTheme to here
		backgroundColor = StyleKey.InputFieldBackground,
		progressBarColor = Colors.BLUE_PRIMARY,
		horizontalLineColor = StyleKey.Toolbox_HorizontalLineColor,
		link = StyleKey.LinkText,
		redText = Color3.fromRGB(255, 68, 68),

		asset = {
			assetName = {
				textColor = FFlagToolboxAssetStyleUpdate and StyleKey.LinkText or StyleKey.MainText,
			},

			background = {
				color = FFlagToolboxAssetStyleUpdate and StyleKey.Toolbox_AssetBackgroundColor
					or StyleKey.MainBackground,
				borderSize = StyleKey.Toolbox_AssetBorderSize,
				image = StyleKey.Toolbox_AssetBackgroundImage,
			},

			dropShadowSize = StyleKey.Toolbox_AssetDropdownSize,

			icon = {
				borderColor = StyleKey.ItemHovered,
				buttonColor = StyleKey.Toolbox_AssetIconColor,
			},

			outline = {
				backgroundColor = StyleKey.MainBackground,
				verifiedBackgroundColor = StyleKey.Toolbox_AssetOutlineVerifiedBackground,
				borderColor = FFlagToolboxAssetStyleUpdate and StyleKey.Toolbox_AssetOutlineBoarderColor
					or StyleKey.Border,
				transparency = StyleKey.Toolbox_AssetOutlineTransparency,
			},

			textColor = StyleKey.MainText,

			voting = {
				downVotes = Color3.fromRGB(206, 100, 91),
				upVotes = Color3.fromRGB(82, 168, 70),
				textColor = StyleKey.SubText,
				votedDownThumb = Color3.fromRGB(216, 104, 104),
				votedUpThumb = Color3.fromRGB(0, 178, 89),
				voteThumb = Color3.fromRGB(117, 117, 117),
			},
		},

		assetConfig = {
			labelTextColor = StyleKey.DimmedText,
		},

		creatorName = {
			textColor = StyleKey.SubText,
		},

		dropdownMenu = {
			dropdownIconColor = StyleKey.Toolbox_DropdownIconColor,

			currentSelection = {
				backgroundColor = StyleKey.Dropdown,
				backgroundSelectedColor = StyleKey.CurrentMarker,
				borderColor = StyleKey.Border,
				borderSelectedColor = StyleKey.CurrentMarker,
				textColor = StyleKey.MainText,
				textSelectedColor = StyleKey.MainTextSelected,
			},

			item = {
				backgroundColor = StyleKey.Item,
				backgroundSelectedColor = StyleKey.Toolbox_DropdownItemSelectedColor,
				selectedBarColor = StyleKey.CurrentMarker,
				textColor = StyleKey.MainText,
				labelTextColor = StyleKey.DimmedText,
			},

			dropdownFrame = {
				borderColor = StyleKey.Border,
			},
		},

		footer = {
			backgroundColor = StyleKey.Titlebar,
			borderColor = StyleKey.Border,
			labelTextColor = StyleKey.MainText,

			button = {
				backgroundColor = StyleKey.Dropdown,
				backgroundSelectedColor = StyleKey.CurrentMarker,
				borderColor = StyleKey.Border,
				borderSelectedColor = StyleKey.CurrentMarker,
				textColor = StyleKey.MainText,
				textSelectedColor = StyleKey.MainTextSelected,
			},
		},

		header = {
			backgroundColor = StyleKey.Titlebar,
			borderColor = StyleKey.Border,
		},

		homeView = FFlagToolboxAssetCategorization3 and {
			backgroundColor = StyleKey.Toolbox_HomeviewBackgroundColor,
		} or nil,

		iconTile = FFlagToolboxAssetCategorization3 and {
			font = Enum.Font.SourceSansBold,
			gradientColor = StyleKey.Toolbox_IconTileGradientColor,
			textColor = Color3.fromHex("#E1E1E1"),
			textColorHovered = Color3.fromHex("#FFFFFF"),
			textSize = 13,
		} or nil,

		infoBanner = {
			backgroundColor = StyleKey.Titlebar,
			textColor = StyleKey.SubText,
		},

		linkButton = {
			textColor = Color3.fromRGB(0, 162, 255),
		},

		messageBox = {
			backgroundColor = StyleKey.MainBackground,
			textColor = StyleKey.MainText,
			informativeTextColor = StyleKey.SubText,

			button = {
				textColor = StyleKey.MainText,
				textSelectedColor = StyleKey.MainTextSelected,
				backgroundColor = StyleKey.MainBackground,
				backgroundSelectedColor = StyleKey.CurrentMarker,
				borderColor = StyleKey.Border,
				borderSelectedColor = StyleKey.CurrentMarker,
			},
		},

		purchaseDialog = {
			promptText = StyleKey.MainText,
			balanceText = StyleKey.DimmedText,
		},

		publishAsset = {
			backgroundColor = StyleKey.Toolbox_PublishAssetBackground,
			titleTextColor = StyleKey.SubText,
			textColor = StyleKey.MainText,
			tipsTextColor = if FFlagAssetConfigDistributionQuotas
				then nil
				else not isCli() and StyleKey.Toolbox_TipsTextColor or nil,
			warningIconColor = if FFlagToolboxPrivatePublicAudioAssetConfig3 then Color3.fromHex("#FFAA21") else nil,
			distributionQuotaTextColor = if FFlagAssetConfigDistributionQuotas
				then StyleKey.AssetConfig_DistributionQuotaTextColor
				else nil,
		},

		searchBar = {
			backgroundColor = StyleKey.Dropdown,
			liveBackgroundColor = StyleKey.InputFieldBackground,
			borderColor = StyleKey.Border,
			borderHoveredColor = StyleKey.CurrentMarker,
			borderSelectedColor = Colors.BLUE_PRIMARY,
			textColor = StyleKey.MainText,
			placeholderTextColor = StyleKey.DimmedText,
			divideLineColor = StyleKey.Border,

			-- TODO CLIDEVSRVS-1690: Search bar button colours
			searchButton = {
				imageColor = Color3.fromRGB(184, 184, 184),
				imageSelectedColor = Color3.fromRGB(0, 162, 255),
			},

			clearButton = {
				imageColor = Color3.fromRGB(184, 184, 184),
				imageSelectedColor = Color3.fromRGB(0, 162, 255),
			},
		},

		scrollingFrame = {
			scrollbarBackgroundColor = StyleKey.ScrollingFrameBackgroundColor,
			scrollbarImageColor = StyleKey.ScrollingFrameImageColor,
		},

		suggestionsComponent = {
			labelTextColor = StyleKey.MainText,
			textColor = StyleKey.SubText,
			textHoveredColor = StyleKey.LinkText,
			underlineColor = StyleKey.LinkText,
		},

		searchOptions = {
			background = StyleKey.MainBackground,
			headerTextColor = StyleKey.MainText,
			imageColor = Colors.GRAY_2,
			imageHoveredColor = StyleKey.Toolbox_SearchOptionButtonHover,
			imageSelectedColor = Colors.BLUE_PRIMARY,
			border = StyleKey.Border,

			audioSearch = {
				textColor = StyleKey.MainText,
			},

			timeTextBox = {
				borderColor = StyleKey.Border,
				backgroundColor = StyleKey.InputFieldBackground,
				selectedBorderColor = Colors.BLUE_PRIMARY,
				textColor = StyleKey.MainText,
				placeholderTextColor = StyleKey.DimmedText,
			},

			applyButton = {
				textColor = Colors.WHITE,
				backgroundColor = Colors.BLUE_PRIMARY,
				borderColor = StyleKey.MainBackground,
			},

			cancelButton = {
				textColor = StyleKey.MainText,
				backgroundColor = StyleKey.Button,
				borderColor = StyleKey.Border,
			},
		},

		searchList = if FFlagToolboxAssetCategorization3
			then {
				buttonSpacing = 3,
			}
			else nil,

		searchPill = if FFlagToolboxAssetCategorization3
			then {
				backgroundColor = StyleKey.Toolbox_SearchPillBackgroundColor,
				backgroundColorHovered = StyleKey.Toolbox_SearchPillBackgroundColorHovered,
				font = Enum.Font.SourceSansSemibold,
				padding = {
					top = 4,
					bottom = 6,
					left = 10,
					right = 10,
				},
				textSize = 18,
				textColor = Colors.WHITE,
			}
			else nil,

		searchTag = {
			backgroundColor = StyleKey.Toolbox_SearchTagBackgroundColor,
			borderColor = StyleKey.Border,
			textColor = StyleKey.MainText,
			clearAllText = StyleKey.LinkText,
		},

		sectionHeader = FFlagToolboxAssetCategorization3 and {
			textColor = StyleKey.Toolbox_NavigationLinkTextColor,
			font = Enum.Font.SourceSansBold,
			textSize = 18,
		} or nil,

		sectionHeaderNavLink = FFlagToolboxAssetCategorization3 and {
			textColor = StyleKey.Toolbox_NavigationLinkTextColor,
			hoverTextColor = StyleKey.Toolbox_NavigationLinkTextColorHover,
			font = Enum.Font.SourceSans,
			textSize = 16,
		} or nil,

		tabSet = {
			backgroundColor = StyleKey.MainBackground,
			borderColor = StyleKey.Border,
			topBorderColor = StyleKey.Toolbox_TabTopBorderColor,
			tabBackground = StyleKey.Titlebar,
			contentColor = StyleKey.TitlebarText,
			selectedColor = StyleKey.Toolbox_TabSelectedColor,
		},

		[ui.SearchBar] = Cryo.Dictionary.join(getRawComponentStyle("SearchBar"), {
			["&ToolboxSearchBar"] = {
				Padding = {
					Top = -1,
					Left = 0,
					Bottom = 0,
					Right = 0,
				},
			},
		}),
	})

	if themeExtension then
		styleRoot:extend(themeExtension)
	end

	styleRoot:extend({
		[ui.DropdownMenu] = Cryo.Dictionary.join(getRawComponentStyle("DropdownMenu"), {
			["&ToolboxSearchBarDropdown"] = {
				Offset = Vector2.new(0, 4),
			},
		}),
	})

	return styleRoot
end

return makeTheme
