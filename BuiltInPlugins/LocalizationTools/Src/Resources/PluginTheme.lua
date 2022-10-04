--[[
   Creates the theme for the plugin.
   Defines values specific to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local ui = FrameworkStyle.ComponentSymbols
local StyleKey = FrameworkStyle.StyleKey
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle
local DarkTheme = FrameworkStyle.Themes.DarkTheme
local createDefaultTheme = FrameworkStyle.createDefaultTheme

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local UI = Framework.UI
local Decoration = UI.Decoration

-- pcall needed to effectively mock service call for unit tests
local function isHighDpiEnabled()
    local highDpiServiceFound, isNotHighDpiBuild = pcall(function() return game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild() end)
    assert(highDpiServiceFound or isNotHighDpiBuild == "'StudioHighDpiService' is not a valid Service name")
    return not highDpiServiceFound or not isNotHighDpiBuild
end
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and isHighDpiEnabled()

local LocalizationResourceFolderTheme1 = "rbxasset://studio_svg_textures/Lua/Localization/%s/Large/"
local LocalizationLightResources = string.format(LocalizationResourceFolderTheme1,"Light/")
local LocalizationDarkResources = string.format(LocalizationResourceFolderTheme1,"Dark/")

local NavigationResourceFolderTheme1 = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"
local NavigationLightResources = string.format(NavigationResourceFolderTheme1,"Light/")
local NavigationDarkResources = string.format(NavigationResourceFolderTheme1,"Dark/")

local darkThemeOverride = {
	[StyleKey.ProgressSpinnerImage] = "rbxasset://textures/DarkThemeLoadingCircle.png",
    [StyleKey.Import] = LocalizationDarkResources .. "ImportCSV.png",
    [StyleKey.Export] = LocalizationDarkResources .. "ExportCSV.png",
    [StyleKey.TextCapture] = LocalizationDarkResources .. "TextCapture.png",
    [StyleKey.TextCaptureOn] = LocalizationDarkResources .. "TextCaptureStop.png",
    [StyleKey.ArrowExpanded] = NavigationDarkResources .. "ArrowDown.png",
    [StyleKey.ArrowCollapsed] = NavigationDarkResources .. "ArrowRight.png",
}
local lightThemeOverride = {
	[StyleKey.ProgressSpinnerImage] = "rbxasset://textures/LightThemeLoadingCircle.png",
    [StyleKey.Import] = LocalizationLightResources .. "ImportCSV.png",
    [StyleKey.Export] = LocalizationLightResources .. "ExportCSV.png",
    [StyleKey.TextCapture] = LocalizationLightResources .. "TextCapture.png",
    [StyleKey.TextCaptureOn] = LocalizationLightResources .. "TextCaptureStop.png",
    [StyleKey.ArrowExpanded] = NavigationLightResources .. "ArrowDown.png",
    [StyleKey.ArrowCollapsed] = NavigationLightResources .. "ArrowRight.png",
}

return function(makeMock)
   ui:add("MainView")
   ui:add("MessageFrame")
   ui:add("CloudTableSection")
   ui:add("ProgressSpinner")
   ui:add("LabeledTextButton")
   ui:add("Collapsible")
   ui:add("EmbeddedTableSection")
   ui:add("UploadDialogContent")
   ui:add("ErrorDialog")
   ui:add("WarningDialog")
   ui:add("LabeledImageButton")
   ui:add("ImageLocalizationSection")

   local PluginTheme = {
      [ui.Button] = Cryo.Dictionary.join(getRawComponentStyle("Button"), {
         Background = Decoration.Box,
         BackgroundStyle = {
            Color = StyleKey.Button,
            BorderColor = StyleKey.Border,
            BorderSize = 1,
         },

         ["&TextButton"] = {
            TextColor = StyleKey.BrightText,
            [StyleModifier.Hover] = {
               BackgroundStyle = {
                  Color = StyleKey.ButtonHover,
               },
            },
         },

         ["&DisabledTextButton"] = {
            TextColor = StyleKey.DimmedText,
         },

         ["&PrimeTextButton"] = {
            TextColor = StyleKey.DialogMainButtonText,
            BackgroundStyle = {
               Color = StyleKey.DialogMainButton,
               BorderColor = StyleKey.Border,
               BorderSize = 1,
            },
            [StyleModifier.Hover] = {
               BackgroundStyle = {
                  Color = StyleKey.DialogMainButtonHover,
               },
            },
         },
      }),

      [ui.LinkText] = Cryo.Dictionary.join(getRawComponentStyle("LinkText"), {
         EnableHover = true,
         Font = Enum.Font.SourceSans,
         TextColor = StyleKey.LinkText,
         TextSize = 16,
      }),

      [ui.TitledFrame] = Cryo.Dictionary.join(getRawComponentStyle("TitledFrame"), {
         TextColor = StyleKey.BrightText,
         TextSize = 16,
      }),

      -- LocalizationTools specific components
      [ui.MainView] = {
         EmptyFrameHeight = 1000,
         MainBackground = StyleKey.MainBackground,
         Padding = 5,
         PaddingRight = 20,
         PaddingTop = 10,
         ScrollBarBorderColor = StyleKey.Border,
         ScrollBarColor = StyleKey.ScrollBar,
         ScrollingFrameackground = StyleKey.ScrollBarBackground,
         ScrollingFrameCanvasHeight = 450,
         ScrollingFrameHeight = -20,
      },
      [ui.MessageFrame] = {
         BackgroundColor = StyleKey.RibbonTab,
         BorderColor = StyleKey.Border,
         Height = 20,
         Padding = 5,
         TextColor = StyleKey.BrightText,
      },
      [ui.CloudTableSection] = {
         LeftIndent = 15,
         MessageFrameBackground = StyleKey.MainBackground,
         MessageFrameBorder = StyleKey.Border,
         PaddingTop = 5,
         SectionLabelSize = 20,
         SectionLabelTextSize = 10,
         TextColor = StyleKey.BrightText,
         LinkTextHeight = 50,
        PublishMessageHeight = 150,
      },
      [ui.ProgressSpinner] = {
         ImageRectSize = 80,
         ProgressSpinnerImageUrl = StyleKey.ProgressSpinnerImage,
         Size = 81,
      },
      [ui.LabeledTextButton] = {
         ButtonWidth = 100,
         ButtonHeight = 35,
         Height = 50,
         LabelWidth = if FFlagDevFrameworkMigrateTextLabels then 250 else 210,
         TextColor = StyleKey.BrightText,
         DisabledTextColor = StyleKey.DimmedText,
      },
      [ui.Collapsible] = {
         DisabledTextColor = StyleKey.DimmedText,
         IconSize = 16,
         IconColor = StyleKey.BrightText,
         IconImageOpen = FFlagHighDpiIcons and StyleKey.ArrowExpanded or "rbxasset://textures/collapsibleArrowDown.png",
         IconImageClosed = FFlagHighDpiIcons and StyleKey.ArrowCollapsed or "rbxasset://textures/collapsibleArrowRight.png",
         TextColor = StyleKey.BrightText,
         TopBarHeight = 24,
      },
      [ui.EmbeddedTableSection] = {
         ExportButtonImage = FFlagHighDpiIcons and StyleKey.Export or "rbxasset://textures/localizationExport.png",
         ImportButtonImage = FFlagHighDpiIcons and StyleKey.Import or "rbxasset://textures/localizationImport.png",
         LeftIndent = 15,
         PaddingTop = 5,
         SectionLabelSize = 20,
         SectionLabelTextSize = 10,
         TextColor = StyleKey.BrightText,
         TextCaptureButtonImage = {
            On = FFlagHighDpiIcons and StyleKey.TextCaptureOn or "rbxasset://textures/localizationUIScrapingOn.png",
            Off = FFlagHighDpiIcons and StyleKey.TextCapture or "rbxasset://textures/localizationUIScrapingOff.png",
         },
      },
      [ui.LabeledImageButton] = {
         BackgroundColor = StyleKey.Button,
         BackgroundColorHovered = StyleKey.ButtonHover,
         Height = 50,
         ImageButtonSize = 50,
         ImageLabelSize = 30,
         LabelWidth = 260,
         TextColor = StyleKey.BrightText,
         DisabledTextColor = StyleKey.DimmedText,
         TextLabelSize = 20,
         TextLabelTextSize = 6,
      },
      [ui.UploadDialogContent] = {
         BrightText = StyleKey.BrightText,
         DimmedText = StyleKey.DimmedText,
         ErrorText = StyleKey.ErrorText,
         WarningText = StyleKey.WarningText,
         Padding = 15,
         PatchInfoFrameHeight = 290,
         TableContentsFrameHeight = 90,
         TableContentPaddingLeft = 30,
         TableContentPaddingTop = 5,
         ThisPatchWIllFrameHeight = 130,
         ButtonFrameHeight = 40,
         ButtonWidth = 100,
         ButtonHeight = 35,
         BorderColor = StyleKey.Border,
         MainBackground = StyleKey.MainBackground,
         MainButton = StyleKey.MainButton,
      },
      [ui.ErrorDialog] = {
         BrightText = StyleKey.BrightText,
         DimmedText = StyleKey.DimmedText,
         ErrorText = StyleKey.ErrorText,
         WarningText = StyleKey.WarningText,
         Padding = 15,
         ButtonFrameHeight = 40,
         ButtonWidth = 100,
         ButtonHeight = 35,
         BorderColor = StyleKey.Border,
         MainBackground = StyleKey.MainBackground,
         MainButton = StyleKey.MainButton,
      },
      [ui.WarningDialog] = {
         BrightText = StyleKey.BrightText,
         DimmedText = StyleKey.DimmedText,
         ErrorText = StyleKey.ErrorText,
         WarningText = StyleKey.WarningText,
         Padding = 15,
         ButtonFrameHeight = 40,
         ButtonWidth = 100,
         ButtonHeight = 35,
         BorderColor = StyleKey.Border,
         MainBackground = StyleKey.MainBackground,
         MainButton = StyleKey.MainButton,
      },
      [ui.ImageLocalizationSection] = {
         LeftIndent = 15,
         PaddingTop = 20,
         Spacing = 15,
         SectionLabelSize = 20,
         SectionLabelTextSize = 10,
         TextColor = StyleKey.BrightText,
         LabelWidth = 260,
         ButtonWidth = 100,
         ButtonHeight = 35,
      }
   }

   local styleRoot
   if makeMock or false then
      -- Use StudioTheme.mock() when it allows override.
      local darkTheme = Cryo.Dictionary.join(DarkTheme, darkThemeOverride)

	   local themeProps = {
		   getThemeName = function() return "Dark" end,
		   themesList = {
			   Dark = darkTheme,
		   },
      }
      styleRoot = createDefaultTheme(themeProps)
   else
      styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
   end

   return styleRoot:extend(PluginTheme)
end