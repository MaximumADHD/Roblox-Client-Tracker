local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Button = require(Foundation.Components.Button)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Orientation = require(Foundation.Enums.Orientation)
local Slider = require(Foundation.Components.Slider)
local SliderType = require(Foundation.Enums.SliderType)
local SliderVariant = require(Foundation.Enums.SliderVariant)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Visibility = require(Foundation.Enums.Visibility)

local IconSize = require(Foundation.Enums.IconSize)

type InputSize = InputSize.InputSize
type Orientation = Orientation.Orientation
type RangeSliderProps = Slider.RangeSliderProps
type SingleSliderProps = Slider.SingleSliderProps
type SliderType = SliderType.SliderType
type SliderVariant = SliderVariant.SliderVariant
type Visibility = Visibility.Visibility
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local matrixLabel = MatrixGridShared.matrixLabel

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local VARIANT_ORDER: { SliderVariant } = {
	SliderVariant.Standard,
	SliderVariant.Emphasis,
	SliderVariant.Utility,
}

local ORIENTATION_ORDER: { Orientation } = {
	Orientation.Horizontal,
	Orientation.Vertical,
}

local KNOB_VISIBILITY_ORDER: { Visibility } = {
	Visibility.Always,
	Visibility.Auto,
	Visibility.None,
}

local WIDTH_PRESET_FILL = "Fill"
local WIDTH_PRESET_CONSTRAINED = "Constrained"
local WIDTH_PRESET_ORDER: { string } = {
	WIDTH_PRESET_FILL,
	WIDTH_PRESET_CONSTRAINED,
}

local RANGE_PRESET_UNIT = "0–1"
local RANGE_PRESET_TEN = "0–10"
local RANGE_PRESET_HUNDRED = "0–100"
local RANGE_PRESET_SIGNED = "−50–100"
local RANGE_PRESET_ORDER: { string } = {
	RANGE_PRESET_UNIT,
	RANGE_PRESET_TEN,
	RANGE_PRESET_HUNDRED,
	RANGE_PRESET_SIGNED,
}

local SIZE_HEADERS = MatrixGridShared.enumHeaders(SIZE_ORDER)

local VARIANT_HEADERS = MatrixGridShared.enumHeaders(VARIANT_ORDER)

local DEFAULT_VALUE = 0.5
local CONTAINMENT_VALUE = 0
local TRACK_OFFSET = 180
local FILL_PARENT_WIDTH = 400
local VARIANT_CELL_COLUMN_WIDTH = 200
local SIZE_CELL_COLUMN_WIDTH = 200
local VERTICAL_TRACK_LENGTH = UDim.new(0, 160)
local VALUE_KNOB_RANGE = NumberRange.new(0, 100)
local ROTATED_TRACK_HEIGHT = 40
-- Bounding box of the TRACK_OFFSET × ROTATED_TRACK_HEIGHT frame rotated 45°.
local ROTATED_CELL_SIZE = math.ceil((TRACK_OFFSET + ROTATED_TRACK_HEIGHT) * math.sqrt(0.5))

type RangeSliderElementProps = RangeSliderProps & { key: string? }
type SingleSliderElementProps = SingleSliderProps & { key: string? }

local TYPE_ORDER: { SliderType } = {
	SliderType.Single,
	SliderType.Range,
}

local function widthFromPreset(preset: string): UDim?
	if preset == WIDTH_PRESET_CONSTRAINED then
		return UDim.new(0, TRACK_OFFSET)
	end
	return nil
end

local function rangeFromPreset(preset: string): NumberRange
	if preset == RANGE_PRESET_TEN then
		return NumberRange.new(0, 10)
	elseif preset == RANGE_PRESET_HUNDRED then
		return NumberRange.new(0, 100)
	elseif preset == RANGE_PRESET_SIGNED then
		return NumberRange.new(-50, 100)
	end
	return NumberRange.new(0, 1)
end

local function midpointForRange(range: NumberRange): number
	return (range.Min + range.Max) / 2
end

local function defaultRangeValueForRange(range: NumberRange): NumberRange
	local span = range.Max - range.Min
	return NumberRange.new(range.Min + span * 0.25, range.Min + span * 0.75)
end

