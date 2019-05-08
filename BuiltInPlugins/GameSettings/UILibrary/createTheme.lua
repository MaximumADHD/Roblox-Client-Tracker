--[[
	Transforms values from an app theme into a theme usable by the UILibrary.

	Parameters:
		table style:
			Specifies default style values which will be used to construct the theme.
			These include the basic palette colors (backgroundColor, textColor, etc),
			as well as other top-level fonts and sizes. Refer to defaultStyle for
			a list of style values that can be overridden.

		table overrides (optional):
			After the theme is created, overrides can be set for specific elements.

			For example, an overrides table of:
			{
				checkBox.backgroundColor = Color3.new(1, 1, 1),
			}

			Would change the background color of only the Checkbox component.
]]

local Style = require(script.Parent.Style)
local replaceDefaults = require(script.Parent.deepJoin)

return function(style, overrides)
	style = style or {}
	overrides = overrides or {}

	style = replaceDefaults(Style.Defaults, style)
	assert(Style.isValid(style), "Provided style table could not be validated.")

	-- Theme entries for UILibrary components are defined below
	local checkBox = {
		font = style.font,

		--TODO: Move texture to StudioSharedUI
		backgroundImage = "rbxasset://textures/GameSettings/UncheckedBox.png",
		selectedImage = "rbxasset://textures/GameSettings/CheckedBoxLight.png",

		backgroundColor = style.backgroundColor,
		titleColor = style.textColor,
	}

	local roundFrame = {
		--TODO: Move texture to StudioSharedUI
		backgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
		borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
		slice = Rect.new(3, 3, 13, 13),
	}

	local dropShadow = {
		--TODO: Move texture to StudioSharedUI
		image = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png",
	}

	local tooltip = {
		font = style.font,

		backgroundColor = style.itemColor,
		borderColor = style.borderColor,
		textColor = style.textColor,
		shadowColor = style.shadowColor,
		shadowTransparency = style.shadowTransparency,
	}

	local keyframe = {
		backgroundColor = style.itemColor,
		borderColor = style.borderColor,

		selected = {
			backgroundColor = style.selectionColor,
			borderColor = style.selectionBorderColor,
		},
	}

	local timelineTick = {
		font = style.font,

		lineColor = style.separationLineColor,
		textColor = style.dimmerTextColor,
	}

	local timeline = {
		barColor = style.borderColor,
	}

	local scrollingFrame = {
		--TODO: Move texture to StudioSharedUI
		topImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		midImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		bottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",

		backgroundColor = style.backgroundColor,
		scrollbarColor = style.borderColor,
	}

	local dropdownMenu = {
		borderColor = style.borderColor,
		--TODO: Move texture to StudioSharedUI
		borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
	}

	local styledDropdown = {
		font = style.font,

		backgroundColor = style.backgroundColor,
		borderColor = style.borderColor,
		textColor = style.textColor,

		--TODO: Move texture to StudioSharedUI
		arrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",

		hovered = {
			backgroundColor = style.hoveredItemColor,
			textColor = style.hoveredTextColor,
		},

		selected = {
			backgroundColor = style.selectionColor,
			borderColor = style.selectionBorderColor,
			textColor = style.selectedTextColor,
		},
	}

	local detailedDropdown = {
		font = style.font,

		backgroundColor = style.backgroundColor,
		disabled = style.disabledColor,
		borderColor = style.borderColor,
		displayText = style.textColor,
		descriptionText = style.subTextColor,

		--TODO: Move texture to StudioSharedUI
		arrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",

		hovered = {
			backgroundColor = style.hoveredItemColor,
			displayText = style.hoveredTextColor,
		},

		selected = {
			backgroundColor = style.selectionColor,
			disabled = style.disabledColor,
			borderColor = style.selectionBorderColor,
			textColor = style.selectedTextColor,
		},
	}

	local titledFrame = {
		font = style.font,
		text = style.subTextColor,
	}

	local textBox = {
		font = style.font,
		background = style.backgroundColor,
		disabled = style.disabledColor,
		borderDefault = style.borderColor,
		borderHover = style.hoverColor,
		tooltip = style.dimmerTextColor,
		text = style.textColor,
		error = style.errorColor,
	}

	local textButton = {
		font = style.font,
	}

	local separator = {
		lineColor = style.borderColor,
	}

	local dialog = {
		font = style.font,

		background = style.backgroundColor,
		textColor = style.textColor,
	}

	local button = {
		Default = {
			font = style.font,

			backgroundColor = style.itemColor,
			textColor = style.textColor,
			borderColor = style.borderColor,

			hovered = {
				font = style.font,

				backgroundColor = style.hoveredItemColor,
				textColor = style.hoveredTextColor,
				borderColor = style.borderColor,
			},
		},

		Primary = {
			font = style.font,

			backgroundColor = style.primaryItemColor,
			textColor = style.primaryTextColor,
			borderColor = style.primaryBorderColor,

			hovered = {
				font = style.font,

				backgroundColor = style.primaryHoveredItemColor,
				textColor = style.primaryHoveredTextColor,
				borderColor = style.primaryHoveredBorderColor,
			},
		},
	}

	return replaceDefaults({
		checkBox = checkBox,
		roundFrame = roundFrame,
		dropShadow = dropShadow,
		tooltip = tooltip,
		keyframe = keyframe,
		timelineTick = timelineTick,
		timeline = timeline,
		scrollingFrame = scrollingFrame,
		dropdownMenu = dropdownMenu,
		styledDropdown = styledDropdown,
		detailedDropdown = detailedDropdown,
		titledFrame = titledFrame,
		textBox = textBox,
		textButton = textButton,
		separator = separator,
		dialog = dialog,
		button = button,
	}, overrides)
end