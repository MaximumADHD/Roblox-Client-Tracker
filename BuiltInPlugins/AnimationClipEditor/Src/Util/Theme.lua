local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local StyleKey = Style.StyleKey
local Colors = Style.Colors
local UI = Framework.UI
local Decoration = UI.Decoration
local LightTheme = Style.Themes.LightTheme
local DarkTheme = Style.Themes.DarkTheme
local getRawComponentStyle = Style.getRawComponentStyle
local ui = Style.ComponentSymbols

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagFaceControlsEditorUXImprovements = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUXImprovements)

local Dash = Framework.Dash
local join = Dash.join

-- Add new entries to both themes
local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
	[StyleKey.DialogButtonTextDisabled] = Color3.fromRGB(184, 184, 184),
	-- Track
	[StyleKey.TrackShadedBackgroundColor] = Color3.fromRGB(243, 243, 243),
	[StyleKey.TrackTitleBackgroundColor] = Color3.fromRGB(227, 227, 227),
	[StyleKey.TrackPrimaryBackgroundColor] = Color3.fromRGB(243, 243, 243),
	[StyleKey.TrackButtonColor] = Color3.fromRGB(136, 136, 136),
	[StyleKey.TrackHoveredButtonColor] = Colors.Blue,
	[StyleKey.TrackAddButtonColor] = Colors.Gray_Light,
	[StyleKey.TrackHoveredAddButtonColor] = Colors.Blue,
	[StyleKey.TrackPlusIconColor] = Color3.fromRGB(82, 82, 82),
	-- Timeline
	[StyleKey.TimelineDimmedColor] = Colors.Gray_Light,
	[StyleKey.TimelineBackgroundColor] = Color3.fromRGB(243, 243, 243),
	-- Keyframe
	[StyleKey.KeyframePrimaryClusterColor] = Color3.fromRGB(136, 136, 136),
	-- EventMarker
	[StyleKey.EventMarkerImageColor] = Color3.fromRGB(184, 184, 184),
	[StyleKey.EventMarkerBorderColor] = Color3.fromRGB(136, 136, 136),
	-- ScrollBar
	[StyleKey.ScrollBarControl] = Colors.White,
	[StyleKey.ScrollBarHover] = Color3.fromRGB(231, 240, 250),
	[StyleKey.ScrollBarPressed] = Color3.fromRGB(224, 224, 224),
	-- StartScreen
	[StyleKey.StartScreenDarkTextColor] = Colors.White,
	-- IK
	[StyleKey.IKHeaderColor] = Color3.fromRGB(243, 243, 243),
	[StyleKey.IKHeaderBorder] = Color3.fromRGB(243, 243, 243),
	-- Keyframes
	[StyleKey.KeyframePrimaryBackgroundColor] = Colors.White,
	[StyleKey.KeyframePrimaryBackgroundColorSelected] = Colors.White,
	[StyleKey.KeyframeErrorBackgroundColor] = Color3.fromRGB(255, 161, 161),
	[StyleKey.KeyframeErrorBorderColor] = Color3.fromRGB(168, 132, 132),
	[StyleKey.KeyframeErrorBackgroundColorSelected] = Color3.fromRGB(255, 161, 161),
	[StyleKey.KeyframeErrorBorderColorSelected] = Colors.Red,
	[StyleKey.KeyframePrimaryErrorBackgroundColor] = Color3.fromRGB(255, 161, 161),
	[StyleKey.KeyframePrimaryErrorBorderColor] = Color3.fromRGB(168, 132, 132),
	[StyleKey.KeyframePrimaryErrorBackgroundColorSelected] = Color3.fromRGB(255, 161, 161),
	[StyleKey.KeyframePrimaryErrorBorderColorSelected] = Colors.Red,
	-- Curves
	[StyleKey.CurvePositionX] = Color3.fromRGB(255, 0, 0),
	[StyleKey.CurvePositionY] = Color3.fromRGB(3, 201, 3),
	[StyleKey.CurvePositionZ] = Color3.fromRGB(0, 0, 255),
	[StyleKey.CurveRotationX] = Color3.fromRGB(47, 128, 123),
	[StyleKey.CurveRotationY] = Color3.fromRGB(255, 0, 255),
	[StyleKey.CurveRotationZ] = Color3.fromRGB(255, 165, 0),
	[StyleKey.CurveEditorButton] = "rbxasset://textures/AnimationEditor/Button_Curve_Lightmode.png",
	[StyleKey.DopeSheetButton] = "rbxasset://textures/AnimationEditor/Button_Dopesheet_Lightmode.png",
	-- Face Capture
	[StyleKey.StopRecordingButtonImage] = "rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton_lightTheme.png",
	[StyleKey.FaceCaptureDefaultButtonIconColor] = Color3.fromRGB(82, 82, 82),
})

