local Plugin = script.parent.parent.parent

local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else require(Plugin.Src.Util.deepJoin)

local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

-- getColor : function<Color3>(color enum)
-- StyleColor = Enum.StudioStyleGuideColor
-- StyleModifier = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, StyleColor, StyleModifier)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, StyleColor, StyleModifier)

	-- luacheck: ignore isDark
	local isDark = Theme.isDarkerTheme()

	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(UILibraryStylePalette, {
		BackgroundColor = getColor(StyleColor.MainBackground),

		Icons = {
			DraftState = {
				Committed = "rbxasset://textures/StudioSharedUI/statusSuccess.png",
				Outdated = "rbxasset://textures/DraftsWidget/newSource.png",
				Deleted = "rbxasset://textures/DraftsWidget/deletedSource.png",
			},
		},
		Labels = {
			TitleBarText = getColor(StyleColor.TitlebarText, StyleModifier.Default),
			TitleBarBackground = getColor(StyleColor.Titlebar, StyleModifier.Default),
			MainText = getColor(StyleColor.MainText, StyleModifier.Default),
			MainFont = Enum.Font.SourceSans,
		},

		Dialog = {
			HeaderFont = Enum.Font.SourceSans,
			HeaderTextColor = getColor(StyleColor.MainText, StyleModifier.Default),
		},

		defaultButton = {
			ButtonColor = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
			ButtonColor_Hover = getColor(StyleColor.LinkText),
			ButtonColor_Disabled = isDark and getColor(StyleColor.Button, StyleModifier.Disabled) or Color3.fromRGB(153, 218, 255),
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and getColor(StyleColor.ButtonText, StyleModifier.Disabled) or Color3.new(1, 1, 1),
			BorderColor = getColor(StyleColor.Light),
			TextSize = 12,
		},
	})


	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		treeView = {
			elementPadding = 0,
		},

		button = {
			tableItemButton = {
				font = Enum.Font.SourceSans,
				textSize = 18,
				backgroundColor = getColor(StyleColor.TableItem, StyleModifier.Default),
				textColor = getColor(StyleColor.MainText, StyleModifier.Default),
				dimmedTextColor = getColor(StyleColor.DimmedText, StyleModifier.Default),

				disabled = {
					backgroundColor = getColor(StyleColor.TableItem, StyleModifier.Disabled),
					textColor = getColor(StyleColor.MainText, StyleModifier.Disabled),
					dimmedTextColor = getColor(StyleColor.DimmedText, StyleModifier.Disabled),
				},

				hovered = {
					backgroundColor = getColor(StyleColor.TableItem, StyleModifier.Hover),
					textColor = getColor(StyleColor.MainText, StyleModifier.Hover),
					dimmedTextColor = getColor(StyleColor.DimmedText, StyleModifier.Hover),
				},

				selected = {
					backgroundColor = getColor(StyleColor.TableItem, StyleModifier.Selected),
					textColor = getColor(StyleColor.MainText, StyleModifier.Selected),
					dimmedTextColor = getColor(StyleColor.DimmedText, StyleModifier.Selected),
				},
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