local function StaticSlider(props: SingleSliderProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		Slider,
		Dash.join(props, {
			key = tostring(remountKey),
			knobVisibility = props.knobVisibility or Visibility.Always,
			onDragEnded = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		}) :: SingleSliderElementProps
	)
end

local DEFAULT_RANGE_VALUE = NumberRange.new(0.25, 0.75)

local function StaticRangeSlider(props: {
	isDisabled: boolean?,
	width: UDim?,
	LayoutOrder: number?,
}): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)
	local value = React.useBinding(DEFAULT_RANGE_VALUE)

	return React.createElement(
		Slider,
		{
			key = tostring(remountKey),
			type = SliderType.Range,
			value = value,
			width = props.width or UDim.new(0, TRACK_OFFSET),
			isDisabled = props.isDisabled,
			knobVisibility = Visibility.Always,
			LayoutOrder = props.LayoutOrder,
			onDragEnded = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		} :: RangeSliderElementProps
	)
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

local function ContainmentFrame(props: {
	children: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-y stroke-standard stroke-emphasis bg-surface-300",
		Size = UDim2.fromOffset(TRACK_OFFSET, 0),
	}, props.children)
end

local function customKnob(): React.ReactElement
	return React.createElement(Icon, {
		name = IconName.Tilt,
		size = IconSize.Medium,
	})
end

type PlaygroundControls = {
	size: InputSize,
	orientation: Orientation?,
	type: SliderType?,
	knobVisibility: Visibility,
	isDisabled: boolean,
	isContained: boolean,
	variant: SliderVariant,
	hasCustomKnob: boolean,
	widthPreset: string,
	rangePreset: string,
	value: number,
	step: number,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local range = rangeFromPreset(controls.rangePreset)
	local value, setValue = React.useBinding(controls.value)
	local rangeValue, setRangeValue = React.useBinding(defaultRangeValueForRange(range))
	local isVertical = Flags.FoundationSliderBeta and controls.orientation == Orientation.Vertical
	local isRange = Flags.FoundationSliderBeta and controls.type == SliderType.Range
	local width = widthFromPreset(controls.widthPreset)

	-- Dragging seeks through setValue, so the control has to push its own value back
	-- in whenever a reviewer changes it.
	React.useEffect(function()
		setValue(controls.value)
	end, { controls.value })

	React.useEffect(function()
		setRangeValue(defaultRangeValueForRange(range))
	end, { controls.rangePreset, range } :: { unknown })

	return React.createElement(View, {
		tag = if isVertical then `align-x-center size-full-3000 {STORY_FRAME_TAG}` else `auto-y {STORY_FRAME_TAG}`,
		Size = if isVertical then nil else UDim2.fromOffset(FILL_PARENT_WIDTH, 0),
	}, {
		Slider = if isRange
			then React.createElement(Slider, {
				value = rangeValue,
				type = SliderType.Range,
				onValueChanged = setRangeValue,
				range = range,
				size = controls.size,
				width = width,
				orientation = if Flags.FoundationSliderBeta then controls.orientation else nil,
				knobVisibility = controls.knobVisibility,
				variant = controls.variant,
				isDisabled = controls.isDisabled,
				isContained = controls.isContained,
				step = if controls.step > 0 then controls.step else nil,
				knob = if controls.hasCustomKnob then customKnob() else nil,
			})
			else React.createElement(Slider, {
				value = value,
				onValueChanged = setValue,
				range = range,
				size = controls.size,
				width = width,
				orientation = if Flags.FoundationSliderBeta then controls.orientation else nil,
				knobVisibility = controls.knobVisibility,
				variant = controls.variant,
				isDisabled = controls.isDisabled,
				isContained = controls.isContained,
				step = if controls.step > 0 then controls.step else nil,
				knob = if controls.hasCustomKnob then customKnob() else nil,
			}),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = VARIANT_HEADERS,
			cellColumnWidth = VARIANT_CELL_COLUMN_WIDTH,
			rows = {
				{
					label = matrixLabel(""),
					cells = Dash.map(VARIANT_ORDER, function(variant)
						return React.createElement(StaticSlider, {
							value = DEFAULT_VALUE,
							width = UDim.new(0, TRACK_OFFSET),
							variant = variant,
						})
					end),
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			note = "Matrices force knobVisibility Always so the handle stays visible at rest.",
			contentTag = "auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = SIZE_CELL_COLUMN_WIDTH,
				rows = {
					{
						label = matrixLabel(""),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StaticSlider, {
								value = DEFAULT_VALUE,
								size = size,
								width = UDim.new(0, TRACK_OFFSET),
							})
						end),
					},
				} :: { MatrixGridRow },
			}),
		}),
		Width = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Width",
		}, {
			Fill = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Fill",
			}, {
				Frame = React.createElement(WidthFrame, {
					LayoutOrder = 1,
					width = FILL_PARENT_WIDTH,
				}, {
					Slider = React.createElement(StaticSlider, {
						LayoutOrder = 1,
						value = DEFAULT_VALUE,
					}),
				}),
			}),
			Constrained = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Constrained",
			}, {
				Frame = React.createElement(WidthFrame, {
					LayoutOrder = 1,
					width = FILL_PARENT_WIDTH,
				}, {
					Slider = React.createElement(StaticSlider, {
						LayoutOrder = 1,
						value = DEFAULT_VALUE,
						width = UDim.new(0, TRACK_OFFSET),
					}),
				}),
			}),
		}),
	})