local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
	[StyleKey.DialogButtonTextDisabled] = Color3.fromRGB(92, 92, 92),
	-- Track
	[StyleKey.TrackShadedBackgroundColor] = Color3.fromRGB(54, 54, 54),
	[StyleKey.TrackTitleBackgroundColor] = Color3.fromRGB(54, 54, 54),
	[StyleKey.TrackPrimaryBackgroundColor] = Color3.fromRGB(37, 37, 37),
	[StyleKey.TrackButtonColor] = Colors.Gray_Light,
	[StyleKey.TrackHoveredButtonColor] = Colors.White,
	[StyleKey.TrackAddButtonColor] = Colors.Gray,
	[StyleKey.TrackHoveredAddButtonColor] = Colors.lighter(Colors.Gray, 0.26),
	[StyleKey.TrackPlusIconColor] = Colors.Gray_Light,
	-- Timeline
	[StyleKey.TimelineDimmedColor] = Color3.fromRGB(102, 102, 102),
	[StyleKey.TimelineBackgroundColor] = Color3.fromRGB(56, 56, 56),
	-- Keyframe
	[StyleKey.KeyframePrimaryClusterColor] = Color3.fromRGB(170, 170, 170),
	-- EventMarker
	[StyleKey.EventMarkerImageColor] = Colors.Gray_Light,
	[StyleKey.EventMarkerBorderColor] = Colors.White,
	-- ScrollBar
	[StyleKey.ScrollBarControl] = Color3.fromRGB(64, 64, 64),
	[StyleKey.ScrollBarHover] = Color3.fromRGB(80, 80, 80),
	[StyleKey.ScrollBarPressed] = Color3.fromRGB(80, 80, 80),
	-- StartScreen
	[StyleKey.StartScreenDarkTextColor] = Colors.Gray_Light,
	-- IK
	[StyleKey.IKHeaderColor] = Colors.Slate,
	[StyleKey.IKHeaderBorder] = Color3.fromRGB(26, 26, 26),
	-- Keyframes
	[StyleKey.KeyframePrimaryBackgroundColor] = Colors.Gray_Light,
	[StyleKey.KeyframePrimaryBackgroundColorSelected] = Colors.Gray_Light,
	[StyleKey.KeyframeErrorBackgroundColor] = Colors.lighter(Colors.Black, 0.4),
	[StyleKey.KeyframeErrorBorderColor] = Color3.fromRGB(255, 68, 68),
	[StyleKey.KeyframeErrorBackgroundColorSelected] = Color3.fromRGB(170, 170, 170),
	[StyleKey.KeyframeErrorBorderColorSelected] = Color3.fromRGB(255, 68, 68),
	[StyleKey.KeyframePrimaryErrorBackgroundColor] = Colors.Gray_Light,
	[StyleKey.KeyframePrimaryErrorBorderColor] = Color3.fromRGB(255, 68, 68),
	[StyleKey.KeyframePrimaryErrorBackgroundColorSelected] = Colors.Gray_Light,
	[StyleKey.KeyframePrimaryErrorBorderColorSelected] = Color3.fromRGB(255, 68, 68),
	-- Curves
	[StyleKey.CurvePositionX] = Color3.fromRGB(255, 0, 0),
	[StyleKey.CurvePositionY] = Color3.fromRGB(3, 201, 3),
	[StyleKey.CurvePositionZ] = Color3.fromRGB(0, 0, 255),
	[StyleKey.CurveRotationX] = Color3.fromRGB(47, 128, 123),
	[StyleKey.CurveRotationY] = Color3.fromRGB(255, 0, 255),
	[StyleKey.CurveRotationZ] = Color3.fromRGB(255, 165, 0),
	[StyleKey.CurveEditorButton] = "rbxasset://textures/AnimationEditor/Button_Curve_Darkmode.png",
	[StyleKey.DopeSheetButton] = "rbxasset://textures/AnimationEditor/Button_Dopesheet_Darkmode.png",
	-- Face Capture
	[StyleKey.StopRecordingButtonImage] = "rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton.png",
	[StyleKey.FaceCaptureDefaultButtonIconColor] = Color3.fromRGB(255, 255, 255),
})

