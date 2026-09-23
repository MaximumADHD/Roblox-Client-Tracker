local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorInputMode = require(Foundation.Enums.ColorInputMode)
local ColorPicker = require(Foundation.Components.ColorPicker)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

type ColorInputMode = ColorInputMode.ColorInputMode
type ColorPickerProps = ColorPicker.ColorPickerProps
type MatrixGridRow = MatrixGridShared.MatrixGridRow
type PartialColorHSV = Types.PartialColorHSV

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local matrixLabel = MatrixGridShared.matrixLabel

local MODE_ORDER: { ColorInputMode } = {
	ColorInputMode.RGB,
	ColorInputMode.HSV,
	ColorInputMode.Hex,
	ColorInputMode.Brick,
}

local CUSTOM_MODES: { ColorInputMode } = {
	ColorInputMode.RGB,
	ColorInputMode.HSV,
	ColorInputMode.Hex,
}

local BRICK_ONLY_MODES: { ColorInputMode } = {
	ColorInputMode.Brick,
}

local MODES_PRESET_ALL = "All"
local MODES_PRESET_CUSTOM = "Custom"
local MODES_PRESET_BRICK = "Brick"

local MODES_PRESET_ORDER: { string } = {
	MODES_PRESET_ALL,
	MODES_PRESET_CUSTOM,
	MODES_PRESET_BRICK,
}

local COLOR_PRESET_DEFAULT = "Default"
local COLOR_PRESET_RED = "Red"
local COLOR_PRESET_TEAL = "Teal"
local COLOR_PRESET_PARTIAL_HUE = "Partial hue only"

local COLOR_PRESET_ORDER: { string } = {
	COLOR_PRESET_DEFAULT,
	COLOR_PRESET_RED,
	COLOR_PRESET_TEAL,
	COLOR_PRESET_PARTIAL_HUE,
}

local PARTIAL_HUE: PartialColorHSV = { H = 15 }
local COMPLETE_HUE: PartialColorHSV = { H = 15, S = 100, V = 100 }

--selene: allow(roblox_internal_custom_color)
local RED = Color3.fromRGB(220, 48, 48)
--selene: allow(roblox_internal_custom_color)
local TEAL = Color3.fromRGB(32, 152, 160)

local PICKER_WIDTH = 280
local EXAMPLE_PARENT_WIDTH = 360
local SWATCH_SIZE = 32

local function noop(_color: Color3, _brickColor: BrickColor?) end

local function noopAlpha(_alpha: number) end

local function availableModesForPreset(preset: string): { ColorInputMode }
	if preset == MODES_PRESET_CUSTOM then
		return CUSTOM_MODES
	elseif preset == MODES_PRESET_BRICK then
		return BRICK_ONLY_MODES
	end
	return MODE_ORDER
end

local function initialModeForPreset(preset: string, initialMode: ColorInputMode): ColorInputMode
	if preset == MODES_PRESET_BRICK then
		return ColorInputMode.Brick
	elseif preset == MODES_PRESET_CUSTOM and initialMode == ColorInputMode.Brick then
		return ColorInputMode.RGB
	end
	return initialMode
end

local function initialColorForPreset(preset: string): (Color3 | PartialColorHSV)?
	if preset == COLOR_PRESET_RED then
		return RED
	elseif preset == COLOR_PRESET_TEAL then
		return TEAL
	elseif preset == COLOR_PRESET_PARTIAL_HUE then
		return PARTIAL_HUE
	end
	return nil
end

type PickerElementProps = ColorPickerProps & { key: string? }

local function StaticPicker(props: ColorPickerProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		ColorPicker,
		Dash.join(props, {
			key = tostring(remountKey),
			onDragEnded = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		}) :: PickerElementProps
	)
end

