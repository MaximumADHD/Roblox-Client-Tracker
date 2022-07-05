--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local DEPRECATED_UILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)
local getUILibraryTheme = DEPRECATED_UILibraryTheme.getUILibraryTheme

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local StyleKey = Style.StyleKey
local Colors = Style.Colors

local darkThemeOverride = {
	-- TODO: jbousellam - remove when UILibrary is removed
    previewArea = {
        backgroundColor = StyleKey.MainBackground,
        textColor = StyleKey.MainText,
        selectedColor = Colors.White,
    },
    publishAsset = {
        titleTextColor = StyleKey.SubText,
        textColor = StyleKey.MainText,
        tipsTextColor = StyleKey.TextDisabled,
        showDropdownRibbon = false,
        highlightDropdownSelectedItem = true,
    },
    divider = {
        horizontalLineColor = StyleKey.Border,
        verticalLineColor = StyleKey.Border,
    },
    scrollingFrame = {
        scrollbarBackgroundColor = StyleKey.ScrollBarBackground,
        scrollbarImageColor = StyleKey.TextDisabled,
    },
    sideTab = {
        backgroundColor = StyleKey.MainBackground,
        leftBorderColor = Colors.Blue,
        tabBackground = StyleKey.Titlebar,
        contentColor = StyleKey.TitlebarText,
        selectedColor = Colors.White,
        textColor = StyleKey.MainText,
    },
}

local lightThemeOverride = {
	-- TODO: jbousellam - remove when UILibrary is removed
    previewArea = {
        backgroundColor = StyleKey.MainBackground,
        textColor = StyleKey.MainText,
        selectedColor = Colors.Blue,
    },
    publishAsset = {
        titleTextColor = StyleKey.SubText,
        textColor = StyleKey.MainText,
        tipsTextColor = Colors.Blue,
        showDropdownRibbon = true,
        highlightDropdownSelectedItem = false,
    },
    divider = {
        horizontalLineColor = StyleKey.Titlebar,
        verticalLineColor = StyleKey.Titlebar,
    },
    scrollingFrame = {
        scrollbarBackgroundColor = Colors.Gray_Lightest,
        scrollbarImageColor = Colors.Gray_Lightest,
    },
    sideTab = {
        backgroundColor = StyleKey.MainBackground,
        leftBorderColor = StyleKey.Border,
        tabBackground = StyleKey.Titlebar,
        contentColor = StyleKey.TitlebarText,
        selectedColor = Colors.Blue,
        textColor = StyleKey.MainText,
    },
}

local PluginTheme = {
	-- New Plugin Setup: Add theme values, i.e.
	-- [StyleKey.Something] = Color3.new()

	-- TODO: jbousellam - remove when UILibrary Components are removed
    assetConfig = {
        backgroundColor = StyleKey.MainBackground,
        textColor = StyleKey.MainText,
        labelTextColor = StyleKey.DimmedText,
        separatorColor = StyleKey.Border,
        errorColor = StyleKey.ErrorText,
    },
    cancelButton = {
        ButtonColor = StyleKey.Button,
        ButtonColor_Hover = StyleKey.ButtonHover,
        ButtonColor_Disabled = StyleKey.ButtonDisabled,
        TextColor = StyleKey.MainText,
        TextColor_Disabled = StyleKey.DimmedText,
        BorderColor = StyleKey.Border,
    },
    defaultButton = {
		ButtonColor = StyleKey.PrimaryMain,
		ButtonColor_Hover = StyleKey.PrimaryStatesHoverBackground,
		ButtonColor_Disabled = StyleKey.DialogMainButtonDisabled,
		TextColor = StyleKey.TextContrast,
		TextColor_Disabled = StyleKey.TextDisabled,
		BorderColor = StyleKey.Light,
	},
    -- AssetConfig footer
    footer = {
        backgroundColor = StyleKey.MainBackground,
        borderColor = StyleKey.Border,
    },
    Labels = {
        TitleBarText = StyleKey.TitlebarText,
        TitleBarBackground = StyleKey.Titlebar,
    },
    loading = {
        text = StyleKey.MainText,
        backgroundBar = StyleKey.TextPrimary,
        bar = StyleKey.CurrentMarker,
    },
    messageBox = {
        backgroundColor = StyleKey.MainBackground,
        textColor = StyleKey.MainText,
        informativeTextColor = StyleKey.SubText,
    },
    nav = {
        mainButton = {
            background = StyleKey.DialogMainButton,
            hoverBackground = StyleKey.DialogMainButtonHover,
            pressBackground = StyleKey.DialogMainButtonPressed,
            textColor = StyleKey.DialogMainButtonText,
        },
        button = {
            background = StyleKey.DialogButton,
            hoverBackground = StyleKey.DialogButtonHover,
            pressBackground = StyleKey.DialogButtonPressed,
            textColor = StyleKey.DialogButtonText,
        },
    },
    textField = {
        backgroundColor = StyleKey.MainBackground,
        borderColor = StyleKey.Border,
        borderHoveredColor = StyleKey.CurrentMarker,
        borderSelectedColor = Colors.Blue,
    },
    thumbnailPreview = {
        background = StyleKey.Item,
        border = StyleKey.Border,
        text = StyleKey.MainText,
        placeholderColor = StyleKey.MainText,
    },
    typeSelection = {
        background = StyleKey.TableItem,
        selector = {
            title = StyleKey.MainText,
            description = StyleKey.TextDisabled,
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
        text = StyleKey.MainText,
        successText = StyleKey.SuccessMain,
        background = StyleKey.TableItem,
        link = StyleKey.TextLink,
    },
}

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock(darkThemeOverride, lightThemeOverride)
	else
		styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	end

	local theme = styleRoot:extend(PluginTheme)
	theme.getUILibraryTheme = getUILibraryTheme

	return theme
end