local playbackTheme = {
	autokeyOn = "",
	autokeyOff = "",
	skipBackward = "rbxasset://textures/AnimationEditor/button_control_previous.png",
	skipForward = "rbxasset://textures/AnimationEditor/button_control_next.png",
	play = "rbxasset://textures/AnimationEditor/button_control_play.png",
	pause = "rbxasset://textures/AnimationEditor/button_pause_white@2x.png",
	loop = "rbxasset://textures/AnimationEditor/button_loop.png",
	reverse = "rbxasset://textures/AnimationEditor/button_control_reverseplay.png",
	goToFirstFrame = "rbxasset://textures/AnimationEditor/button_control_firstframe.png",
	goToLastFrame = "rbxasset://textures/AnimationEditor/button_control_lastframe.png",
	selectClipDropdownIcon = "rbxasset://textures/AnimationEditor/btn_expand.png",
	iconColor = StyleKey.MainText,
	iconHighlightColor = StyleKey.DialogMainButtonText,
	timeInputBackground = StyleKey.InputFieldBackground,
	borderColor = StyleKey.Border,
	inputBorderColor = StyleKey.InputFieldBorder,
}

local dropdownTheme = {
	itemColor = StyleKey.Item,
	hoveredItemColor = StyleKey.ItemHovered,
	textColor = StyleKey.MainText,
	itemHeight = 22,
	textSize = 15,
}

local trackTheme = {
	backgroundColor = StyleKey.MainBackground,
	shadedBackgroundColor = StyleKey.TrackShadedBackgroundColor,
	titleBackgroundColor = StyleKey.TrackTitleBackgroundColor,
	selectedBackgroundColor = StyleKey.ItemSelected,
	primaryBackgroundColor = StyleKey.TrackPrimaryBackgroundColor,

	textColor = StyleKey.MainText,
	primaryTextColor = StyleKey.BrightText,
	selectedTextColor = StyleKey.MainTextSelected,
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

	buttonColor = StyleKey.TrackButtonColor,
	hoveredButtonColor = StyleKey.TrackHoveredButtonColor,
	addButtonColor = StyleKey.TrackAddButtonColor,
	hoveredAddButtonColor = StyleKey.TrackHoveredAddButtonColor,
	plusIconColor = StyleKey.TrackPlusIconColor,
	hoveredPlusIconColor = StyleKey.DialogMainButtonText,
}

local scaleControlsTheme = {
	mainColor = StyleKey.DialogMainButton,
	textColor = StyleKey.DialogMainButtonText,
	textSize = 15,
}

local textBoxTheme = {
	textSize = 16,
	textColor = StyleKey.MainText,
	backgroundColor = StyleKey.InputFieldBackground,
	errorBorder = StyleKey.ErrorText,
	focusedBorder = StyleKey.DialogMainButton,
	defaultBorder = StyleKey.Border,
}

local settingsButtonTheme = {
	image = "rbxasset://textures/AnimationEditor/btn_manage.png",
	imageColor = StyleKey.MainText
}

local keyframeTheme = {
	clusterColor = StyleKey.DialogButtonTextDisabled,
	primaryClusterColor = StyleKey.KeyframePrimaryClusterColor,
}

local checkBoxTheme = {
	backgroundColor = Color3.fromRGB(182, 182, 182),
	titleColor = StyleKey.MainText,

	-- Previously this used Arial
	-- The whole plugin should use SourceSans
	-- But currently uses Legacy
	-- For now, keep this consistent and fix later with the rest of the plugin
	font = Enum.Font.Legacy,
	textSize = 8,

	backgroundImage = "rbxasset://textures/GameSettings/UncheckedBox.png",
	selectedImage = "rbxasset://textures/GameSettings/CheckedBoxLight.png",
}



