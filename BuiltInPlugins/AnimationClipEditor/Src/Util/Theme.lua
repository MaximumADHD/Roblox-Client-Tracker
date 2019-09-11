local Plugin = script.Parent.Parent.Parent
local StudioTheme = require(Plugin.UILibrary.Studio.StudioTheme)
local StudioStyle = require(Plugin.UILibrary.Studio.StudioStyle)
local Cryo = require(Plugin.Cryo)

local Theme = {}

function Theme.createValues(getColor, c, m)
	local theme = settings().Studio.Theme
	local function defineTheme(defaults, overrides)
		local override = overrides and overrides[theme.Name]
		if override then
			return Cryo.Dictionary.join(defaults, override)
		else
			return defaults
		end
	end

	local lightKeyframeError = Color3.fromRGB(255, 161, 161)
	local lightKeyframeErrorBorder = Color3.fromRGB(168, 132, 132)
	local easingStyleBorder = Color3.fromRGB(56, 56, 56)

	local dropdownTheme = {
		itemColor = getColor(c.Item),
		hoveredItemColor = getColor(c.Item, m.Hover),
		textColor = getColor(c.MainText),
		itemHeight = 22,
		textSize = 15,
	}

	local playbackTheme = {
		autokeyOn = "",
		autokeyOff = "",
		skipBackward = "rbxasset://textures/AnimationEditor/button_control_previous.png",
		skipForward = "rbxasset://textures/AnimationEditor/button_control_next.png",
		play = "rbxasset://textures/AnimationEditor/button_control_play.png",
		pause = "rbxasset://textures/AnimationEditor/button_pause_white@2x.png",
		loop = "rbxasset://textures/AnimationEditor/button_loop.png",
		selectClipDropdownIcon = "rbxasset://textures/AnimationEditor/btn_expand.png",
		iconColor = getColor(c.MainText),
		iconHighlightColor = getColor(c.DialogMainButtonText),
		timeInputBackground = getColor(c.InputFieldBackground),
		borderColor = getColor(c.Border),
		inputBorderColor = getColor(c.InputFieldBorder),
	}

	local trackTheme = defineTheme({
		backgroundColor = getColor(c.MainBackground),
		shadedBackgroundColor = getColor(c.RibbonTab),
		titleBackgroundColor = getColor(c.Midlight),
		selectedBackgroundColor = getColor(c.Item, m.Selected),
		primaryBackgroundColor = getColor(c.RibbonTab),

		textColor = getColor(c.MainText),
		primaryTextColor = getColor(c.BrightText),
		selectedTextColor = getColor(c.MainText, m.Selected),
		textSize = 15,

		arrow = {
			collapsed = "rbxasset://textures/StudioToolbox/ArrowCollapsed.png",
			expanded = "rbxasset://textures/StudioToolbox/ArrowExpanded.png",
		},
		contextMenu = "rbxasset://textures/AnimationEditor/icon_showmore.png",
		addButtonBackground = "rbxasset://textures/AnimationEditor/Circle.png",
		addEventBackground = "rbxasset://textures/AnimationEditor/addEvent_inner.png",
		addEventBorder = "rbxasset://textures/AnimationEditor/addEvent_border.png",
		plusIcon = "rbxasset://textures/AnimationEditor/icon_add.png",

		buttonColor = getColor(c.DimmedText),
		hoveredButtonColor = getColor(c.DialogMainButton),
		addButtonColor = getColor(c.DialogButtonBorder),
		hoveredAddButtonColor = getColor(c.DialogMainButton),
		plusIconColor = Color3.fromRGB(82, 82, 82),
		hoveredPlusIconColor = getColor(c.DialogMainButtonText),
	}, {
		Dark = {
			titleBackgroundColor = getColor(c.RibbonTab),
			primaryBackgroundColor = getColor(c.InputFieldBackground),
			buttonColor = getColor(c.MainText),
			hoveredButtonColor = getColor(c.BrightText),

			addButtonColor = getColor(c.Button),
			hoveredAddButtonColor = getColor(c.Button, m.Hover),
			plusIconColor = getColor(c.ButtonText),
		},
	})

	local scaleControlsTheme = {
		mainColor = getColor(c.DialogMainButton),
		textColor = getColor(c.DialogMainButtonText),
		textSize = 15,
	}

	local textBoxTheme = {
		textSize = 16,
		textColor = getColor(c.MainText),
		backgroundColor = getColor(c.InputFieldBackground),
		errorBorder = getColor(c.ErrorText),
		focusedBorder = getColor(c.DialogMainButton),
		defaultBorder = getColor(c.Border),
	}

	local settingsButtonTheme = defineTheme({
		image = "rbxasset://textures/AnimationEditor/btn_manage.png",
		imageColor = getColor(c.MainText)
	})

	local keyframeTheme = defineTheme({
		clusterColor = getColor(c.DialogButtonText, m.Disabled),
		primaryClusterColor = getColor(c.DimmedText),
	}, {
		Dark = {
			primaryClusterColor = getColor(c.SubText),
		},
	})

	local eventMarker = defineTheme({
		imageColor = getColor(c.DialogButtonText, m.Disabled),
		borderColor = getColor(c.DimmedText),
		selectionBorderColor = getColor(c.DialogMainButton),
		mainImage = "rbxasset://textures/AnimationEditor/eventMarker_inner.png",
		borderImage = "rbxasset://textures/AnimationEditor/eventMarker_border.png",
		selectionBorderImage = "rbxasset://textures/AnimationEditor/eventMarker_border_selected.png",
		textSize = 15,
	}, {
		Dark = {
			imageColor = getColor(c.MainText),
			borderColor = getColor(c.DialogMainButtonText),
		},
	})

	local scrollBarTheme = {
		controlImage = "rbxasset://textures/AnimationEditor/button_zoom.png",
		arrowImage = "rbxasset://textures/AnimationEditor/img_triangle.png",
		imageColor = getColor(c.MainText),
		controlColor = getColor(c.ScrollBar),
		hoverColor = getColor(c.ScrollBar, m.Hover),
		pressedColor = getColor(c.ScrollBar, m.Pressed),
		backgroundColor = getColor(c.ScrollBarBackground),
		borderColor = getColor(c.InputFieldBorder),
		borderSize = 1,
	}

	local timelineTheme = defineTheme({
		lineColor = getColor(c.DimmedText),
		textColor = getColor(c.DimmedText),
		dimmedColor = getColor(c.Separator),
		barColor = getColor(c.MainBackground),
		backgroundColor = getColor(c.RibbonTab),
		lowerTransparency = 0.85,
		lowerBrightTransparency = 0.7,
		textSize = 15,
	}, {
		Dark = {
			dimmedColor = getColor(c.DimmedText),
			backgroundColor = getColor(c.ScrollBar),
		},
	})

	local dialogTheme = {
		textSize = 16,
		subTextSize = 15,
		headerFont = Enum.Font.SourceSansSemibold,
		textColor = getColor(c.MainText),
		subTextColor = getColor(c.DimmedText),
		deleteImage = "rbxasset://textures/AnimationEditor/icon_close.png",
		addImage = "rbxasset://textures/AnimationEditor/icon_add.png",
		errorImage = "rbxasset://textures/AnimationEditor/icon_error.png",
	}

	local toastTheme = {
		textSize = 16,
		textColor = getColor(c.MainText),
		shadowTransparency = 0.75,
		shadowColor = Color3.new(),
		shadowSize = 35,
	}

	local startScreenTheme = defineTheme({
		textSize = 16,
		textColor = getColor(c.MainText),
		darkTextColor = getColor(c.DialogMainButtonText),
	}, {
		Dark = {
			darkTextColor = getColor(c.MainText),
		},
	})

	local gridTheme = {
		lineColor = BrickColor.new(Color3.new(1, 1, 1)),
	}

	local ikTheme = defineTheme({
		textColor = getColor(c.MainText),
		primaryTextColor = getColor(c.MainText, m.Selected),
		textSize = 15,
		lineColor = getColor(c.DimmedText),
		ikLineColor = Color3.fromRGB(182, 80, 203),
		transparency = 0.6,
		leafNodeImage = "rbxasset://textures/AnimationEditor/icon_hierarchy_end_white.png",
		expandImage = "rbxasset://textures/AnimationEditor/button_expand.png",
		collapseImage = "rbxasset://textures/AnimationEditor/button_collapse.png",
		pinImage = "rbxasset://textures/AnimationEditor/Pin.png",
		iconColor = getColor(c.DimmedText),
		iconHighlightColor = getColor(c.BrightText),
		selected = getColor(c.Item, m.Selected),
		headerColor = getColor(c.RibbonTab),
		headerBorder = getColor(c.RibbonTab),
		pinHover = getColor(c.DialogMainButton, m.Hover),
	}, {
		Dark = {
			lineColor = getColor(c.DimmedText),
			headerColor = getColor(c.MainBackground),
			headerBorder = getColor(c.InputFieldBorder),
		},
	})

	local PluginTheme = {
		font = Enum.Font.SourceSans,
		backgroundColor = getColor(c.MainBackground),
		borderColor = getColor(c.Border),

		playbackTheme = playbackTheme,
		dropdownTheme = dropdownTheme,
		trackTheme = trackTheme,
		keyframeTheme = keyframeTheme,
		eventMarker = eventMarker,
		selectionBox = getColor(c.DialogMainButton),
		zoomBarTheme = scrollBarTheme,
		scrollBarTheme = scrollBarTheme,
		timelineTheme = timelineTheme,
		scaleControlsTheme = scaleControlsTheme,
		textBox = textBoxTheme,
		settingsButtonTheme = settingsButtonTheme,
		dialogTheme = dialogTheme,
		toastTheme = toastTheme,
		startScreenTheme = startScreenTheme,
		gridTheme = gridTheme,
		ikTheme = ikTheme,
	}

	local UILibraryPalette = StudioStyle.new(getColor, c, m)

	local UILibraryOverrides = {
		button = {
			Default = {
				font = PluginTheme.font,
				backgroundColor = getColor(c.Button),
				hovered = {
					font = PluginTheme.font,
				},
			},

			Primary = {
				font = PluginTheme.font,
				borderColor = getColor(c.MainBackground),
				textColor = getColor(c.DialogMainButtonText),
				hovered = {
					font = PluginTheme.font,
					borderColor = getColor(c.MainBackground),
					textColor = getColor(c.DialogMainButtonText),
				},
			},

			MediaControl = {
				isRound = false,
				backgroundColor = getColor(c.MainBackground),
				borderColor = getColor(c.Border),

				hovered = {
					backgroundColor = getColor(c.Button, m.Hover),
					borderColor = getColor(c.Border),
				},
			},

			ActiveControl = {
				isRound = false,
				backgroundColor = getColor(c.DialogMainButton),
				borderColor = getColor(c.DialogMainButton),

				hovered = {
					backgroundColor = getColor(c.DialogMainButton, m.Hover),
					borderColor = getColor(c.DialogMainButton, m.Hover),
				},
			},

			IKDefault = {
				isRound = true,
				font = PluginTheme.font,
				backgroundColor = getColor(c.Button),
				borderColor = getColor(c.Border),
				hovered = {
					font = PluginTheme.font,
					backgroundColor = getColor(c.Button, m.Hover),
				},
			},

			IKActive = {
				isRound = true,
				font = PluginTheme.font,
				backgroundColor = getColor(c.Button, m.Pressed),
				borderColor = getColor(c.Border),
				hovered = {
					font = PluginTheme.font,
					backgroundColor = getColor(c.Button, m.Hover),
				},
			},
		},

		dialog = {
			backgroundColor = PluginTheme.backgroundColor,
		},

		radioButton = {
			font = PluginTheme.font,
			textSize = 15,
		},

		keyframe = {
			Default = {
				backgroundColor = getColor(c.DialogButtonText, m.Disabled),
				borderColor = getColor(c.DimmedText),

				selected = {
					backgroundColor = getColor(c.DialogButtonText, m.Disabled),
					borderColor = getColor(c.DialogMainButton),
				},
			},

			Primary = defineTheme({
				backgroundColor = getColor(c.Item),
				borderColor = getColor(c.Border),

				selected = {
					backgroundColor = getColor(c.Item),
					borderColor = getColor(c.DialogMainButton),
				},
			}, {
				Dark = {
					backgroundColor = getColor(c.MainText),
					selected = {
						backgroundColor = getColor(c.MainText),
						borderColor = getColor(c.DialogMainButton),
					},
				},
			}),

			Error = defineTheme({
				backgroundColor = lightKeyframeError,
				borderColor = lightKeyframeErrorBorder,

				selected = {
					backgroundColor = lightKeyframeError,
					borderColor = getColor(c.ScriptError),
				},
			}, {
				Dark = {
					backgroundColor = getColor(c.DimmedText),
					borderColor = getColor(c.ErrorText),
					selected = {
						backgroundColor = getColor(c.SubText, m.Disabled),
						borderColor = getColor(c.ScriptError),
					},
				},
			}),

			PrimaryError = defineTheme({
				backgroundColor = lightKeyframeError,
				borderColor = lightKeyframeErrorBorder,

				selected = {
					backgroundColor = lightKeyframeError,
					borderColor = getColor(c.ScriptError),
				},
			}, {
				Dark = {
					backgroundColor = getColor(c.MainText),
					borderColor = getColor(c.ErrorText),
					selected = {
						backgroundColor = getColor(c.MainText),
						borderColor = getColor(c.ScriptError),
					},
				},
			}),

			Bounce = {
				backgroundColor = Color3.fromRGB(155, 198, 204),
				borderColor = easingStyleBorder,

				selected = {
					backgroundColor = Color3.fromRGB(155, 198, 204),
					borderColor = getColor(c.DialogMainButton),
				},
			},

			Constant = {
				backgroundColor = Color3.fromRGB(156, 147, 226),
				borderColor = easingStyleBorder,

				selected = {
					backgroundColor = Color3.fromRGB(156, 147, 226),
					borderColor = getColor(c.DialogMainButton),
				},
			},

			Cubic = {
				backgroundColor = Color3.fromRGB(254, 189, 81),
				borderColor = easingStyleBorder,

				selected = {
					backgroundColor = Color3.fromRGB(254, 189, 81),
					borderColor = getColor(c.DialogMainButton),
				},
			},

			Elastic = {
				backgroundColor = Color3.fromRGB(137, 187, 77),
				borderColor = easingStyleBorder,

				selected = {
					backgroundColor = Color3.fromRGB(137, 187, 77),
					borderColor = getColor(c.DialogMainButton),
				},
			},
		},

		scrubber = {
			backgroundColor = getColor(c.DialogMainButton),
			image = "rbxasset://textures/AnimationEditor/img_scrubberhead.png",
		},

		tooltip = {
			font = Enum.Font.SourceSans,
			textSize = 15,
		},

		treeView = {
			elementPadding = 0,
		}
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryPalette = UILibraryPalette,
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