end

local function StatesStory(): React.ReactNode
	local rows: { MatrixGridRow } = {
		{
			label = matrixLabel(if Flags.FoundationSliderBeta then "Single" else ""),
			cells = {
				React.createElement(StaticSlider, {
					value = DEFAULT_VALUE,
					width = UDim.new(0, TRACK_OFFSET),
				}),
				React.createElement(StaticSlider, {
					value = DEFAULT_VALUE,
					width = UDim.new(0, TRACK_OFFSET),
					isDisabled = true,
				}),
			},
		},
	}

	if Flags.FoundationSliderBeta then
		table.insert(rows, {
			label = matrixLabel("Range"),
			cells = {
				React.createElement(StaticRangeSlider, {}),
				React.createElement(StaticRangeSlider, {
					isDisabled = true,
				}),
			},
		})
	end

	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = Flags.FoundationSliderBeta,
			columnHeaders = { "Enabled", "Disabled" },
			cellColumnWidth = VARIANT_CELL_COLUMN_WIDTH,
			rows = rows,
		}),
	})
end

local function RotatedSliderFrame(props: {
	LayoutOrder: number?,
	rotation: number,
	slider: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(ROTATED_CELL_SIZE, ROTATED_CELL_SIZE),
	}, {
		Rotated = React.createElement(View, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(TRACK_OFFSET, ROTATED_TRACK_HEIGHT),
			Rotation = props.rotation,
		}, {
			Slider = props.slider,
		}),
	})
end