local function PickerFrame(props: {
	LayoutOrder: number,
	width: number?,
	children: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		tag = "auto-y",
		Size = UDim2.fromOffset(props.width or PICKER_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function WidthFrame(props: {
	LayoutOrder: number,
	width: number,
	children: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-y padding-medium stroke-standard stroke-neutral radius-medium",
		Size = UDim2.fromOffset(props.width, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

type PlaygroundControls = {
	initialMode: ColorInputMode,
	availableModesPreset: string,
	initialColorPreset: string,
	initialAlpha: number,
	hasAlpha: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local availableModes = availableModesForPreset(controls.availableModesPreset)
	local initialMode: ColorInputMode = initialModeForPreset(controls.availableModesPreset, controls.initialMode)
	local initialColor = initialColorForPreset(controls.initialColorPreset)

	return React.createElement(View, {
		tag = `auto-y {STORY_FRAME_TAG}`,
		Size = UDim2.fromOffset(PICKER_WIDTH, 0),
	}, {
		Picker = React.createElement(
			ColorPicker,
			{
				key = `{initialMode}-{controls.availableModesPreset}-{controls.initialColorPreset}-{controls.initialAlpha}`,
				availableModes = availableModes,
				initialMode = initialMode,
				initialColor = initialColor,
				initialAlpha = controls.initialAlpha,
				onColorChanged = noop,
				onAlphaChanged = if controls.hasAlpha then noopAlpha else nil,
			} :: PickerElementProps
		),
	})
end

local function ModeGrid(props: {
	LayoutOrder: number,
	modes: { ColorInputMode },
}): React.ReactNode
	return React.createElement(StoryMatrixGrid, {
		LayoutOrder = props.LayoutOrder,
		showLabelColumn = false,
		columnHeaders = Dash.map(props.modes, function(value): string
			return value
		end),
		cellColumnWidth = PICKER_WIDTH,
		rows = {
			{
				label = matrixLabel(""),
				cells = Dash.map(props.modes, function(mode): React.ReactNode
					return React.createElement(PickerFrame, {
						LayoutOrder = 1,
					}, {
						Picker = React.createElement(StaticPicker, {
							initialMode = mode,
							onColorChanged = noop,
						}),
					})
				end),
			},
		} :: { MatrixGridRow },
	})
end

local function ColorInputModeStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		TextModes = React.createElement(ModeGrid, {
			LayoutOrder = 1,
			modes = CUSTOM_MODES,
		}),
		Brick = React.createElement(ModeGrid, {
			LayoutOrder = 2,
			modes = BRICK_ONLY_MODES,
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Width = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Width",
			note = "ColorPicker has no width prop; it fills whatever parent it is given, so this frame is one example width.",
			contentTag = "auto-xy",
		}, {
			Frame = React.createElement(WidthFrame, {
				LayoutOrder = 1,
				width = EXAMPLE_PARENT_WIDTH,
			}, {
				Picker = React.createElement(StaticPicker, {
					LayoutOrder = 1,
					onColorChanged = noop,
				}),
			}),
		}),
	})
end

local function ReportingExample(props: {
	LayoutOrder: number,
	availableModes: { ColorInputMode },
	initialMode: ColorInputMode,
}): React.ReactNode
	local isDragging, setIsDragging = React.useState(false)
	local updateCount, setUpdateCount = React.useState(0)
	local color, setColor = React.useState(TEAL)
	local alpha, setAlpha = React.useState(1)
	local brickName, setBrickName = React.useState("none")

	local readout = {
		`Dragging: {isDragging}`,
		`Updates: {updateCount}`,
		string.format(
			"Color: %d, %d, %d",
			math.round(color.R * 255),
			math.round(color.G * 255),
			math.round(color.B * 255)
		),
		string.format("Alpha: %.2f", alpha),
		`BrickColor: {brickName}`,
	}

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Picker = React.createElement(PickerFrame, {
			LayoutOrder = 1,
		}, {
			Picker = React.createElement(ColorPicker, {
				initialColor = TEAL,
				availableModes = props.availableModes,
				initialMode = props.initialMode,
				onColorChanged = function(newColor: Color3, brickColor: BrickColor?)
					setColor(newColor)
					setBrickName(if brickColor then brickColor.Name else "none")
					setUpdateCount(function(count)
						return count + 1
					end)
				end,
				onAlphaChanged = function(newAlpha: number)
					setAlpha(newAlpha)
				end,
				onDragStarted = function()
					setIsDragging(true)
					setUpdateCount(0)
				end,
				onDragEnded = function()
					setIsDragging(false)
				end,
			}),
		}),
		Readout = React.createElement(View, {
			tag = "row align-y-center gap-medium auto-xy",
			LayoutOrder = 2,
		}, {
			Swatch = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Reported color",
			}, {
				Fill = React.createElement(View, {
					tag = "stroke-standard stroke-neutral radius-small",
					Size = UDim2.fromOffset(SWATCH_SIZE, SWATCH_SIZE),
					backgroundStyle = {
						Color3 = color,
						Transparency = 1 - alpha,
					},
					LayoutOrder = 1,
				}),
			}),
			Lines = React.createElement(
				View,
				{
					tag = "col gap-xsmall auto-xy",
					LayoutOrder = 2,
				},
				Dash.map(readout, function(line, index): React.ReactNode
					return React.createElement(Text, {
						Text = line,
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						LayoutOrder = index,
					})
				end)
			),
		}),
	})
end

local function ChangeReportingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Row = React.createElement(View, {
			tag = "row wrap align-y-top gap-xxlarge auto-xy",
			LayoutOrder = 1,
		}, {
			Custom = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Custom modes",
			}, {
				Example = React.createElement(ReportingExample, {
					LayoutOrder = 1,
					availableModes = CUSTOM_MODES,
					initialMode = ColorInputMode.RGB,
				}),
			}),
			Brick = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Brick",
			}, {
				Example = React.createElement(ReportingExample, {
					LayoutOrder = 1,
					availableModes = BRICK_ONLY_MODES,
					initialMode = ColorInputMode.Brick,
				}),
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		OptionalAffordances = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Optional affordances",
			note = "Passing onAlphaChanged is what mounts the alpha slider.",
			contentTag = "row gap-large align-y-top auto-xy wrap",
		}, {
			Default = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Default",
			}, {
				Frame = React.createElement(PickerFrame, {
					LayoutOrder = 1,
				}, {
					Picker = React.createElement(StaticPicker, {
						onColorChanged = noop,
					}),
				}),
			}),
			Alpha = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Alpha",
			}, {
				Frame = React.createElement(PickerFrame, {
					LayoutOrder = 1,
				}, {
					Picker = React.createElement(StaticPicker, {
						onColorChanged = noop,
						onAlphaChanged = noopAlpha,
					}),
				}),
			}),
		}),
		Empty = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Empty",
			note = "Omitting saturation and value leaves every input blank and hides the SV indicator until the caller completes the color.",
			contentTag = "row gap-large align-y-top auto-xy wrap",
		}, {
			Complete = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "{ H = 15, S = 100, V = 100 }",
			}, {
				Frame = React.createElement(PickerFrame, {
					LayoutOrder = 1,
				}, {
					Picker = React.createElement(StaticPicker, {
						initialColor = COMPLETE_HUE,
						onColorChanged = noop,
					}),
				}),
			}),
			Partial = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "{ H = 15 }",
			}, {
				Frame = React.createElement(PickerFrame, {
					LayoutOrder = 1,
				}, {
					Picker = React.createElement(StaticPicker, {
						initialColor = PARTIAL_HUE,
						onColorChanged = noop,
					}),
				}),
			}),
		}),
	})
end

return {
	summary = "ColorPicker lets a caller choose a color through text fields, an SV canvas, and optional hue, alpha, and BrickColor pickers.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Color input mode",
			summary = "RGBA is absent from the sweep because ColorInputs derives that tab from RGB whenever onAlphaChanged is passed.",
			story = ColorInputModeStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Change reporting",
			summary = "Selecting a brick reports a named BrickColor and no drag, while scrubbing reports a stream of Color3 values bracketed by the same drag pair for the SV canvas, hue, and alpha; the update count resets when a drag starts.",
			story = ChangeReportingStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		initialMode = MODE_ORDER,
		availableModesPreset = MODES_PRESET_ORDER,
		initialColorPreset = COLOR_PRESET_ORDER,
		initialAlpha = 1,
		hasAlpha = false,
	},
}