local faceSliderBarHeight  = 1
local faceSliderBarSliceCenter = Rect.new(3, 0, 4, 6)
local faceSliderHandleSize = 6
if GetFFlagFaceControlsEditorUXImprovements() then faceSliderHandleSize = 6.5 end
local faceSliderLargeHandleSize = 9
local faceSliderKnobColor = Colors.White

local knobStyle = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Color = faceSliderKnobColor,
	Image = StyleKey.SliderKnobImage,
	Size = UDim2.new(0, faceSliderHandleSize, 0, faceSliderHandleSize),
	[StyleModifier.Disabled] = {
		Color = StyleKey.Button,
	},
}

local knobMaxValueStyle = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Color = faceSliderKnobColor,
	Image = StyleKey.SliderKnobImage,
	Size = UDim2.new(0, faceSliderLargeHandleSize, 0, faceSliderLargeHandleSize),
	[StyleModifier.Disabled] = {
		Color = StyleKey.Button,
	},
}

local faceSliderTheme = {
		KnobSize = Vector2.new(18, 18),
		Background = Decoration.Image,
		BackgroundStyle = {
			AnchorPoint = Vector2.new(0, 0.5),
			Color = Color3.fromRGB(87, 87, 87),
			Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
			Position = UDim2.new(0, 0, 0.5, 0),
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
			SliceCenter = faceSliderBarSliceCenter,
		},
		Foreground = Decoration.Image,
		ForegroundStyle = {
			AnchorPoint = Vector2.new(0, 0.5),
			Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
			Color = StyleKey.DialogMainButton,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
			SliceCenter = faceSliderBarSliceCenter,
			[StyleModifier.Disabled] = {
				Color = StyleKey.Button,
			},
		},
		LowerKnobBackground = Decoration.Image,
		LowerKnobBackgroundStyle = knobStyle,
		UpperKnobBackground = Decoration.Image,
		UpperKnobBackgroundStyle = knobStyle,
}

local faceSliderMaxValueTheme = {
	KnobSize = Vector2.new(18, 18),
	Background = Decoration.Image,
	BackgroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Color = Color3.fromRGB(87, 87, 87),
		Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
		Position = UDim2.new(0, 0, 0.5, 0),
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
		SliceCenter = faceSliderBarSliceCenter,
	},
	Foreground = Decoration.Image,
	ForegroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
		Color = StyleKey.DialogMainButton,
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
		SliceCenter = faceSliderBarSliceCenter,
		[StyleModifier.Disabled] = {
			Color = StyleKey.Button,
		},
	},
	LowerKnobBackground = Decoration.Image,
	LowerKnobBackgroundStyle = knobMaxValueStyle,
	UpperKnobBackground = Decoration.Image,
	UpperKnobBackgroundStyle = knobMaxValueStyle,
}

local faceDragBoxTheme = {
	KnobSize = Vector2.new(18, 18),
	Background = Decoration.Image,
	BackgroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Color = Color3.fromRGB(87, 87, 87),
		Position = UDim2.new(0, 0, 0.5, 0),
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0)),
		SliceCenter = faceSliderBarSliceCenter,
		BackgroundTransparency = 1,
		ImageTransparency = 1,
	},
	ForegroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
		Color = StyleKey.DialogMainButton,
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
		SliceCenter = faceSliderBarSliceCenter,
		[StyleModifier.Disabled] = {
			Color = StyleKey.Button,
		},
	},
	OutlineStyle = {
		Color = Color3.fromRGB(87, 87, 87),
	},
	KnobBackground = Decoration.Image,
	KnobBackgroundStyle = knobStyle,
}

