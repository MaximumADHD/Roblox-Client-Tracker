--[[
	Gets the new Stylizer-compatible AssetConfigTheme
	This should replace AssetConfigTheme once UILibrary and withTheme are completely removed.
]]
local FFlagToolboxReplaceUILibraryComponentsPt2 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt2")
local FFlagToolboxReplaceUILibraryComponentsPt3 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt3")
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs

local Framework = require(Libs.Framework)

local FrameworkStyle = Framework.Style
local StyleKey = FrameworkStyle.StyleKey
local ui = FrameworkStyle.ComponentSymbols
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle
local StyleModifier = require(Libs.Framework).Util.StyleModifier
local StyleColors = FrameworkStyle.Colors

local Cryo = require(Plugin.Libs.Cryo)

return function()
	if not FFlagToolboxReplaceUILibraryComponentsPt2 and not FFlagToolboxReplaceUILibraryComponentsPt3 and not FFlagToolboxRemoveWithThemes then
		return
	end

	local roundBox = getRawComponentStyle("RoundBox")
	local button = getRawComponentStyle("Button")

	return {
		assetConfig = {
			backgroundColor = FFlagToolboxRemoveWithThemes and StyleKey.MainBackground or nil,
			errorColor = FFlagToolboxRemoveWithThemes and StyleKey.ErrorText or nil,
			labelTextColor = StyleKey.DimmedText,
			textColor = StyleKey.MainText,

			packagePermissions = {
				backgroundColor = StyleKey.MainBackground,
				subTextColor = StyleKey.SubText,

				collaboratorItem = {
					deleteButton = StyleKey.Toolbox_DeleteIconColor,
				},

				searchBar = {
					border = FFlagToolboxRemoveWithThemes and StyleKey.InputFieldBorder or nil,
					borderHover = FFlagToolboxRemoveWithThemes and StyleColors.Blue or nil,
					borderSelected = FFlagToolboxRemoveWithThemes and StyleColors.Blue or nil,
					placeholderText = FFlagToolboxRemoveWithThemes and StyleKey.DimmedText or nil,
					backgroundColor = FFlagToolboxRemoveWithThemes and StyleKey.InputFieldBackground or nil,
					searchIcon = FFlagToolboxRemoveWithThemes and StyleKey.SubText or nil,

					clearButton = FFlagToolboxRemoveWithThemes and {
						image = StyleKey.SubText,
					} or nil,

					dropDown = {
						backgroundColor = StyleKey.InputFieldBackground,
						itemText = FFlagToolboxRemoveWithThemes and StyleKey.MainText or nil,
						headerText = StyleKey.SubText,

						hovered = {
							backgroundColor = StyleKey.ItemHovered,
							itemText = FFlagToolboxRemoveWithThemes and StyleKey.ButtonText or nil,
						},

						selected = {
							backgroundColor = StyleKey.ButtonSelected,
						},
					},

				},

				subjectThumbnail = FFlagToolboxRemoveWithThemes and {
					backgroundColor = StyleKey.TableItem,
					defaultImageColor = StyleKey.AssetConfig_SubjectThumbnailDefaultImageColor,
				} or nil,
			}
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
		configFooter = FFlagToolboxRemoveWithThemes and {
			backgroundColor = StyleKey.MainBackground,
			borderColor = StyleKey.Border,
		} or nil,

		divider = FFlagToolboxRemoveWithThemes and {
			horizontalLineColor = StyleKey.Toolbox_HorizontalLineColor,
			verticalLineColor =  StyleKey.AssetConfig_DividerHorizontalLineColor,
		} or nil,

		inputFields = {
			backgroundColor = StyleKey.InputFieldBackground,
			toolTip = StyleKey.DimmedText,
			error = StyleKey.ErrorText,
		} or nil,

		linkButton = FFlagToolboxRemoveWithThemes and {
			textColor = StyleColors.Blue,
		} or nil,

		loading = FFlagToolboxRemoveWithThemes and {
			text = StyleKey.MainText,
		} or nil,

		nav = FFlagToolboxRemoveWithThemes and {
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
		} or nil,

		previewArea = FFlagToolboxRemoveWithThemes and {
			backgroundColor = StyleKey.MainBackground,
			textColor = StyleKey.MainText,
			selectedColor = StyleKey.AssetConfig_PreviewSelectedColor,
		} or nil,

		sideTab = FFlagToolboxRemoveWithThemes and {
			contentColor = StyleKey.TitlebarText,
			backgroundColor = StyleKey.MainBackground,
			selecteBarColor = StyleKey.AssetConfig_SidetabSelectedBarColor,
			selecteBarTrans = StyleKey.AssetConfig_SidetabSelectedBarTransparency,
			selecteBarZindex = StyleKey.AssetConfig_SidetabSelectedBarZIndex,
			selecteIndicatorColor = StyleColors.BLUE_PRIMARY,
			selecteIndicatorTrans = StyleKey.AssetConfig_SidetabSelectedIndicatorZindex,
			textColor = StyleKey.MainText,
		} or nil,

		tags = {
			textColor = StyleKey.MainText,
		},

		thumbnailPreview = FFlagToolboxRemoveWithThemes and {
			background = StyleKey.Item,
			border = StyleKey.Border,
			text = StyleKey.MainText,
		} or nil,

		typeSelection = FFlagToolboxRemoveWithThemes and {
			background = StyleKey.TableItem,
			selector = {
				title = StyleKey.MainText,
				description = StyleKey.MainTextDisabled,
			},
			footer = {
				background = StyleKey.MainBackground,
				border = StyleKey.Border,
			},
		} or nil,

		typeValidation = FFlagToolboxRemoveWithThemes and {
			background = StyleKey.TableItem,
		} or nil,

		uploadResult = {
			greenText = Color3.fromRGB(2, 183, 87),
			redText = Color3.fromRGB(255, 68, 68),
			text = StyleKey.MainText,
			buttonColor = StyleKey.AssetConfig_UploadResultButtonColor,
			idText = StyleKey.DimmedText,
			background = StyleKey.TableItem,
			link = StyleKey.LinkText,
		},

		versions = FFlagToolboxRemoveWithThemes and {
			thumbnailBorderColor = Color3.fromRGB(117, 117, 117),
			buttonSelectedColor = Color3.fromRGB(0, 162, 255),
			buttonDefaultColor = Color3.fromRGB(117, 117, 117),
			textColor = StyleKey.MainText,
		} or nil,

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
