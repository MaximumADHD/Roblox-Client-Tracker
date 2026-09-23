local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local InputSize = require(Foundation.Enums.InputSize)
local Knob = require(Foundation.Components.Knob)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Slider = require(Foundation.Components.Slider)
local SliderVariant = require(Foundation.Enums.SliderVariant)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Toggle = require(Foundation.Components.Toggle)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Visibility = require(Foundation.Enums.Visibility)
local useTokens = require(Foundation.Providers.Style.useTokens)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local LabeledCell = StorySection.LabeledCell
local Section = StorySection.Section

type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant
type ColorStyleValue = Types.ColorStyleValue
type Tokens = Tokens.Tokens

local CELL_COLUMN_WIDTH = 56
local QUALIFIED_HEADER_COLUMN_WIDTH = 96
local HOST_SLIDER_WIDTH = 160
local NONE = "None"
local DEFAULT = "Default"
local EMPHASIS = "Emphasis"
local PLAYGROUND_ICON_NONE = ""
local PLAYGROUND_ICON_DEFAULT = IconName.Check

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLAYGROUND_SIZE_OPTIONS: { InputSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Large,
}

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local STYLE_PRESET_OPTIONS = { DEFAULT, NONE }
local STROKE_PRESET_OPTIONS = { NONE, EMPHASIS }

-- A hue where a saturated fill and the track underneath it are the same color.
local INITIAL_HUE = 0.15

--selene: allow(roblox_internal_custom_color)
local HUE_GRADIENT = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(1 / 6, Color3.new(1, 1, 0)),
	ColorSequenceKeypoint.new(2 / 6, Color3.new(0, 1, 0)),
	ColorSequenceKeypoint.new(3 / 6, Color3.new(0, 1, 1)),
	ColorSequenceKeypoint.new(4 / 6, Color3.new(0, 0, 1)),
	ColorSequenceKeypoint.new(5 / 6, Color3.new(1, 0, 1)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)),
})

local STROKE_PRESET_HEADERS = Dash.map(STROKE_PRESET_OPTIONS, function(value): string
	return `stroke: {value}`
end)

local function noop() end

local function styleFromPreset(tokens: Tokens, stylePreset: string): Types.ColorStyle?
	return if stylePreset == NONE then tokens.Color.None else nil
end

local function strokeFromPreset(tokens: Tokens, strokePreset: string): Types.Stroke?
	return if strokePreset == EMPHASIS
		then {
			Color = tokens.Color.Content.Emphasis.Color3,
			Thickness = tokens.Stroke.Thicker,
			Transparency = tokens.Color.Content.Emphasis.Transparency,
		}
		else nil
end

local function PlaygroundStory(props: {
	controls: {
		size: InputSize,
		hasShadow: boolean,
		isDisabled: boolean,
		icon: string,
		stylePreset: string,
		strokePreset: string,
	},
}): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()
	local iconName = StoryIcons.parseIconControl(controls.icon)

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
	}, {
		Knob = React.createElement(Knob, {
			size = controls.size,
			hasShadow = controls.hasShadow,
			isDisabled = controls.isDisabled,
			icon = if iconName
				then {
					name = iconName,
					variant = IconVariant.Regular,
				}
				else nil,
			style = styleFromPreset(tokens, controls.stylePreset),
			stroke = strokeFromPreset(tokens, controls.strokePreset),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(Knob, {
								size = size,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = { "Enabled", "Disabled" },
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = {
						React.createElement(Knob, {}),
						React.createElement(Knob, {
							isDisabled = true,
						}),
					},
				},
			},
		}),
	})
end

local function ContentStory(): React.ReactNode
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		FillAndOutline = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Fill and outline",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = 72,
				columnHeaders = STROKE_PRESET_HEADERS,
				cellColumnWidth = QUALIFIED_HEADER_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = Dash.map(STYLE_PRESET_OPTIONS, function(stylePreset)
					return {
						label = matrixLabel(`style: {stylePreset}`),
						cells = Dash.map(STROKE_PRESET_OPTIONS, function(strokePreset)
							return React.createElement(Knob, {
								style = styleFromPreset(tokens, stylePreset),
								stroke = strokeFromPreset(tokens, strokePreset),
							})
						end),
					}
				end),
			}),
		}),
	})
end