local faceDragBoxMaxValueTheme = {
	KnobSize = Vector2.new(18, 18),
	Background = Decoration.Image,
	BackgroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Color = Color3.fromRGB(87, 87, 87),
		Position = UDim2.new(0, 0, 0.5, 0),
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0)),
		SliceCenter = faceSliderBarSliceCenter,
		BackgroundTransparency = 1,
		ImageTransparency = 1,
	},
	ForegroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Image = "rbxasset://textures/DeveloperFramework/slider_bg.png",
		Color = StyleKey.DialogMainButton,
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(0, faceSliderBarHeight)),
		SliceCenter = faceSliderBarSliceCenter,
		[StyleModifier.Disabled] = {
			Color = StyleKey.Button,
		},
	},
	OutlineStyle = {
		Color = Color3.fromRGB(87, 87, 87),
	},
	KnobBackground = Decoration.Image,
	KnobBackgroundStyle = knobMaxValueStyle,
}

-- Rest of the values come from UILibrary createTheme.lua and StudioStyle.lua
local roundFrameTheme = {
	slice = Rect.new(3, 3, 13, 13),
	backgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
	borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
}

local buttonTheme = {
	-- Defining a new button style that uses images
	MediaControl = {
		Background = Decoration.Box,
		BackgroundStyle = {
			Color = StyleKey.MainBackground,
			BorderColor =  StyleKey.Border,
			BorderSize = 1,
		},
		[StyleModifier.Hover] = {
			BackgroundStyle = {
				Color = StyleKey.ButtonHover,
				BorderColor = StyleKey.Border,
				BorderSize = 1,
			},
		},
	},

	ActiveControl = {
		Background = Decoration.Box,
		BackgroundStyle = {
			Color = StyleKey.DialogMainButton,
			BorderColor =  StyleKey.DialogMainButton,
			BorderSize = 1,
		},
		[StyleModifier.Hover] = {
			BackgroundStyle = {
				Color = StyleKey.DialogMainButtonHover,
				BorderColor = StyleKey.DialogMainButtonHover,
				BorderSize = 1,
			},
		},
	},

	IKDefault = {
		Background = Decoration.RoundBox,
	},

	IKActive = {
		Background = Decoration.RoundBox,
	},

	FaceControlsEditorActive = {
		Background = Decoration.RoundBox,
	},

	FaceControlsEditorDefault = {
		Background = Decoration.RoundBox,
	}
}

local frameworkButton = getRawComponentStyle("Button")
local button = join(frameworkButton, {
	["&ACEHeaderButtonDefault"] = join(frameworkButton["&Round"], {
		Background = Decoration.RoundBox,
	}),
	["&ACEHeaderButtonActive"] = join(frameworkButton["&RoundPrimary"], {
	}),
})

local eventMarker = {
	imageColor = StyleKey.EventMarkerImageColor,
	borderColor = StyleKey.EventMarkerBorderColor,
	selectionBorderColor = StyleKey.DialogMainButton,
	mainImage = "rbxasset://textures/AnimationEditor/eventMarker_inner.png",
	borderImage = "rbxasset://textures/AnimationEditor/eventMarker_border.png",
	selectionBorderImage = "rbxasset://textures/AnimationEditor/eventMarker_border_selected.png",
	textSize = 15,
}

local scrollBarTheme = {
	controlImage = "rbxasset://textures/AnimationEditor/button_zoom.png",
	arrowImage = "rbxasset://textures/AnimationEditor/img_triangle.png",
	imageColor = StyleKey.MainText,
	controlColor = StyleKey.ScrollBarControl,
	hoverColor = StyleKey.ScrollBarHover,
	pressedColor = StyleKey.ScrollBarPressed,
	backgroundColor = StyleKey.ScrollBarBackground,
	borderColor = StyleKey.InputFieldBorder,
	borderSize = 1,
}

local timelineTheme = {
	lineColor = StyleKey.DimmedText,
	textColor = StyleKey.DimmedText,
	dimmedColor = StyleKey.TimelineDimmedColor,
	barColor = StyleKey.MainBackground,
	backgroundColor = StyleKey.TimelineBackgroundColor,
	lowerTransparency = 0.85,
	lowerBrightTransparency = 0.7,
	textSize = 15,
}

