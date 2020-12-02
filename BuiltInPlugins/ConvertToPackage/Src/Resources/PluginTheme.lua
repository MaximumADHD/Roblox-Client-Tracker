local Plugin = script.parent.parent.parent
local UILibrary = require(Plugin.Packages.UILibrary)
local Cryo = require(Plugin.Packages.Cryo)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)
local Colors = require(Plugin.Src.Util.Colors)
local Images = require(Plugin.Src.Util.Constants).Images
local Theme = {}


local function defineTheme(defaults, overrides)
	local themeName = game:GetFastFlag("StudioPluginsDontUseUITheme") and settings().Studio.Theme.Name or settings().Studio["UI Theme"].Name
    local override = overrides and overrides[themeName]
    if override then
        return Cryo.Dictionary.join(defaults, override)
    else
        return defaults
    end
end

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)
	-- define all the colors used in the plugin
	local assetConfigTable = {
		assetConfig = {
			backgroundColor = getColor(c.MainBackground),
			textColor = getColor(c.MainText),
			labelTextColor = getColor(c.DimmedText),
			separatorColor = getColor(c.Border),
			errorColor = getColor(c.ErrorText)
		},

		previewArea = defineTheme({
			backgroundColor = getColor(c.MainBackground),
			textColor = getColor(c.MainText),
			selectedColor = Colors.BLUE_PRIMARY,
		},
		{
			Dark = {
				backgroundColor = getColor(c.MainBackground),
				selectedColor = Colors.WHITE
			}
		}),

		publishAsset = defineTheme({
			titleTextColor = getColor(c.SubText),
			textColor = getColor(c.MainText),
			tipsTextColor = getColor(c.DialogMainButton),
			showDropdownRibbon = true,
			highlightDropdownSelectedItem = false
		},
		{
			Dark = {
				tipsTextColor = getColor(c.DialogButtonText,m.Disabled),
				showDropdownRibbon = false,
				highlightDropdownSelectedItem = true
			}
		}),

		divider = defineTheme({
			horizontalLineColor = getColor(c.Titlebar),
			verticalLineColor = getColor(c.Titlebar)
		},
		{
			Dark = {
				horizontalLineColor = getColor(c.Border),
				verticalLineColor = getColor(c.Border)
			}
		}),

		textField = {
			backgroundColor = getColor(c.MainBackground),
			borderColor = getColor(c.Border),
			borderHoveredColor = getColor(c.CurrentMarker),
			borderSelectedColor = Colors.BLUE_PRIMARY,
		},

		-- AssetConfig footer
		footer = {
			backgroundColor = getColor(c.MainBackground),
			borderColor = getColor(c.Border),
		},

		scrollingFrame = defineTheme({
			scrollbarBackgroundColor = Color3.fromRGB(245, 245, 245),
			scrollbarImageColor = Color3.fromRGB(245, 245, 245)
		},
		{
			Dark = {
				scrollbarBackgroundColor = getColor(c.ScrollBarBackground),
				scrollbarImageColor = getColor(c.MainText, m.Disabled),
			}
		}),

		messageBox = defineTheme({
			backgroundColor = getColor(c.MainBackground),
			textColor = getColor(c.MainText),
			informativeTextColor = getColor(c.SubText)
		},{
			textColor = Color3.new(1, 1, 1),
		}),

		sideTab = defineTheme({
			backgroundColor = getColor(c.MainBackground),
			leftBorderColor = getColor(c.Border),
			tabBackground = getColor(c.Titlebar),
			contentColor = getColor(c.TitlebarText),
			selectedColor = Colors.BLUE_PRIMARY,
			textColor = getColor(c.MainText),
		},
		{
			Dark = {
				leftBorderColor = Colors.BLUE_PRIMARY,
				selectedColor = Colors.WHITE
			}
		}),

		cancelButton = {
			ButtonColor = getColor(c.Button),
			ButtonColor_Hover = getColor(c.Button, m.Hover),
			ButtonColor_Disabled = getColor(c.Button, m.Disabled),
			TextColor = getColor(c.MainText),
			TextColor_Disabled = getColor(c.DimmedText),
			BorderColor = getColor(c.Border),
		},

		defaultButton = defineTheme({
			ButtonColor = getColor(c.CurrentMarker),
			ButtonColor_Hover = getColor(c.LinkText),
			ButtonColor_Disabled = Colors.BLUE_DISABLED,
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = Color3.new(1, 1, 1),
			BorderColor = getColor(c.Light),
		},
		{
			Dark = {
				ButtonColor = getColor(c.MainButton),
				ButtonColor_Disabled = getColor(c.Button, m.Disabled),
				TextColor_Disabled = getColor(c.ButtonText, m.Disabled)
			}
		}),

		thumbnailPreview = {
			background = getColor(c.Item),
			border = getColor(c.Border),
			text = getColor(c.MainText),
			placeholderColor = getColor(c.MainText)
		},

		typeSelection = {
			background = getColor(c.TableItem),
			selector = {
				title = getColor(c.MainText),
				description = getColor(c.MainText, m.Disabled),
			},
			footer = {
				background = getColor(c.MainBackground),
				border = getColor(c.Border),
			},
		},

		loading = {
			text = getColor(c.MainText),
			backgroundBar = getColor(c.Midlight),
			bar = getColor(c.CurrentMarker),
		},

		typeValidation = {
			background = getColor(c.TableItem),
		},

		uploadResult = {
			text = getColor(c.MainText),
			successText = Color3.fromRGB(2, 183, 87),
			background = getColor(c.TableItem),
			link = getColor(c.LinkText),
		},

		nav = {
			mainButton = {
				background = getColor(c.DialogMainButton),
				hoverBackground = getColor(c.DialogMainButton, m.Hover),
				pressBackground = getColor(c.DialogMainButton, m.Pressed),
				textColor = getColor(c.DialogMainButtonText),
			},
			button = {
				background = getColor(c.DialogButton),
				hoverBackground = getColor(c.DialogButton, m.Hover),
				pressBackground = getColor(c.DialogButton, m.Pressed),
				textColor = getColor(c.DialogButtonText),
			},
		},
		Labels = {
			TitleBarText = getColor(c.TitlebarText, m.Default),
			TitleBarBackground = getColor(c.Titlebar, m.Default),
		},
	}

	local PluginTheme = deepJoin(UILibraryStylePalette, assetConfigTable)
	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		toggleButton = defineTheme({
			defaultWidth = 40,
			defaultHeight = 24,
			onImage = Images.TOGGLE_ON_LIGHT,
			offImage = Images.TOGGLE_OFF_LIGHT,
			disabledImage = Images.TOGGLE_DISABLE_LIGHT,
		},
		{
			onImage = Images.TOGGLE_ON_DARK,
			offImage = Images.TOGGLE_OFF_DARK,
			disabledImage = Images.TOGGLE_DISABLE_DARK
		}),
		textBox = {
			borderHover = getColor(c.DialogMainButton),
			background = getColor(c.InputFieldBackground),
		},
		button = {
			Default = defineTheme({
				backgroundColor = getColor(c.MainBackground),
				backgroundSelectedColor = getColor(c.CurrentMarker),
				borderColor = getColor(c.Border),
				borderSelectedColor = getColor(c.CurrentMarker),
				isRound = true
			},{
				Dark = {
					backgroundColor =getColor(c.DialogButton),
					backgroundSelectedColor =getColor(c.DialogButton, m.Pressed)
				}
			})
		},
		styledDropdown = {
			backgroundColor = getColor(c.Button),
			itemText = getColor(c.MainText),
			headerText = getColor(c.SubText),
			showSelectedDropdownItem = defineTheme({
				value = false,
			},
			{
				Dark = {
					value = true,
				}
			}),
			hovered = {
				backgroundColor = getColor(c.Button, m.Hover),
				textColor = getColor(c.MainText, m.Hover),
			},
			selected = defineTheme({
				backgroundColor = getColor(c.Button, m.Hover),
				textColor = getColor(c.MainText, m.Hover),
				borderColor = getColor(c.Border),
			},
			{
				Dark = {
					backgroundColor = getColor(c.CurrentMarker)
				}
			}),
			listTheme = {
				backgroundColor = getColor(c.MainBackground),
				hovered = {
					backgroundColor = getColor(c.Tab),
					textColor = getColor(c.MainText, m.Hover),
				},
				selected = defineTheme({
					backgroundColor = getColor(c.CurrentMarker),
					borderColor = getColor(c.Border),
				},
				{
					Dark = {
						backgroundColor = getColor(c.ScriptSelectionBackground),
						hovered = {
							backgroundColor = getColor(c.Button, m.Hover),
						}
					}
				})
			}
		},
	}
	return {
		PluginTheme = PluginTheme,
		UILibraryStylePalette = UILibraryStylePalette,
		UILibraryOverrides = UILibraryOverrides,
	}
end
function Theme.new()
	return StudioTheme.new(Theme.createValues)
end
function Theme.mock()
	return StudioTheme.newDummyTheme(Theme.createValues)
end
return Theme
