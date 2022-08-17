local Plugin = script:FindFirstAncestor("Toolbox")
local FFlagToolboxEnableAnnouncementsDialog = game:GetFastFlag("ToolboxEnableAnnouncementsDialog")
local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")
local FFlagToolboxUseVerifiedIdAsDefault = game:GetFastFlag("ToolboxUseVerifiedIdAsDefault")
local FFlagToolboxFixBreadcrumbColor = game:GetFastFlag("ToolboxFixBreadcrumbColor")

local Images = require(Plugin.Core.Util.Images)

local Packages = Plugin.Packages

local Framework = require(Packages.Framework)
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local isCli = require(Util.isCli)

local ColorSystem = Framework.Style.ColorSystem
local DarkTheme = Framework.Style.Themes.DarkTheme
local getRawComponentStyle = Framework.Style.getRawComponentStyle
local LightTheme = Framework.Style.Themes.LightTheme
local StudioTheme = Framework.Style.Themes.StudioTheme
local StyleColors = Framework.Style.Colors
local StyleKey = Framework.Style.StyleKey
local ui = Framework.Style.ComponentSymbols

local makeTheme = function(themeExtension, themeClass)
	themeClass = themeClass or StudioTheme

	local styleRoot
	local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
		[StyleKey.Toolbox_PublishAssetBackground] = StyleColors.Slate,
		[StyleKey.Toolbox_AssetOutlineBackground] = if FFlagAssetVoteSimplification
			then Color3.fromHex("#3B3B3B")
			else nil,
		[StyleKey.Toolbox_AssetOutlineBoarderColor] = Color3.fromHex("#121212"),
		[StyleKey.Toolbox_AssetOutlineTransparency] = 0,
		[StyleKey.Toolbox_AssetOutlineVerifiedBackground] = Color3.fromRGB(12, 43, 89),
		[StyleKey.Toolbox_AssetDropdownSize] = 8,
		[StyleKey.Toolbox_AssetBorderSize] = 0,
		[StyleKey.Toolbox_AssetBackgroundColor] = Color3.fromRGB(41, 41, 41),
		[StyleKey.Toolbox_AssetBackgroundImage] = "",
		[StyleKey.Toolbox_AssetNameColor] = Color3.fromRGB(60, 180, 255),
		[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(178, 178, 178),
		[StyleKey.Toolbox_AudioRowBackgroundColorEven] = Color3.fromHex("#222222"),
		[StyleKey.Toolbox_AudioRowBackgroundColorOdd] = Color3.fromHex("#2C2C2C"),
		[StyleKey.Toolbox_AudioRowBorderColor] = Color3.fromHex("#024897"),
		[StyleKey.Toolbox_AudioRowHeaderTextColor] = Color3.fromHex("#989898"),
		[StyleKey.Toolbox_AudioRowTitleTextColor] = Color3.fromHex("#52ADF4"),
		[StyleKey.Toolbox_AudioRowTextColor] = StyleColors.White,
		[StyleKey.Toolbox_AudioPlayerBackgroundColor] = Color3.fromHex("#171717"),
		[StyleKey.Toolbox_AudioPlayerProgressBarColor] = Color3.fromHex("#0077D6"),
		[StyleKey.Toolbox_AudioPlayerIndicatorColor] = Color3.fromHex("#555555"),
		[StyleKey.Toolbox_AudioPlayerIndicatorBorderColor] = Color3.fromHex("#555555"),
		[StyleKey.Toolbox_AudioTabTextColor] = Color3.fromHex("#3B3B3B"),
		[StyleKey.Toolbox_AudioTabSelectedTextColor] = StyleColors.White,
		[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(136, 136, 136),
		[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Dark,
		[StyleKey.Toolbox_DropdownIconColor] = StyleColors.White,
		[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(34, 34, 34),
		[StyleKey.Toolbox_NavigationLinkTextColor] = StyleColors.White,
		[StyleKey.Toolbox_NavigationLinkTextColorHover] = Color3.fromHex("#AAAAAA"),
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(41, 41, 41),
		[StyleKey.ScrollingFrameImageColor] = Color3.fromRGB(85, 85, 85),
		[StyleKey.Toolbox_SearchTagBackgroundColor] = Color3.fromRGB(56, 56, 56),
		[StyleKey.Toolbox_SearchPillTextColor] = Color3.fromHex("#FAFAFA"),
		[StyleKey.Toolbox_SearchPillBackgroundColor] = Color3.fromHex("#3B3B3B"),
		[StyleKey.Toolbox_SearchPillBackgroundColorHovered] = Color3.fromHex("#565656"),
		[StyleKey.Toolbox_TabTopBorderColor] = StyleColors.Blue,
		[StyleKey.Toolbox_TabSelectedColor] = StyleColors.White,
		[StyleKey.Toolbox_IconTileGradientColor] = StyleColors.Black,
		[StyleKey.Toolbox_HomeviewBackgroundColor] = if FFlagAssetVoteSimplification
			then StyleColors.Slate
			else Color3.fromHex("#222222"),
		[StyleKey.Toolbox_SearchOptionButtonHover] = StyleColors.White,
		[StyleKey.Toolbox_RateTextColor] = if FFlagAssetVoteSimplification then Color3.fromHex("#BDBEBE") else nil,
		[StyleKey.Toolbox_VoteCountColor] = if FFlagAssetVoteSimplification then Color3.fromHex("#AAAAAA") else nil,
		[StyleKey.Toolbox_LowConfidencePercentageColor] = if FFlagAssetVoteSimplification
			then Color3.fromHex("#CCCCCC")
			else nil,
		[StyleKey.Toolbox_VotingButtonsBackgroundBoxColor] = if FFlagAssetVoteSimplification
			then Color3.fromHex("#FFFFFF")
			else nil,
		[StyleKey.Toolbox_VotingButtonImage] = if FFlagAssetVoteSimplification then Images.THUMB_UP_WHITE else nil,

		-- Asset Configuration
		[StyleKey.AssetConfig_DividerHorizontalLineColor] = StyleColors.Carbon,
		[StyleKey.AssetConfig_PreviewSelectedColor] = StyleColors.White,
		[StyleKey.AssetConfig_SidetabSelectedBarColor] = Color3.fromRGB(11, 90, 175),
		[StyleKey.AssetConfig_SidetabSelectedBarTransparency] = 0,
		[StyleKey.AssetConfig_SidetabSelectedBarZIndex] = -1,
		[StyleKey.AssetConfig_SidetabSelectedIndicatorZindex] = 1,
		[StyleKey.AssetConfig_UploadResultButtonColor] = Color3.fromRGB(136, 136, 136),
		[StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor] = Color3.fromRGB(102, 102, 102),
		[StyleKey.AssetConfig_DistributionQuotaTextColor] = StyleColors.White,
	})
	local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
		[StyleKey.Toolbox_PublishAssetBackground] = StyleColors.Slate,
		[StyleKey.Toolbox_AssetOutlineBackground] = if FFlagAssetVoteSimplification then StyleColors.White else nil,
		[StyleKey.Toolbox_AssetOutlineBoarderColor] = Color3.fromHex("#989898"),
		[StyleKey.Toolbox_AssetOutlineTransparency] = 0.08,
		[StyleKey.Toolbox_AssetOutlineVerifiedBackground] = Color3.fromRGB(229, 243, 255),
		[StyleKey.Toolbox_AssetDropdownSize] = 0,
		[StyleKey.Toolbox_AssetBorderSize] = 0,
		[StyleKey.Toolbox_AssetBackgroundColor] = Color3.fromRGB(225, 225, 225),
		[StyleKey.Toolbox_AssetBackgroundImage] = Images.NO_BACKGROUND_ICON,
		[StyleKey.Toolbox_AssetNameColor] = Color3.fromHex("#0B5AAF"),
		[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(170, 170, 170),
		[StyleKey.Toolbox_AudioPlayerBackgroundColor] = Color3.fromHex("#E1E1E1"),
		[StyleKey.Toolbox_AudioPlayerProgressBarColor] = Color3.fromHex("#0077D6"),
		[StyleKey.Toolbox_AudioPlayerIndicatorColor] = Color3.fromHex("#CBCBCB"),
		[StyleKey.Toolbox_AudioPlayerIndicatorBorderColor] = Color3.fromHex("#222222"),
		[StyleKey.Toolbox_AudioRowBackgroundColorEven] = Color3.fromHex("#EDEDED"),
		[StyleKey.Toolbox_AudioRowBackgroundColorOdd] = Color3.fromHex("#FAFAFA"),
		[StyleKey.Toolbox_AudioRowBorderColor] = Color3.fromHex("#3DB3FF"),
		[StyleKey.Toolbox_AudioRowHeaderTextColor] = Color3.fromHex("#3B3B3B"),
		[StyleKey.Toolbox_AudioRowTitleTextColor] = Color3.fromHex("#0055AC"),
		[StyleKey.Toolbox_AudioRowTextColor] = Color3.fromHex("#171717"),
		[StyleKey.Toolbox_AudioTabTextColor] = Color3.fromHex("#3B3B3B"),
		[StyleKey.Toolbox_AudioTabSelectedTextColor] = Color3.fromHex("#FAFAFA"),
		[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(184, 184, 184),
		[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Light,
		[StyleKey.Toolbox_DropdownIconColor] = Color3.fromRGB(25, 25, 25),
		[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(227, 227, 227),
		[StyleKey.Toolbox_NavigationLinkTextColor] = Color3.fromHex("#121212"),
		[StyleKey.Toolbox_NavigationLinkTextColorHover] = Color3.fromHex("#666666"),
		[StyleKey.ScrollingFrameBackgroundColor] = Color3.fromRGB(245, 245, 245),
		[StyleKey.ScrollingFrameImageColor] = Color3.fromRGB(245, 245, 245),
		[StyleKey.Toolbox_SearchTagBackgroundColor] = StyleColors.Gray_Lighter,
		[StyleKey.Toolbox_SearchPillTextColor] = Color3.fromHex("#191919"),
		[StyleKey.Toolbox_SearchPillBackgroundColor] = Color3.fromHex("#E1E1E1"),
		[StyleKey.Toolbox_SearchPillBackgroundColorHovered] = Color3.fromHex("#CBCBCB"),
		[StyleKey.Toolbox_TabTopBorderColor] = Color3.fromRGB(182, 182, 182),
		[StyleKey.Toolbox_TabSelectedColor] = StyleColors.Blue,
		[StyleKey.Toolbox_IconTileGradientColor] = StyleColors.Gray_Light,
		[StyleKey.Toolbox_HomeviewBackgroundColor] = StyleColors.White,
		[StyleKey.Toolbox_SearchOptionButtonHover] = StyleColors.Black,
		[StyleKey.Toolbox_RateTextColor] = if FFlagAssetVoteSimplification then Color3.fromHex("#3B3B3B") else nil,
		[StyleKey.Toolbox_VoteCountColor] = if FFlagAssetVoteSimplification then Color3.fromHex("#666666") else nil,
		[StyleKey.Toolbox_LowConfidencePercentageColor] = if FFlagAssetVoteSimplification
			then Color3.fromHex("#666666")
			else nil,
		[StyleKey.Toolbox_VotingButtonsBackgroundBoxColor] = if FFlagAssetVoteSimplification
			then Color3.fromHex("#000000")
			else nil,
		[StyleKey.Toolbox_VotingButtonImage] = if FFlagAssetVoteSimplification then Images.THUMB_UP_DARK_GRAY else nil,

		-- Asset Configuration
		[StyleKey.AssetConfig_DividerHorizontalLineColor] = Color3.fromRGB(227, 227, 227),
		[StyleKey.AssetConfig_PreviewSelectedColor] = StyleColors.Blue,
		[StyleKey.AssetConfig_SidetabSelectedBarColor] = Colors.GRAY_1,
		[StyleKey.AssetConfig_SidetabSelectedBarTransparency] = 0.9,
		[StyleKey.AssetConfig_SidetabSelectedBarZIndex] = 0,
		[StyleKey.AssetConfig_SidetabSelectedIndicatorZindex] = 0,
		[StyleKey.AssetConfig_UploadResultButtonColor] = StyleColors.Black,
		[StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor] = Color3.fromRGB(151, 151, 151),
		[StyleKey.AssetConfig_DistributionQuotaTextColor] = StyleColors.Black,
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

		announcementDialog = if FFlagToolboxEnableAnnouncementsDialog then {
			backgroundColor = StyleKey.MainBackground,
			closeIconColor = StyleColors.White,
			descriptionColor = StyleKey.TextPrimary,
			headerTextColor = StyleKey.BrightText,
			overlayColor = StyleColors.Black,
			overlayTransparency = 0.4,
		} else nil,

		asset = {
			assetName = {
				textColor = StyleKey.Toolbox_AssetNameColor,
			},

			background = {
				color = StyleKey.Toolbox_AssetBackgroundColor,
				borderSize = StyleKey.Toolbox_AssetBorderSize,
				image = StyleKey.Toolbox_AssetBackgroundImage,
			},

			dropShadowSize = StyleKey.Toolbox_AssetDropdownSize,

			icon = {
				borderColor = StyleKey.ItemHovered,
				buttonColor = StyleKey.Toolbox_AssetIconColor,
			},

			outline = {
				backgroundColor = if FFlagAssetVoteSimplification
					then StyleKey.Toolbox_AssetOutlineBackground
					else StyleKey.MainBackground,
				verifiedBackgroundColor = StyleKey.Toolbox_AssetOutlineVerifiedBackground,
				borderColor = StyleKey.Toolbox_AssetOutlineBoarderColor,
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
				rateTextColor = if FFlagAssetVoteSimplification then StyleKey.Toolbox_RateTextColor else nil,
				voteCountColor = if FFlagAssetVoteSimplification then StyleKey.Toolbox_VoteCountColor else nil,
				lowConfidencePercentageColor = if FFlagAssetVoteSimplification
					then StyleKey.Toolbox_LowConfidencePercentageColor
					else nil,
				votingButtonsBackgroundBoxColor = if FFlagAssetVoteSimplification
					then StyleKey.Toolbox_VotingButtonsBackgroundBoxColor
					else nil,
				votingButtonImage = if FFlagAssetVoteSimplification then StyleKey.Toolbox_VotingButtonImage else nil,
			},
		},

		assetConfig = {
			labelTextColor = StyleKey.DimmedText,
		},

		audioPlayer = {
			backgroundColor = StyleKey.Toolbox_AudioPlayerBackgroundColor,
			progressBarColor = StyleKey.Toolbox_AudioPlayerProgressBarColor,
			indicatorColor = StyleKey.Toolbox_AudioPlayerIndicatorColor,
			indicatorBorderColor = StyleKey.Toolbox_AudioPlayerIndicatorBorderColor,
		},

		audioRow = {
			backgroundColorEven = StyleKey.Toolbox_AudioRowBackgroundColorEven,
			backgroundColorOdd = StyleKey.Toolbox_AudioRowBackgroundColorOdd,
			borderColor = StyleKey.Toolbox_AudioRowBorderColor,
			headerTextColor = StyleKey.Toolbox_AudioRowHeaderTextColor,
			titleTextColor = StyleKey.Toolbox_AudioRowTitleTextColor,
			primaryIconColor = Color3.fromHex("#DF9251"),
			textColor = StyleKey.Toolbox_AudioRowTextColor,
			playButtonColor = Colors.BLACK,
			pauseButtonColor = Colors.BLUE_PRIMARY,
			insertButtonColor = Color3.fromHex("#0077D6"),
			insertButtonTextColor = Colors.WHITE,
		},

		audioTabs = {
			backgroundButtonColor = StyleKey.Toolbox_AudioPlayerBackgroundColor,
			selectedButtonColor = Color3.fromHex("#0077D6"),
			selectedTextColor = StyleKey.Toolbox_AudioTabSelectedTextColor,
			textColor = StyleKey.Toolbox_AudioTabTextColor,
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

		homeView = {
			backgroundColor = StyleKey.Toolbox_HomeviewBackgroundColor,
		},

		iconTile = {
			font = Enum.Font.SourceSansBold,
			gradientColor = StyleKey.Toolbox_IconTileGradientColor,
			textColor = Color3.fromHex("#E1E1E1"),
			textColorHovered = Color3.fromHex("#FFFFFF"),
			textSize = 13,
		},

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
			warningIconColor = Color3.fromHex("#FFAA21"),
			distributionQuotaTextColor = StyleKey.AssetConfig_DistributionQuotaTextColor,
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
			border = StyleKey.Border,
			headerTextColor = StyleKey.MainText,
			imageColor = Colors.GRAY_2,
			imageHoveredColor = StyleKey.Toolbox_SearchOptionButtonHover,
			imageSelectedColor = Colors.BLUE_PRIMARY,
			warningIconColor = if FFlagToolboxUseVerifiedIdAsDefault then Color3.fromHex("#FFAA21") else nil,

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

		searchList = {
			buttonSpacing = 3,
		},

		searchPill = {
			backgroundColor = StyleKey.Toolbox_SearchPillBackgroundColor,
			backgroundColorHovered = StyleKey.Toolbox_SearchPillBackgroundColorHovered,
			font = Enum.Font.SourceSans,
			padding = {
				top = 4,
				bottom = 6,
				left = 10,
				right = 10,
			},
			textSize = 18,
			textColor = StyleKey.Toolbox_SearchPillTextColor,
		},

		searchTag = {
			backgroundColor = StyleKey.Toolbox_SearchTagBackgroundColor,
			borderColor = StyleKey.Border,
			textColor = if FFlagToolboxFixBreadcrumbColor then StyleKey.BrightText else ColorSystem.Black[0],
			clearAllText = StyleKey.LinkText,
		},

		sectionHeader = {
			textColor = StyleKey.Toolbox_NavigationLinkTextColor,
			font = Enum.Font.SourceSansBold,
			textSize = 18,
		},

		sectionHeaderNavLink = {
			textColor = StyleKey.Toolbox_NavigationLinkTextColor,
			hoverTextColor = StyleKey.Toolbox_NavigationLinkTextColorHover,
			font = Enum.Font.SourceSans,
			textSize = 16,
		},

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