local dialogTheme = {
	textSize = 16,
	subTextSize = 15,
	headerFont = Enum.Font.SourceSansSemibold,
	textColor = StyleKey.MainText,
	subTextColor = StyleKey.DimmedText,
	errorTextColor = StyleKey.ErrorText,
	deleteImage = "rbxasset://textures/AnimationEditor/icon_close.png",
	addImage = "rbxasset://textures/AnimationEditor/icon_add.png",
	errorImage = "rbxasset://textures/AnimationEditor/icon_error.png",
}

local toastTheme = {
	textSize = 16,
	textColor = StyleKey.MainText,
	shadowTransparency = 0.75,
	shadowColor = Color3.new(),
	shadowSize = 35,
}

local startScreenTheme = {
	textSize = 16,
	textColor = StyleKey.MainText,
	darkTextColor = StyleKey.StartScreenDarkTextColor,
}

local gridTheme = {
	lineColor = BrickColor.new(Color3.new(1, 1, 1)),
}

local ikTheme = {
	textColor = StyleKey.MainText,
	primaryTextColor = StyleKey.MainTextSelected,
	textSize = 15,
	lineColor = StyleKey.DimmedText,
	ikLineColor = Color3.fromRGB(182, 80, 203),
	transparency = 0.6,
	leafNodeImage = "rbxasset://textures/AnimationEditor/icon_hierarchy_end_white.png",
	expandImage = "rbxasset://textures/AnimationEditor/button_expand.png",
	collapseImage = "rbxasset://textures/AnimationEditor/button_collapse.png",
	pinImage = "rbxasset://textures/AnimationEditor/Pin.png",
	iconColor = StyleKey.DimmedText,
	iconHighlightColor = StyleKey.BrightText,
	selected = StyleKey.ItemSelected,
	headerColor = StyleKey.IKHeaderColor,
	headerBorder = StyleKey.IKHeaderBorder,
	pinHover = StyleKey.DialogMainButtonHover,
}

-- These are used to draw the dopesheet keyframes
-- TODO: Rename and/or move to keyframeTheme
local keyframe = {
	Default = {
		backgroundColor = StyleKey.DialogButtonTextDisabled,
		borderColor = StyleKey.DimmedText,

		selected = {
			backgroundColor = StyleKey.DialogButtonTextDisabled,
			borderColor = StyleKey.DialogMainButton,
		},
	},

	Primary = {
		backgroundColor = StyleKey.KeyframePrimaryBackgroundColor,
		borderColor = StyleKey.Border,

		selected = {
			backgroundColor = StyleKey.KeyframePrimaryBackgroundColorSelected,
			borderColor = Colors.Blue,
		},
	},

	Error = {
		backgroundColor = StyleKey.KeyframeErrorBackgroundColor,
		borderColor = StyleKey.KeyframeErrorBorderColor,

		selected = {
			backgroundColor = StyleKey.KeyframeErrorBackgroundColorSelected,
			borderColor = StyleKey.KeyframeErrorBorderColorSelected,
		},
	},

	PrimaryError = {
		backgroundColor = StyleKey.KeyframePrimaryErrorBackgroundColor,
		borderColor = StyleKey.KeyframePrimaryErrorBorderColor,

		selected = {
			backgroundColor = StyleKey.KeyframePrimaryErrorBackgroundColorSelected,
			borderColor = StyleKey.KeyframePrimaryErrorBorderColorSelected,
		},
	},

	Bounce = {
		backgroundColor = Color3.fromRGB(155, 198, 204),
		borderColor = Color3.fromRGB(56, 56, 56),

		selected = {
			backgroundColor = Color3.fromRGB(155, 198, 204),
			borderColor = StyleKey.DialogMainButton,
		},
	},

	Constant = {
		backgroundColor = Color3.fromRGB(156, 147, 226),
		borderColor = Color3.fromRGB(56, 56, 56),

		selected = {
			backgroundColor = Color3.fromRGB(156, 147, 226),
			borderColor = StyleKey.DialogMainButton,
		},
	},

	Cubic = {
		backgroundColor = Color3.fromRGB(254, 189, 81),
		borderColor = Color3.fromRGB(56, 56, 56),

		selected = {
			backgroundColor = Color3.fromRGB(254, 189, 81),
			borderColor = StyleKey.DialogMainButton,
		},
	},

	Elastic = {
		backgroundColor = Color3.fromRGB(137, 187, 77),
		borderColor = Color3.fromRGB(56, 56, 56),

		selected = {
			backgroundColor = Color3.fromRGB(137, 187, 77),
			borderColor = StyleKey.DialogMainButton,
		},
	},
}

