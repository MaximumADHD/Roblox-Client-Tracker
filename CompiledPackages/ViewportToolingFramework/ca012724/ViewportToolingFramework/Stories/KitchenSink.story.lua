--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

local Toolbar = require(ViewportToolingFramework.Components.Toolbar)
local ToolbarBase = require(ViewportToolingFramework.Components.ToolbarBase)
local Types = require(ViewportToolingFramework.Types)

local function KitchenSink(props)
	local basicButton: Types.Button = {
		Type = "Button",
		Tooltip = "A button",
		TooltipDescription = `This is a {string.rep("very ", 10)}long description.`,
		Icon = "rbxassetid://11560341132",
		OnClick = function()
			print("Button clicked")
		end,
	}

	local selectedButton = table.clone(basicButton)
	selectedButton.Selected = true

	local splitButton: Types.SplitButton = {
		Type = "SplitButton",

		Options = {
			{
				Icon = "rbxasset://textures/StudioToolbox/Search.png",
				Text = "Option A",
				OnClick = function()
					print("Option A clicked")
				end,
			},

			{
				Icon = "rbxasset://textures/StudioToolbox/Gallery.png",
				Text = "This is the second option, as you can see",
				TooltipDescription = "The name is long on purpose!",
				OnClick = function()
					print("Option B clicked")
				end,
			},
		},
	}

	local separator: Types.Separator = {
		Type = "Separator",
	}

	local radioValue, setRadioValue = React.useState("gallery")
	local radio: Types.Radio = {
		Type = "Radio",

		Value = radioValue,
		OnChange = setRadioValue,

		Items = {
			{
				Id = "gallery",
				Tooltip = "Gallery",
				TooltipDescription = "The gallery",
				Icon = "rbxasset://textures/StudioToolbox/Gallery.png",
			},

			{
				Id = "list",
				Tooltip = "List",
				Icon = "rbxasset://textures/StudioToolbox/List.png",
			},

			{
				Id = "search",
				Tooltip = "Search",
				Icon = "rbxasset://textures/StudioToolbox/Search.png",
			},
		},
	}

	local sliderValue, setSliderValue = React.useState(5)
	local slider: Types.Slider = {
		Type = "Slider",

		Value = sliderValue,
		OnChange = setSliderValue,

		Min = 0,
		Max = 10,
		IncrementStep = 1,

		Icon = "rbxasset://textures/StudioToolbox/Gallery.png",
		Tooltip = "My slider",
	}

	local label: Types.Label = {
		Type = "Label",
		Text = "This is a label.",
	}

	local horizontalToolbar: Types.Toolbar = {
		HorizontalItems = {
			basicButton,
			selectedButton,
			splitButton,
			separator,
			radio,
			separator,
			slider,
			separator,

			{
				Type = "TextButton",
				Text = "On",
				OnClick = function()
					print("Clicked on")
				end,
			},

			{
				Type = "TextButton",
				Text = "Off",
				Enabled = false,
				OnClick = function()
					error("Should be unreachable")
				end,
			},

			separator,
			label,
		},
	}

	local verticalToolbar: Types.Toolbar = {
		VerticalItems = {
			basicButton,
			selectedButton,
			splitButton,
			separator,
			radio,
		},
	}

	local toolbarComponent = if props.controls.PutInViewport then Toolbar else ToolbarBase

	return React.createElement(React.Fragment, {}, {
		HorizontalToolbar = React.createElement(toolbarComponent, horizontalToolbar),
		VerticalToolbar = React.createElement(toolbarComponent, verticalToolbar),
	})
end

return {
	story = KitchenSink,

	controls = {
		PutInViewport = false,
	},
}