local function InverseSurfaceCell(): React.ReactNode
	local tokens = useTokens()
	local presentationValue = React.useMemo(function()
		return { colorNamespace = ColorNamespace.Inverse }
	end, {})

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-medium radius-medium",
		backgroundStyle = tokens.Inverse.Surface.Surface_100,
	}, {
		Knob = React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			React.createElement(Knob, {})
		),
	})
end

local function hueFillStyle(hue: number): ColorStyleValue
	--selene: allow(roblox_internal_custom_color)
	return { Color3 = Color3.fromHSV(hue, 1, 1), Transparency = 0 }
end

local function HueSliderCell(props: {
	LayoutOrder: number,
	label: string,
	hue: React.Binding<number>,
	onHueChanged: (number) -> (),
	hasStroke: boolean,
}): React.ReactNode
	local tokens = useTokens()

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Frame = React.createElement(View, {
			tag = "auto-y",
			Size = UDim2.fromOffset(HOST_SLIDER_WIDTH, 0),
			LayoutOrder = 1,
		}, {
			Track = React.createElement(View, {
				tag = "row align-y-center size-full-300 stroke-standard stroke-emphasis radius-circle",
				backgroundStyle = tokens.Color.Extended.White.White_100,
			}, {
				Gradient = React.createElement("UIGradient", {
					Color = HUE_GRADIENT,
				}),
				Slider = React.createElement(Slider, {
					LayoutOrder = 1,
					value = props.hue,
					onValueChanged = props.onHueChanged,
					variant = SliderVariant.Utility,
					isContained = true,
					knobVisibility = Visibility.Always,
					knob = React.createElement(Knob, {
						size = InputSize.Small,
						style = props.hue:map(hueFillStyle),
						stroke = if props.hasStroke
							then {
								Color = tokens.Color.System.Contrast.Color3,
								Thickness = tokens.Stroke.Thicker,
								Transparency = tokens.Color.System.Contrast.Transparency,
							}
							else nil,
					}),
				}),
			}),
		}),
	})
end

local function ColorSliderSection(props: { LayoutOrder: number }): React.ReactNode
	local hue, setHue = React.useBinding(INITIAL_HUE)

	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = "In color slider",
		contentTag = "row gap-large align-y-top auto-xy wrap",
	}, {
		WithoutStroke = React.createElement(HueSliderCell, {
			LayoutOrder = 1,
			label = `stroke: {NONE}`,
			hue = hue,
			onHueChanged = setHue,
			hasStroke = false,
		}),
		WithStroke = React.createElement(HueSliderCell, {
			LayoutOrder = 2,
			label = "stroke: Contrast",
			hue = hue,
			onHueChanged = setHue,
			hasStroke = true,
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Inverse = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Inverse",
			contentTag = "auto-xy",
		}, {
			Knob = React.createElement(InverseSurfaceCell, {}),
		}),
		InSlider = React.createElement(Section, {
			LayoutOrder = 2,
			name = "In Slider",
			contentTag = "auto-xy",
		}, {
			Slider = React.createElement(Slider, {
				value = 0.5,
				width = UDim.new(0, HOST_SLIDER_WIDTH),
				knobVisibility = Visibility.Always,
			}),
		}),
		ColorSlider = React.createElement(ColorSliderSection, {
			LayoutOrder = 3,
		}),
		InToggle = React.createElement(Section, {
			LayoutOrder = 4,
			name = "In Toggle",
		}, {
			Off = React.createElement(Toggle, {
				label = "",
				isChecked = false,
				onActivated = noop,
				LayoutOrder = 1,
			}),
			On = React.createElement(Toggle, {
				label = "",
				isChecked = true,
				onActivated = noop,
				LayoutOrder = 2,
			}),
		}),
	})
end

return {
	summary = "Knob is the circular handle composed into Slider, Toggle, and ColorPicker.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
		{ name = "States", story = StatesStory },
		{ name = "Content", story = ContentStory },
		{ name = "In context", story = InContextStory },
	},
	controls = {
		size = PLAYGROUND_SIZE_OPTIONS,
		hasShadow = true,
		isDisabled = false,
		icon = { PLAYGROUND_ICON_NONE, PLAYGROUND_ICON_DEFAULT },
		stylePreset = STYLE_PRESET_OPTIONS,
		strokePreset = STROKE_PRESET_OPTIONS,
	},
}
