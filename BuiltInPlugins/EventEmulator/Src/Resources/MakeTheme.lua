--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local Style = Framework.Style
local StyleKey = Style.StyleKey
local BaseTheme = Style.Themes.BaseTheme
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols

local sizes = {
	SmallPadding = 10,
	HistoryButtonMinor = 25,
	ShortHeight = 30,
	HorizontalPadding = 50,
	NavHeight = 50,
	ConfirmationButtonWidth = 50,
	HistoryButtonMajor = 100,
	InputPaneLength = 300,
	HistoryPaneLength = 300,
	DropdownWidth = 180,
	TextBoxWidth = 180,
}

local PluginTheme = {

	[StyleKey.BlueText] = Color3.fromRGB(0, 162, 255),

	Text = {
		BrightText = {
			Size = 20,
			Color = StyleKey.BrightText,
		},
		DimmedText = {
			Size = 16,
			Color = StyleKey.DimmedText,
		},
		Button = {
			Size = 18,
			Color = StyleKey.MainText,
			PrimaryColor = StyleKey.DialogMainButtonText,
		},
		BlueText = {
			Size = 18,
			Color = StyleKey.BlueText,
		},
	},

	Scrollbar = {
		Thickness = 5,
		Transparency = 0.5,
		Color = StyleKey.ScrollBar,
		TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
	},

	Sizes = sizes,

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
		HistoryItem = {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, sizes.SmallPadding),
		}
	},

	[ui.Box] = Cryo.Dictionary.join(BaseTheme[ui.Box], {
		["&__Item"] = {
			Color = StyleKey.CategoryItem,
		},
	}),

	[ui.RoundBox] = Cryo.Dictionary.join(BaseTheme[ui.RoundBox], {
		["&__Item"] = {
			Color = StyleKey.CategoryItem,
			BorderTransparency = 1,
		},

		["&__Example"] = {
			Color = StyleKey.Mid,
		},
	}),

	[ui.Button] = Cryo.Dictionary.join(BaseTheme[ui.Button], {
		["&__Item"] ={
			Color = StyleKey.Button,
			BorderSize = 1,
		}
	}),
}

return function(createMock)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	return styleRoot:extend(PluginTheme)
end
