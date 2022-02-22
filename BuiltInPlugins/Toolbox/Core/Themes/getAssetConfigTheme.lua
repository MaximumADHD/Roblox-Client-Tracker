--[[
	Gets the new Stylizer-compatible AssetConfigTheme
	This should replace AssetConfigTheme once UILibrary and withTheme are completely removed.
]]
local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages

local Framework = require(Packages.Framework)

local FrameworkStyle = Framework.Style
local StyleKey = FrameworkStyle.StyleKey
local ui = FrameworkStyle.ComponentSymbols
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle
local StyleModifier = require(Packages.Framework).Util.StyleModifier
local StyleColors = FrameworkStyle.Colors

local Cryo = require(Packages.Cryo)

return function()
	local roundBox = getRawComponentStyle("RoundBox")
	local button = getRawComponentStyle("Button")

	return {
		assetConfig = {
			backgroundColor = StyleKey.MainBackground,
			errorColor = StyleKey.ErrorText,
			labelTextColor = StyleKey.DimmedText,
			textColor = StyleKey.MainText,

			packagePermissions = {
				backgroundColor = StyleKey.MainBackground,
				subTextColor = StyleKey.SubText,

				collaboratorItem = {
					deleteButton = StyleKey.Toolbox_DeleteIconColor,
				},

				searchBar = {
					border = StyleKey.InputFieldBorder,
					borderHover = StyleColors.Blue,
					borderSelected = StyleColors.Blue,
					placeholderText = StyleKey.DimmedText,
					backgroundColor = StyleKey.InputFieldBackground,
					searchIcon = StyleKey.SubText,

					clearButton = {
						image = StyleKey.SubText,
					},

					dropDown = {
						backgroundColor = StyleKey.InputFieldBackground,
						itemText = StyleKey.MainText,
						headerText = StyleKey.SubText,

						hovered = {
							backgroundColor = StyleKey.ItemHovered,
							itemText = StyleKey.ButtonText,
						},

						selected = {
							backgroundColor = StyleKey.ButtonSelected,
						},
					},
				},

				subjectThumbnail = {
					backgroundColor = StyleKey.TableItem,
					defaultImageColor = StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor,
				},
			},
		},

		detailedDropdown = {
			displayText = StyleKey.MainText,
			descriptionText = StyleKey.SubText,
			backgroundColor = StyleKey.MainBackground,
			borderColor = StyleKey.DialogButtonBorder,

			hovered = {
				displayText = StyleKey.MainTextHover,
			},
		},
		configFooter = {
			backgroundColor = StyleKey.MainBackground,
			borderColor = StyleKey.Border,
		},

		divider = {
			horizontalLineColor = StyleKey.Toolbox_HorizontalLineColor,
			verticalLineColor = StyleKey.AssetConfig_DividerHorizontalLineColor,
		},

		inputFields = {
			backgroundColor = StyleKey.InputFieldBackground,
			toolTip = StyleKey.DimmedText,
			error = StyleKey.ErrorText,
		},

		linkButton = {
			textColor = StyleColors.Blue,
		},

		loading = {
			text = StyleKey.MainText,
		},

		nav = {
			mainButton = {
				background = StyleKey.DialogMainButton,
				hoverBackground = StyleKey.DialogMainButtonHover,
				pressBackground = StyleKey.DialogMainButtonPressed,
				borderColor = StyleKey.Border,
				textColor = StyleKey.DialogMainButtonText,
			},
			button = {
				background = StyleKey.DialogButton,
				hoverBackground = StyleKey.DialogButtonHover,
				pressBackground = StyleKey.DialogButtonPressed,
				borderColor = StyleKey.Border,
				textColor = StyleKey.DialogButtonText,
			},
		},

		previewArea = {
			backgroundColor = StyleKey.MainBackground,
			textColor = StyleKey.MainText,
			selectedColor = StyleKey.AssetConfig_PreviewSelectedColor,
		},

		sideTab = {
			contentColor = StyleKey.TitlebarText,
			backgroundColor = StyleKey.MainBackground,
			selecteBarColor = StyleKey.AssetConfig_SidetabSelectedBarColor,
			selecteBarTrans = StyleKey.AssetConfig_SidetabSelectedBarTransparency,
			selecteBarZindex = StyleKey.AssetConfig_SidetabSelectedBarZIndex,
			selecteIndicatorColor = StyleColors.BLUE_PRIMARY,
			selecteIndicatorTrans = StyleKey.AssetConfig_SidetabSelectedIndicatorZindex,
			textColor = StyleKey.MainText,
		},

		tags = {
			textColor = StyleKey.MainText,
		},

		thumbnailPreview = {
			background = StyleKey.Item,
			border = StyleKey.Border,
			text = StyleKey.MainText,
		},

		typeSelection = {
			background = StyleKey.TableItem,
			selector = {
				title = StyleKey.MainText,
				description = StyleKey.MainTextDisabled,
			},
			footer = {
				background = StyleKey.MainBackground,
				border = StyleKey.Border,
			},
		},

		typeValidation = {
			background = StyleKey.TableItem,
		},

		uploadResult = {
			greenText = Color3.fromRGB(2, 183, 87),
			redText = Color3.fromRGB(255, 68, 68),
			text = StyleKey.MainText,
			buttonColor = StyleKey.AssetConfig_UploadResultButtonColor,
			idText = StyleKey.DimmedText,
			background = StyleKey.TableItem,
			link = StyleKey.LinkText,
		},

		versions = {
			thumbnailBorderColor = Color3.fromRGB(117, 117, 117),
			buttonSelectedColor = Color3.fromRGB(0, 162, 255),
			buttonDefaultColor = Color3.fromRGB(117, 117, 117),
			textColor = StyleKey.MainText,
		},

		[ui.Button] = Cryo.Dictionary.join(button, {
			["&SelectedDetailedDropdownItem"] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					Color = StyleKey.ItemSelected,
					TextColor = StyleKey.MainTextSelected,
				}),
			},
		}),

		[ui.RoundBox] = Cryo.Dictionary.join(roundBox, {
			["&CatalogTag"] = {
				Color = StyleKey.MainBackground,
				BorderColor = StyleKey.Border,
			},
			["&TagsComponent"] = {
				Color = StyleKey.InputFieldBackground,
				BorderColor = StyleKey.Border,

				[StyleModifier.Selected] = {
					BorderColor = StyleKey.InputFieldBorderSelected,
				},
				[StyleModifier.Disabled] = {
					Color = StyleKey.InputFieldBackgroundDisabled,
				},
			},
			["&TagsComponentError"] = {
				BorderColor = StyleKey.ErrorText,
			},
		}),
	}
end
