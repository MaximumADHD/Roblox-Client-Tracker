local FFlagUpdateDraftsWidgetToDFContextServices = game:GetFastFlag("UpdateDraftsWidgetToDFContextServices")
local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Packages.Framework).Util.deepJoin

if FFlagUpdateDraftsWidgetToDFContextServices then
	local isCli, _ = pcall(function()
		return game:GetService("ProcessService")
	end)

	local function isDarkerTheme()
		-- Assume "darker" theme if the average main background colour is darker
		local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
		return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
	end

	local function getMockStudioTheme()
		local function getColor()
			return Color3.new()
		end
		return {
			Name = "Light",
			GetColor = getColor,
			getColor = getColor,
		}
	end

	local function getThemeHelpers()
		if isCli then
			-- Theme mocks
			return {
				StyleColor = setmetatable({}, {
					__index = function()
						return Color3.new()
					end
				}),
				StyleModifier = {
					Default = "Default",
					Disabled = "Disabled",
					Hover = "Hover",
					Selected = "Selected",
				},
				StudioTheme = getMockStudioTheme(),
				isDark = false,
			}
		else
			return {
				StyleColor = Enum.StudioStyleGuideColor,
				StyleModifier = Enum.StudioStyleGuideModifier,
				StudioTheme = settings().Studio.Theme,
				isDark = isDarkerTheme(),
			}
		end
	end

	local function getUILibraryTheme()
		local helpers = getThemeHelpers()
		local StyleColor = helpers.StyleColor
		local StyleModifier = helpers.StyleModifier

		local theme = helpers.StudioTheme

		local styleGuide = StudioStyle.new(function(...)
			return theme:GetColor(...)
		end, StyleColor, StyleModifier)

		-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
		local UILibraryOverrides = {
			treeView = {
				elementPadding = 0,
			},

			button = {
				tableItemButton = {
					font = Enum.Font.SourceSans,
					textSize = 18,
					backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Default),
					textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Default),
					dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Default),

					disabled = {
						backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Disabled),
						textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Disabled),
						dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Disabled),
					},

					hovered = {
						backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Hover),
						textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Hover),
						dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Hover),
					},

					selected = {
						backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Selected),
						textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Selected),
						dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Selected),
					},
				}
			},
		}

		return createTheme(styleGuide, UILibraryOverrides)
	end

	return {
		getUILibraryTheme = getUILibraryTheme,
	}
else
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
end