local curveTheme = {
	default = StyleKey.MainText,
	positionX = StyleKey.CurvePositionX,
	positionY = StyleKey.CurvePositionY,
	positionZ = StyleKey.CurvePositionZ,
	rotationX = StyleKey.CurveRotationX,
	rotationY = StyleKey.CurveRotationY,
	rotationZ = StyleKey.CurveRotationZ,
	selected = StyleKey.DialogMainButton,
	xAxis = StyleKey.BrightText,
	curveEditorButton = StyleKey.CurveEditorButton,
	dopesheetButton = StyleKey.DopeSheetButton,
	tangentControlColor = StyleKey.BrightText,
	tangentAutoButton = "rbxasset://textures/AnimationEditor/TangentHandle_Automatic_9x9.png",
	tangentDefinedButton = "rbxasset://textures/AnimationEditor/TangentHandle_SelfDefined_9x9.png",
}

local faceCaptureTheme = {
	faceCaptureDefaultButtonIconColor = StyleKey.FaceCaptureDefaultButtonIconColor,
	stopRecordingButtonImage = StyleKey.StopRecordingButtonImage,
	errorIcon = "rbxasset://textures/AnimationEditor/icon_error.png",
	warningIcon = "rbxasset://textures/AnimationEditor/icon_warning.png",
}

local scrubberTheme = {
	backgroundColor = StyleKey.DialogMainButton,
	image = "rbxasset://textures/AnimationEditor/img_scrubberhead.png",
}

local progressBarTheme = {
	backgroundColor = Colors.Blue,
}

local radioButtons = {
	font = Enum.Font.SourceSans,
	textColor = StyleKey.MainText,
	textSize = 15,
	buttonHeight = 20,
	radioButtonBackground = "rbxasset://textures/GameSettings/RadioButton.png",
	radioButtonSelected = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
	contentPadding = 16,
	buttonPadding = 6,
}

local PluginTheme = {
	font = Enum.Font.SourceSans,
	backgroundColor = StyleKey.MainBackground,
	borderColor = StyleKey.Border,

	playbackTheme = playbackTheme,
	dropdownTheme = dropdownTheme,
	trackTheme = trackTheme,
	keyframeTheme = keyframeTheme,
	eventMarker = eventMarker,
	selectionBox = StyleKey.DialogMainButton,
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
	checkBox = checkBoxTheme,
	faceSliderTheme = faceSliderTheme,
	faceSliderMaxValueTheme = faceSliderMaxValueTheme,
	faceDragBoxTheme = faceDragBoxTheme,
	faceDragBoxMaxValueTheme = faceDragBoxMaxValueTheme,
	roundFrame = roundFrameTheme,
	button = buttonTheme,
	keyframe = keyframe,
	scrubberTheme = scrubberTheme,
	faceCaptureTheme = faceCaptureTheme,
	curveTheme = curveTheme,
	progressBarTheme = progressBarTheme,
	[ui.Button] = button,
	radioButton = radioButtons,
}

--TODO remobe with FFlagExtendPluginTheme
local UILibraryOverrides = {
	radioButton = {
		font = PluginTheme.font,
		textColor = StyleKey.MainText,
		textSize = 15,
		buttonHeight = 20,
		radioButtonBackground = "rbxasset://textures/GameSettings/RadioButton.png",
		radioButtonSelected = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
		contentPadding = 16,
		buttonPadding = 6,
	},
}

return function(createMock: boolean?)
	if GetFFlagExtendPluginTheme() then
		local baseTheme = if createMock then StudioTheme.mock(overridedDarkTheme, overridedLightTheme) else StudioTheme.new(overridedDarkTheme, overridedLightTheme)
		local theme = baseTheme:extend(PluginTheme)
		return theme
	else
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock(overridedDarkTheme)
		else
			styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
		end

		return styleRoot:extend({
			PluginTheme = PluginTheme,
			UILibraryOverrides = UILibraryOverrides,
		})
	end
end