local function OrientationStory(): React.ReactNode
	local cells = Dash.map(ORIENTATION_ORDER, function(orientation, index)
		local isVertical = orientation == Orientation.Vertical
		return React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = orientation,
		}, {
			Slider = React.createElement(StaticSlider, {
				value = DEFAULT_VALUE,
				orientation = orientation,
				width = if isVertical then VERTICAL_TRACK_LENGTH else UDim.new(0, TRACK_OFFSET),
			}),
		})
	end)

	table.insert(
		cells,
		React.createElement(LabeledCell, {
			LayoutOrder = #ORIENTATION_ORDER + 1,
			label = "Rotation",
		}, {
			Slider = React.createElement(RotatedSliderFrame, {
				rotation = 45,
				slider = React.createElement(StaticSlider, {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.fromScale(0, 0.5),
					value = DEFAULT_VALUE,
					width = UDim.new(1, 0),
				}) :: React.ReactNode,
			}),
		})
	)

	return React.createElement(View, {
		tag = `row align-y-top gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, cells)
end

local function ContainmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = { "Default", "isContained" },
			cellColumnWidth = VARIANT_CELL_COLUMN_WIDTH,
			rows = {
				{
					label = matrixLabel(""),
					cells = {
						React.createElement(ContainmentFrame, {}, {
							Slider = React.createElement(StaticSlider, {
								LayoutOrder = 1,
								value = CONTAINMENT_VALUE,
								width = UDim.new(0, TRACK_OFFSET),
							}),
						}),
						React.createElement(ContainmentFrame, {}, {
							Slider = React.createElement(StaticSlider, {
								LayoutOrder = 1,
								value = CONTAINMENT_VALUE,
								width = UDim.new(0, TRACK_OFFSET),
								isContained = true,
							}),
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function ControlledExample(props: {
	LayoutOrder: number,
	step: number?,
	range: NumberRange?,
	knobVisibility: Visibility?,
	showValue: boolean?,
	orientation: Orientation?,
	rotation: number?,
}): React.ReactNode
	local range = props.range or NumberRange.new(0, 1)
	local value, setValue = React.useState(midpointForRange(range))
	local showValue = if props.showValue == nil then true else props.showValue
	local isVertical = props.orientation == Orientation.Vertical

	local slider = React.createElement(Slider, {
		value = value,
		range = range,
		step = props.step,
		orientation = props.orientation,
		width = if props.rotation
			then UDim.new(1, 0)
			elseif isVertical then VERTICAL_TRACK_LENGTH
			else UDim.new(0, TRACK_OFFSET),
		AnchorPoint = if props.rotation then Vector2.new(0, 0.5) else nil,
		Position = if props.rotation then UDim2.fromScale(0, 0.5) else nil,
		knobVisibility = props.knobVisibility or Visibility.Always,
		onValueChanged = setValue,
		LayoutOrder = 1,
	})

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Slider = if props.rotation
			then React.createElement(RotatedSliderFrame, {
				LayoutOrder = 1,
				rotation = props.rotation,
				slider = slider :: React.ReactNode,
			})
			else slider,
		Value = if showValue
			then React.createElement(Text, {
				Text = string.format("%.2f", value),
				tag = "auto-xy text-caption-small content-muted",
				LayoutOrder = 2,
			})
			else nil,
	})
end

local function DirectionalCaptureExample(props: {
	LayoutOrder: number,
	isRange: boolean,
}): React.ReactNode
	local value, setValue = React.useBinding(0.5)
	local rangeValue, setRangeValue = React.useBinding(NumberRange.new(0.25, 0.75))

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = if props.isRange then "Range" else "Single",
			tag = "auto-xy text-label-small",
			LayoutOrder = 1,
		}),
		Controls = React.createElement(View, {
			tag = "row align-y-center gap-small auto-xy",
			LayoutOrder = 2,
		}, {
			Before = React.createElement(Button, {
				text = "Before",
				onActivated = function() end,
				LayoutOrder = 1,
			}),
			Slider = if props.isRange
				then React.createElement(Slider, {
					type = SliderType.Range,
					value = rangeValue,
					onValueChanged = setRangeValue,
					width = UDim.new(0, TRACK_OFFSET),
					knobVisibility = Visibility.Always,
					LayoutOrder = 2,
				})
				else React.createElement(Slider, {
					value = value,
					onValueChanged = setValue,
					width = UDim.new(0, TRACK_OFFSET),
					knobVisibility = Visibility.Always,
					LayoutOrder = 2,
				}),
			After = React.createElement(Button, {
				text = "After",
				onActivated = function() end,
				LayoutOrder = 3,
			}),
		}),
		Value = React.createElement(Text, {
			Text = if props.isRange
				then rangeValue:map(function(current: NumberRange)
					return string.format("%.2f – %.2f", current.Min, current.Max)
				end)
				else value:map(function(current: number)
					return string.format("%.2f", current)
				end),
			tag = "auto-xy text-caption-small content-muted",
			LayoutOrder = 3,
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Range = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Range",
				note = "Slider clamps value into range, so a caller value past either end renders at that end.",
			},
			Dash.map(RANGE_PRESET_ORDER, function(preset, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = preset,
				}, {
					Example = React.createElement(ControlledExample, {
						LayoutOrder = 1,
						range = rangeFromPreset(preset),
					}),
				})
			end)
		),
		Step = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Step",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ControlledExample, {
				LayoutOrder = 1,
				step = 0.25,
			}),
		}),
		KnobVisibility = React.createElement(
			Section,
			{
				LayoutOrder = 3,
				name = "Knob visibility",
				note = "Point at each track: Auto reveals the knob only while hovering, pressing, or dragging.",
			},
			Dash.map(KNOB_VISIBILITY_ORDER, function(knobVisibility, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = knobVisibility,
				}, {
					Example = React.createElement(ControlledExample, {
						LayoutOrder = 1,
						knobVisibility = knobVisibility,
						showValue = false,
					}),
				})
			end)
		),
		Orientation = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Orientation",
		}, {
			Vertical = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Vertical",
			}, {
				Example = React.createElement(ControlledExample, {
					LayoutOrder = 1,
					orientation = Orientation.Vertical,
				}),
			}),
			Rotation = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "45°",
			}, {
				Example = React.createElement(ControlledExample, {
					LayoutOrder = 1,
					rotation = 45,
				}),
			}),
		}),
		DirectionalCapture = if Flags.FoundationSliderCapture
			then React.createElement(Section, {
				LayoutOrder = 5,
				name = "Directional capture",
				note = "Focus a Slider, press A or Enter to capture it, use its value-axis directions to adjust, and press B or Backspace to return focus to the whole control. A or Enter toggles the active Range thumb while captured.",
				contentTag = "col gap-large auto-xy",
			}, {
				Single = React.createElement(DirectionalCaptureExample, {
					LayoutOrder = 1,
					isRange = false,
				}),
				Range = React.createElement(DirectionalCaptureExample, {
					LayoutOrder = 2,
					isRange = true,
				}),
			})
			else nil,
	})
end

local function ValueKnobExample(props: { LayoutOrder: number }): React.ReactNode
	local value, setValue = React.useBinding(midpointForRange(VALUE_KNOB_RANGE))

	return React.createElement(Slider, {
		value = value,
		range = VALUE_KNOB_RANGE,
		width = UDim.new(0, TRACK_OFFSET),
		knobVisibility = Visibility.Always,
		onValueChanged = setValue,
		LayoutOrder = props.LayoutOrder,
		knob = React.createElement(View, {
			tag = "auto-xy padding-x-small padding-y-xsmall stroke-standard stroke-emphasis radius-circle bg-surface-100",
		}, {
			Value = React.createElement(Text, {
				Text = value:map(function(current: number): string
					return tostring(math.round(current))
				end),
				tag = "auto-xy text-label-small",
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		OptionalAccessories = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Optional accessories",
			note = "The knob slot takes any element; drag this one to see it read the same value binding the track fills from.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ValueKnobExample, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function TypeStory(): React.ReactNode
	return React.createElement(View, {
		tag = `row align-y-top gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Single = React.createElement(LabeledCell, {
			LayoutOrder = 1,
			label = "Single",
		}, {
			Slider = React.createElement(StaticSlider, {
				value = DEFAULT_VALUE,
				width = UDim.new(0, TRACK_OFFSET),
			}),
		}),
		Range = React.createElement(LabeledCell, {
			LayoutOrder = 2,
			label = "Range",
		}, {
			Slider = React.createElement(StaticRangeSlider, {}),
		}),
	})
