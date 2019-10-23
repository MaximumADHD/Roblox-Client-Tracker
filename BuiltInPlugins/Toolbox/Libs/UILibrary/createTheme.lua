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
		textSize = 12,

		backgroundColor = style.itemColor,
		borderColor = style.borderColor,
		textColor = style.textColor,
		shadowColor = style.shadowColor,
		shadowTransparency = style.shadowTransparency,
	}

	local keyframe = {
		Default = {
			backgroundColor = style.itemColor,
			borderColor = style.borderColor,

			selected = {
				backgroundColor = style.selectionColor,
				borderColor = style.selectionBorderColor,
			},
		},

		Primary = {
			backgroundColor = style.primaryItemColor,
			borderColor = style.primaryBorderColor,

			selected = {
				backgroundColor = style.primaryHoveredItemColor,
				borderColor = style.selectionBorderColor,
			},
		},
	}

	local scrubber = {
		backgroundColor = style.selectionColor,
		image = "",
	}

	local scrollingFrame = {
		--TODO: Move texture to StudioSharedUI
		topImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		midImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		bottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",

		backgroundColor = style.backgroundColor,
		scrollbarColor = style.borderColor,
	}

	local radioButton = {
		radioButtonBackground = "rbxasset://textures/GameSettings/RadioButton.png",
		radioButtonColor = style.separationLineColor,
		radioButtonSelected = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
		textSize = 18,
		buttonHeight = 20,
		font = style.font,
		textColor = style.textColor,
		contentPadding = 16,
		buttonPadding = 6,
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
		disabledText = style.dimmerTextColor,
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
			displayText = style.selectedTextColor,
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

	local treeView = {
		elementPadding = 4,
		margins = {
			left = 2,
			top = 2,
			right = 2,
			bottom = 2,
		},
		indentOffset = 8,
		scrollbar = replaceDefaults(scrollingFrame, {
			scrollbarThickness = 16,
			scrollbarPadding = 2,
			scrollbarImageColor = style.borderColor,
		}),
		defaultElementWidth = 140,
	}

	local dialog = {
		font = style.font,

		background = style.backgroundColor,
		textColor = style.textColor,
	}

	local bulletPoint = {
		font = style.font,

		text = style.textColor,
	}

	local button = {
		Default = {
			font = style.font,
			isRound = true,

			backgroundColor = style.itemColor,
			textColor = style.textColor,
			borderColor = style.borderColor,

			hovered = {
				backgroundColor = style.hoveredItemColor,
				textColor = style.hoveredTextColor,
				borderColor = style.borderColor,
			},
		},

		Primary = {
			font = style.font,
			isRound = true,

			backgroundColor = style.primaryItemColor,
			textColor = style.primaryTextColor,
			borderColor = style.primaryBorderColor,

			hovered = {
				backgroundColor = style.primaryHoveredItemColor,
				textColor = style.primaryHoveredTextColor,
				borderColor = style.primaryHoveredBorderColor,
			},
		},
	}

	local loadingIndicator = {
		baseColor = style.hoveredItemColor,
		endColor = style.dimmerTextColor,
	}

	local toggleButton = {
		defaultWidth = 20,
		defaultHeight = 20,

		onImage = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		offImage = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
		disabledImage = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
	}

	local hyperlink = {
		textSize = 22,
		textColor = style.hyperlinkTextColor,
		font = style.font,
	}

	return replaceDefaults({
		checkBox = checkBox,
		roundFrame = roundFrame,
		dropShadow = dropShadow,
		tooltip = tooltip,
		keyframe = keyframe,
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
		scrubber = scrubber,
		loadingIndicator = loadingIndicator,
		bulletPoint = bulletPoint,
		toggleButton = toggleButton,
		radioButton = radioButton,
		treeView = treeView,
		hyperlink = hyperlink,
	}, overrides)
end