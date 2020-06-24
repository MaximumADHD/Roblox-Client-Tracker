--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent

local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Theme = ContextServices.Theme

local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local UI = require(Plugin.Packages.Framework.UI)
local Decoration = UI.Decoration

local Util = require(Plugin.Packages.Framework.Util)
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleValue = Util.StyleValue

local function makeTheme()
	return Theme.new(function(theme, getColor)
		local studioFrameworkStyles = StudioFrameworkStyles.new(theme, getColor)

		local box = StyleTable.new("Box", function()
			local Item = Style.extend(studioFrameworkStyles.Box.Default, {
				Color = theme:GetColor("CategoryItem"),
			})

			return {
				__Item = Item,
			}
		end)

		local button = StyleTable.new("Button", function()
			local Item = Style.extend(studioFrameworkStyles.Button.Default, {
				Color =  Color3.new(1, 1, 1),
				BorderSize = 1,
			})

			return {
				__Item = Item,
			}
		end)

		local BlueText = StyleValue.new("BlueText", {
			Light = Color3.fromRGB(0, 116, 189),
			Dark = Color3.fromRGB(0, 162, 255),
		})

		local ScrollbarColor = StyleValue.new("ScrollbarColor", {
			Light = Color3.fromRGB(25, 25, 25),
			Dark = Color3.fromRGB(204, 204, 204),
		})

		-- TODO: Make sizes less redundant
		-- sworzalla 5/12/20
		local sizes = {
			SmallPadding = 10,
			HistoryButtonMinor = 25,
			ShortHeight = 30,
			HorizontalPadding = 50,
			NavHeight = 50,
			ConfirmationButtonWidth = 50,
			HistoryButtonMajor = 120,
			InputPaneLength = 200,
			DropdownWidth = 180,
			TextBoxWidth = 180,
		}

		return {
			Framework = StyleTable.extend(studioFrameworkStyles, {
				Box = box,
				Button = button,
			}),

			Scrollbar = {
				Thickness = 5,
				Transparency = 0.5,
				Color = ScrollbarColor:get(theme.Name),
				TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
				MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
				BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
			},

			Sizes = sizes,

			Text = {
				BrightText = {
					Size = 20,
					Color = theme:GetColor("BrightText"),
				},
				DimmedText = {
					Size = 16,
					Color = theme:GetColor("DimmedText"),
				},
				Button = {
					Size = 18,
					Color = theme:GetColor("MainText"),
					PrimaryColor = theme:GetColor("DialogMainButtonText"),
				},
				BlueText = {
					Size = 18,
					Color = BlueText:get(theme.Name),
				},
			},

			Layout = {
				Vertical = {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, sizes.SmallPadding),
				},
				Horizontal = {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, sizes.HorizontalPadding),
				},
			},
		}
	end)
end

return makeTheme