end

local stories = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Variants",
		story = VariantsStory,
	},
	{
		name = "Sizing",
		story = SizingStory,
	},
	{
		name = "States",
		story = StatesStory,
	},
	{
		name = "Containment",
		story = ContainmentStory,
	},
	{
		name = "Controlled component",
		story = ControlledStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

if Flags.FoundationSliderBeta then
	table.insert(stories, 5, {
		name = "Orientation",
		story = OrientationStory,
	})
	table.insert(stories, 4, {
		name = "Type",
		story = TypeStory,
	})
end

local controls: { [string]: unknown } = {
	size = SIZE_ORDER,
	knobVisibility = KNOB_VISIBILITY_ORDER,
	isDisabled = false,
	isContained = false,
	variant = VARIANT_ORDER,
	hasCustomKnob = false,
	widthPreset = WIDTH_PRESET_ORDER,
	rangePreset = RANGE_PRESET_ORDER,
	value = DEFAULT_VALUE,
	step = 0,
	orientation = if Flags.FoundationSliderBeta then ORIENTATION_ORDER else nil,
	type = if Flags.FoundationSliderBeta then TYPE_ORDER else nil,
}

return {
	summary = "Slider is a draggable value control. Deselect Studio tools before dragging, or the Select tool will steal the input.",
	stories = stories,
	controls = controls,
}
