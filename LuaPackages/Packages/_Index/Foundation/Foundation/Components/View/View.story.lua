local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local ChipSize = require(Foundation.Enums.ChipSize)
local ColorMode = require(Foundation.Enums.ColorMode)
local ControlState = require(Foundation.Enums.ControlState)
local ShadowPreset = require(Foundation.Enums.ShadowPreset)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local SurfacePresets = require(Foundation.Utility.Stories.Shared.SurfacePresets)

local StyleProvider = require(Foundation.Providers.Style.StyleProvider)
local Tokens = require(Foundation.Providers.Style.Tokens)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local matrixLabel = MatrixGridShared.matrixLabel

type ColorMode = ColorMode.ColorMode
type ControlState = ControlState.ControlState
type CornerRadius = Types.CornerRadius
type ListLayout = Types.ListLayout
type MatrixGridRow = MatrixGridShared.MatrixGridRow
type Padding = Types.Padding
type ShadowPreset = ShadowPreset.ShadowPreset
type Stroke = Types.Stroke
type Tokens = Tokens.Tokens

local BLOCK_TAG = "bg-emphasis"
local PANEL_TAG = "col gap-small auto-xy padding-medium radius-medium bg-surface-300"
local SIZED_PANEL_TAG = "col gap-small padding-medium radius-medium bg-surface-300"
local HARNESS_TAG = "col align-x-left gap-small padding-small radius-medium bg-surface-100"

local HARNESS_WIDTH = 200
local NARROW_HARNESS_WIDTH = 170
local CELL_COLUMN_WIDTH = HARNESS_WIDTH + 24
local NARROW_CELL_COLUMN_WIDTH = NARROW_HARNESS_WIDTH + 24
local BLOCK_CELL_COLUMN_WIDTH = 130

local CHILD_LABEL = "Child"
local LONG_CHILD_LABEL = "Child that outgrows its parent"

local SHADOW_PRESETS: { ShadowPreset } = {
	ShadowPreset.Raised100,
	ShadowPreset.Raised300,
	ShadowPreset.Overlay100,
	ShadowPreset.Overlay300,
}

local COLOR_MODES: { ColorMode } = { ColorMode.Light, ColorMode.Dark }

local function shadowTag(preset: ShadowPreset): string
	return `shadow-{preset}`
end

local SHADOW_TAGS: { string } = Dash.map(SHADOW_PRESETS, shadowTag)

type SizeFixture = {
	Size: UDim2?,
	AutomaticSize: Enum.AutomaticSize?,
}

local SIZE_PRESET_ORDER: { string } = { "Fixed", "Hug contents", "Fill width" }

local SIZE_PRESETS: { [string]: SizeFixture } = {
	Fixed = { Size = UDim2.fromOffset(240, 120) },
	["Hug contents"] = { AutomaticSize = Enum.AutomaticSize.XY },
	["Fill width"] = { Size = UDim2.new(1, 0, 0, 120) },
}

local ASPECT_RATIO_PRESET_ORDER: { string } = { "None", "1:1", "16:9" }

local function resolveAspectRatio(preset: string): number?
	if preset == "1:1" then
		return 1
	elseif preset == "16:9" then
		return 16 / 9
	end
	return nil
end

local CORNER_RADIUS_PRESET_ORDER: { string } = { "None", "Small", "Medium", "Large", "Circle" }

local function resolveCornerRadius(tokens: Tokens, preset: string): CornerRadius?
	if preset == "Small" then
		return tokens.Radius.Small
	elseif preset == "Medium" then
		return tokens.Radius.Medium
	elseif preset == "Large" then
		return tokens.Radius.Large
	elseif preset == "Circle" then
		return tokens.Radius.Circle
	end
	return nil
end

local PADDING_PRESET_ORDER: { string } = { "None", "Medium", "Large" }

local function resolvePadding(tokens: Tokens, preset: string): Padding?
	if preset == "Medium" then
		return tokens.Padding.Medium
	elseif preset == "Large" then
		return tokens.Padding.Large
	end
	return nil
end

-- The subject here is the container itself, and the control opens on its first option, so this
-- order leads with a fill that reads against the page instead of the shared "None".
local BACKGROUND_PRESET_ORDER: { string } = { "Surface_300", "None", "Surface_0", "Surface_100", "Surface_200" }

local STROKE_PRESET_ORDER: { string } = { "None", "Default", "Emphasis" }

local function resolveStroke(tokens: Tokens, preset: string): Stroke?
	local color = if preset == "Default"
		then tokens.Color.Stroke.Default
		elseif preset == "Emphasis" then tokens.Color.Stroke.Emphasis
		else nil

	if color == nil then
		return nil
	end

	return {
		Color = color.Color3,
		Transparency = color.Transparency,
		Thickness = tokens.Stroke.Standard,
	}
end

local GROUP_TRANSPARENCY_OPTIONS = { 0, 0.25, 0.5, 0.75, 1 }

local GROUP_TRANSPARENCY_HEADERS: { string } = Dash.map(GROUP_TRANSPARENCY_OPTIONS, function(value): string
	return tostring(value)
end)

local DIMENSION_SIZES: { UDim2 } = {
	UDim2.fromOffset(80, 48),
	UDim2.fromOffset(160, 48),
	UDim2.new(1, 0, 0, 48),
}

local DIMENSION_HEADERS: { string } = {
	"size-2000-1200",
	"UDim2.fromOffset(160, 48)",
	"size-full-1200",
}

local AUTOMATIC_SIZES: { Enum.AutomaticSize } = {
	Enum.AutomaticSize.None,
	Enum.AutomaticSize.X,
	Enum.AutomaticSize.Y,
	Enum.AutomaticSize.XY,
}

local AUTOMATIC_SIZE_HEADERS: { string } = { "auto-none", "auto-x", "auto-y", "auto-xy" }

-- The child has to outgrow the subject on both axes, otherwise Size wins everywhere and all four
-- cells render the same box.
local AUTOMATIC_SIZE_SUBJECT_SIZE = UDim2.fromOffset(64, 24)
local AUTOMATIC_SIZE_CHILD_LABEL = "Child content that needs\nmore room than the\nfixed Size allows"

-- The constraint fits the ratio inside the size it is given, so both axes need a definite value.
local ASPECT_RATIO_BOUNDS = UDim2.fromOffset(96, 96)

local ASPECT_RATIOS: { number } = { 1, 16 / 9, 9 / 16 }

local ASPECT_RATIO_HEADERS: { string } = { "aspect-1-1", "aspect-16-9", "aspect-9-16" }

local SCALES: { number } = { 0.75, 1, 1.5 }

local SCALE_HEADERS: { string } = { "0.75", "1", "1.5" }

local FILL_DIRECTIONS: { Enum.FillDirection } = {
	Enum.FillDirection.Horizontal,
	Enum.FillDirection.Vertical,
}

local FILL_DIRECTION_HEADERS: { string } = { "row", "col" }

local PADDING_VALUES: { Padding } = {
	16,
	{ top = UDim.new(0, 8), bottom = UDim.new(0, 8), left = UDim.new(0, 32), right = UDim.new(0, 8) },
}

local PADDING_HEADERS: { string } = { "padding-large", "{ top = 8, bottom = 8, left = 32, right = 8 }" }

-- The table header is one long line, so the column has to be wide enough for it to sit over its
-- own cell rather than the next one.
local PADDING_CELL_COLUMN_WIDTH = 264

local HORIZONTAL_ALIGNMENTS: { Enum.HorizontalAlignment } = {
	Enum.HorizontalAlignment.Left,
	Enum.HorizontalAlignment.Center,
	Enum.HorizontalAlignment.Right,
}

local HORIZONTAL_ALIGNMENT_HEADERS: { string } = {
	"align-x-left",
	"align-x-center",
	"align-x-right",
}

local VERTICAL_ALIGNMENTS: { Enum.VerticalAlignment } = {
	Enum.VerticalAlignment.Top,
	Enum.VerticalAlignment.Center,
	Enum.VerticalAlignment.Bottom,
}

local VERTICAL_ALIGNMENT_LABELS: { string } = {
	"align-y-top",
	"align-y-center",
	"align-y-bottom",
}

-- Alignment only moves children through space the parent already has, so the subject is fixed on
-- both axes and larger than the two blocks it holds.
local ALIGNMENT_SUBJECT_SIZE = UDim2.fromOffset(120, 72)
local ALIGNMENT_LABEL_COLUMN_WIDTH = 120
local ALIGNMENT_CELL_COLUMN_WIDTH = 176

local GAP_VALUES: { UDim } = { UDim.new(0, 0), UDim.new(0, 8), UDim.new(0, 24) }

local GAP_HEADERS: { string } = {
	"gap-none",
	"gap-small",
	"gap-xxlarge",
}

local GAP_CELL_COLUMN_WIDTH = 176

local LAYOUT_BLOCK_SIZE = UDim2.fromOffset(28, 16)

local WRAPS_VALUES: { boolean } = { false, true }

local WRAPS_HEADERS: { string } = { "no-wrap", "wrap" }

-- Five children overrun the harness, so the unwrapped row needs a column wide enough to hold the
-- spill without running into the wrapped one.
local WRAP_CHILD_COUNT = 5
local WRAP_CELL_COLUMN_WIDTH = 280

local CLIPS_DESCENDANTS_VALUES: { boolean } = { false, true }

local CLIPS_DESCENDANTS_HEADERS: { string } = { "no-clip", "clip" }

-- The stroke is the clipping boundary, so the subject has to be narrower than the child for the
-- cut to land somewhere a reader can see.
local OVERFLOW_SUBJECT_SIZE = UDim2.fromOffset(96, 48)
local OVERFLOW_SUBJECT_TAG = "radius-small stroke-standard stroke-emphasis bg-surface-300"

local LAYOUT_GAP = UDim.new(0, 8)

local function listLayout(fillDirection: Enum.FillDirection, wraps: boolean?): ListLayout
	return {
		FillDirection = fillDirection,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = LAYOUT_GAP,
		Wraps = wraps,
	}
end

local function noop() end

local function Placeholder(props: {
	LayoutOrder: number?,
	label: string,
})
	return React.createElement(View, {
		tag = "col align-x-center align-y-center auto-xy padding-small radius-small bg-shift-300",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-label-small content-default",
			LayoutOrder = 1,
		}),
	})
end

local function AlignmentCell(props: {
	horizontalAlignment: Enum.HorizontalAlignment,
	verticalAlignment: Enum.VerticalAlignment,
})
	return React.createElement(View, {
		tag = "radius-small bg-surface-300",
		Size = ALIGNMENT_SUBJECT_SIZE,
		layout = {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = LAYOUT_GAP,
			HorizontalAlignment = props.horizontalAlignment,
			VerticalAlignment = props.verticalAlignment,
		},
	}, {
		First = React.createElement(View, {
			tag = `radius-small {BLOCK_TAG}`,
			Size = LAYOUT_BLOCK_SIZE,
			LayoutOrder = 1,
		}),
		Second = React.createElement(View, {
			tag = `radius-small {BLOCK_TAG}`,
			Size = LAYOUT_BLOCK_SIZE,
			LayoutOrder = 2,
		}),
	})
end

local function GapCell(props: { gap: UDim })
	return React.createElement(View, {
		tag = "auto-xy padding-small radius-small bg-surface-300",
		layout = {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = props.gap,
		},
	}, {
		First = React.createElement(View, {
			tag = `radius-small {BLOCK_TAG}`,
			Size = LAYOUT_BLOCK_SIZE,
			LayoutOrder = 1,
		}),
		Second = React.createElement(View, {
			tag = `radius-small {BLOCK_TAG}`,
			Size = LAYOUT_BLOCK_SIZE,
			LayoutOrder = 2,
		}),
		Third = React.createElement(View, {
			tag = `radius-small {BLOCK_TAG}`,
			Size = LAYOUT_BLOCK_SIZE,
			LayoutOrder = 3,
		}),
	})
end

local function alignmentRows(): { MatrixGridRow }
	return Dash.map(VERTICAL_ALIGNMENTS, function(verticalAlignment, rowIndex): MatrixGridRow
		return {
			label = matrixLabel(VERTICAL_ALIGNMENT_LABELS[rowIndex]),
			cells = Dash.map(HORIZONTAL_ALIGNMENTS, function(horizontalAlignment)
				return React.createElement(AlignmentCell, {
					horizontalAlignment = horizontalAlignment,
					verticalAlignment = verticalAlignment,
				})
			end),
		}
	end)
end

local function wrapChildren(): { [string]: React.ReactNode }
	local children: { [string]: React.ReactNode } = {}
	for index = 1, WRAP_CHILD_COUNT do
		children[`Child-{index}`] = React.createElement(Placeholder, {
			LayoutOrder = index,
			label = CHILD_LABEL,
		})
	end
	return children
end

local function Harness(props: {
	LayoutOrder: number?,
	width: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = HARNESS_TAG,
		Size = UDim2.fromOffset(props.width, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

type PlaygroundControls = {
	sizePreset: string,
	aspectRatioPreset: string,
	cornerRadiusPreset: string,
	paddingPreset: string,
	backgroundStylePreset: string,
	strokePreset: string,
	GroupTransparency: number | string | { number },
	hasOnActivated: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()
	local sizeFixture = SIZE_PRESETS[controls.sizePreset] or SIZE_PRESETS.Fixed
	local groupTransparencyInput = controls.GroupTransparency
	local groupTransparency =
		tonumber(if type(groupTransparencyInput) == "table" then groupTransparencyInput[1] else groupTransparencyInput)

	return React.createElement(View, {
		tag = `col align-x-left {STORY_PAGE_TAG}`,
	}, {
		Subject = React.createElement(View, {
			tag = "row align-x-center align-y-center gap-medium",
			Size = sizeFixture.Size,
			AutomaticSize = sizeFixture.AutomaticSize,
			aspectRatio = resolveAspectRatio(controls.aspectRatioPreset),
			cornerRadius = resolveCornerRadius(tokens, controls.cornerRadiusPreset),
			padding = resolvePadding(tokens, controls.paddingPreset),
			backgroundStyle = SurfacePresets.resolveSurfacePreset(tokens, controls.backgroundStylePreset),
			stroke = resolveStroke(tokens, controls.strokePreset),
			GroupTransparency = if groupTransparency ~= nil and groupTransparency > 0 then groupTransparency else nil,
			stateLayer = if controls.hasOnActivated then { mode = StateLayerMode.Default } else nil,
			onActivated = if controls.hasOnActivated then noop else nil,
			isDisabled = controls.isDisabled,
		}, {
			First = React.createElement(Placeholder, { LayoutOrder = 1, label = CHILD_LABEL }),
			Second = React.createElement(Placeholder, { LayoutOrder = 2, label = CHILD_LABEL }),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Dimensions = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Dimensions",
			note = "Every cell shares one fixed-width parent, so the offset widths hold their size while the scale width fills it.",
			showLabelColumn = false,
			columnHeaders = DIMENSION_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(DIMENSION_SIZES, function(size)
						return React.createElement(Harness, { width = HARNESS_WIDTH }, {
							Subject = React.createElement(View, {
								tag = `radius-small {BLOCK_TAG}`,
								Size = size,
							}),
						})
					end),
				},
			},
		}),
		AutomaticSizing = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Automatic sizing",
			note = "Size acts as a minimum: an automatically sized axis grows to fit the child, while a fixed axis keeps its size and lets the child overflow.",
			showLabelColumn = false,
			columnHeaders = AUTOMATIC_SIZE_HEADERS,
			cellColumnWidth = NARROW_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(AUTOMATIC_SIZES, function(automaticSize)
						return React.createElement(View, {
							tag = SIZED_PANEL_TAG,
							Size = AUTOMATIC_SIZE_SUBJECT_SIZE,
							AutomaticSize = if automaticSize == Enum.AutomaticSize.None then nil else automaticSize,
						}, {
							Label = React.createElement(Text, {
								Text = AUTOMATIC_SIZE_CHILD_LABEL,
								tag = "auto-xy text-label-small content-default",
								LayoutOrder = 1,
							}),
						})
					end),
				},
			},
		}),
		AspectRatio = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "Aspect ratio",
			note = "Each subject is handed the same 96 × 96 bounds, and the ratio fits inside them.",
			showLabelColumn = false,
			columnHeaders = ASPECT_RATIO_HEADERS,
			cellColumnWidth = BLOCK_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(ASPECT_RATIOS, function(ratio)
						return React.createElement(View, {
							tag = `radius-small {BLOCK_TAG}`,
							Size = ASPECT_RATIO_BOUNDS,
							aspectRatio = ratio,
						})
					end),
				},
			},
		}),
		Scale = React.createElement(MatrixSection, {
			LayoutOrder = 4,
			name = "Scale",
			showLabelColumn = false,
			columnHeaders = SCALE_HEADERS,
			cellColumnWidth = BLOCK_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(SCALES, function(scale)
						return React.createElement(View, {
							tag = PANEL_TAG,
							scale = scale,
						}, {
							Label = React.createElement(Text, {
								Text = CHILD_LABEL,
								tag = "auto-xy text-label-small content-default",
								LayoutOrder = 1,
							}),
						})
					end),
				},
			},
		}),
	})
end

local CORNER_RADIUS_HEADERS: { string } = {
	"radius-none",
	"radius-small",
	"radius-medium",
	"radius-large",
	"radius-circle",
	"radius-top-left-large + radius-bottom-right-large",
}

local function ShapeStory(): React.ReactNode
	local tokens = useTokens()

	local cornerRadii: { CornerRadius } = {
		0,
		tokens.Radius.Small,
		tokens.Radius.Medium,
		tokens.Radius.Large,
		tokens.Radius.Circle,
		{ topLeft = tokens.Radius.Large, bottomRight = tokens.Radius.Large },
	}

	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Rounding = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Rounding",
			showLabelColumn = false,
			columnHeaders = CORNER_RADIUS_HEADERS,
			cellColumnWidth = 110,
			rows = {
				{
					cells = Dash.map(cornerRadii, function(cornerRadius)
						return React.createElement(View, {
							tag = BLOCK_TAG,
							Size = UDim2.fromOffset(72, 72),
							cornerRadius = cornerRadius,
						})
					end),
				},
			},
		}),
	})
end

local function GroupTransparencyStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = GROUP_TRANSPARENCY_HEADERS,
			cellColumnWidth = BLOCK_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(GROUP_TRANSPARENCY_OPTIONS, function(transparency)
						return React.createElement(View, {
							tag = `stroke-standard stroke-emphasis {PANEL_TAG}`,
							GroupTransparency = transparency,
						}, {
							Label = React.createElement(Text, {
								Text = CHILD_LABEL,
								tag = "auto-xy text-label-small content-default",
								LayoutOrder = 1,
							}),
							Block = React.createElement(View, {
								tag = `radius-small {BLOCK_TAG}`,
								Size = UDim2.fromOffset(56, 16),
								LayoutOrder = 2,
							}),
						})
					end),
				},
			},
		}),
	})
end

local function InteractiveExample(props: {
	LayoutOrder: number,
	label: string,
	isDisabled: boolean,
})
	local tokens = useTokens()
	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)
	local activationCount, setActivationCount = React.useState(0)

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Subject = React.createElement(View, {
			tag = "col align-x-left gap-small auto-y padding-large radius-medium",
			Size = UDim2.fromOffset(220, 0),
			backgroundStyle = tokens.Color.Surface.Surface_200,
			stateLayer = { mode = StateLayerMode.Default },
			isDisabled = props.isDisabled,
			onActivated = function()
				setActivationCount(function(count)
					return count + 1
				end)
			end,
			onStateChanged = function(newState: ControlState)
				setControlState(newState)
			end,
		}, {
			State = React.createElement(Text, {
				Text = `onStateChanged: {controlState}`,
				tag = "auto-xy text-label-small content-default",
				LayoutOrder = 1,
			}),
			Activations = React.createElement(Text, {
				Text = `onActivated: {activationCount}`,
				tag = "auto-xy text-label-small content-default",
				LayoutOrder = 2,
			}),
		}),
	})
end

local function InteractionStory(): React.ReactNode
	return React.createElement(View, {
		tag = `row wrap align-y-top gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Enabled = React.createElement(InteractiveExample, {
			LayoutOrder = 1,
			label = "Default",
			isDisabled = false,
		}),
		Disabled = React.createElement(InteractiveExample, {
			LayoutOrder = 2,
			label = "isDisabled = true",
			isDisabled = true,
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Layout = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Fill direction",
			showLabelColumn = false,
			columnHeaders = FILL_DIRECTION_HEADERS,
			cellColumnWidth = NARROW_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(FILL_DIRECTIONS, function(fillDirection)
						return React.createElement(Harness, { width = NARROW_HARNESS_WIDTH }, {
							Subject = React.createElement(View, {
								tag = "auto-xy",
								layout = listLayout(fillDirection),
							}, {
								First = React.createElement(Placeholder, { LayoutOrder = 1, label = "1" }),
								Second = React.createElement(Placeholder, { LayoutOrder = 2, label = "2" }),
								Third = React.createElement(Placeholder, { LayoutOrder = 3, label = "3" }),
							}),
						})
					end),
				},
			},
		}),
		Alignment = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Alignment",
			note = "Children move through the space the parent already has, so a subject that hugs its content has none to give; the align-x-* and align-y-* tags set the same two layout values.",
			labelColumnWidth = ALIGNMENT_LABEL_COLUMN_WIDTH,
			columnHeaders = HORIZONTAL_ALIGNMENT_HEADERS,
			cellColumnWidth = ALIGNMENT_CELL_COLUMN_WIDTH,
			rows = alignmentRows(),
		}),
		Gap = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "Gap",
			note = "layout.Padding spaces siblings apart without insetting them from the parent edge, and the gap-* tags set the same value.",
			showLabelColumn = false,
			columnHeaders = GAP_HEADERS,
			cellColumnWidth = GAP_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(GAP_VALUES, function(gap)
						return React.createElement(GapCell, { gap = gap })
					end),
				},
			},
		}),
		Padding = React.createElement(MatrixSection, {
			LayoutOrder = 4,
			name = "Padding",
			note = "A number insets all four sides by the same amount; a table takes a UDim per side, so only the edge it names moves.",
			showLabelColumn = false,
			columnHeaders = PADDING_HEADERS,
			cellColumnWidth = PADDING_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(PADDING_VALUES, function(padding)
						return React.createElement(View, {
							tag = "col auto-xy radius-medium bg-surface-300",
							padding = padding,
						}, {
							Child = React.createElement(Placeholder, { LayoutOrder = 1, label = CHILD_LABEL }),
						})
					end),
				},
			},
		}),
		Wrapping = React.createElement(MatrixSection, {
			LayoutOrder = 5,
			name = "Wrapping",
			note = "Both parents are the same width, so a row that cannot wrap overruns its parent instead of moving children to a second line.",
			showLabelColumn = false,
			columnHeaders = WRAPS_HEADERS,
			cellColumnWidth = WRAP_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(WRAPS_VALUES, function(wraps)
						return React.createElement(Harness, { width = HARNESS_WIDTH }, {
							Subject = React.createElement(View, {
								tag = "size-full-0 auto-y",
								layout = listLayout(Enum.FillDirection.Horizontal, wraps),
							}, wrapChildren()),
						})
					end),
				},
			},
		}),
		Overflow = React.createElement(MatrixSection, {
			LayoutOrder = 6,
			name = "Overflow",
			note = "The child is wider than the outlined parent, so the flag decides whether the spill paints past that edge or is cut off at it.",
			showLabelColumn = false,
			columnHeaders = CLIPS_DESCENDANTS_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(CLIPS_DESCENDANTS_VALUES, function(clipsDescendants)
						return React.createElement(View, {
							tag = OVERFLOW_SUBJECT_TAG,
							Size = OVERFLOW_SUBJECT_SIZE,
							ClipsDescendants = clipsDescendants,
						}, {
							Child = React.createElement(Placeholder, { LayoutOrder = 1, label = LONG_CHILD_LABEL }),
						})
					end),
				},
			},
		}),
	})
end

local SWATCH_SIZE = UDim2.fromOffset(120, 56)

local ALL_CATEGORIES = "All"
local SHADOW_CATEGORY = "Shadow"

type StyleCategory = {
	name: string,
	swatchTag: string,
	tags: { string },
}

local BACKGROUND_TAGS: { string } = {
	"bg-surface-0",
	"bg-surface-100",
	"bg-surface-200",
	"bg-surface-300",
	"bg-shift-100",
	"bg-shift-200",
	"bg-shift-300",
	"bg-shift-400",
	"bg-emphasis",
	"bg-contrast",
	"bg-neutral",
	"bg-alert",
	"bg-success",
	"bg-warning",
	"bg-system-emphasis",
	"bg-system-contrast",
	"bg-system-neutral",
	"bg-system-alert",
	"bg-system-success",
	"bg-system-warning",
	"bg-action-standard",
	"bg-action-emphasis",
	"bg-action-soft-emphasis",
	"bg-action-sub-emphasis",
	"bg-action-subtle",
	"bg-action-alert",
	"bg-action-link",
	"bg-action-utility",
	"bg-action-over-media",
	"bg-over-media-0",
	"bg-over-media-100",
	"bg-over-media-200",
	"bg-over-media-300",
}

local STROKE_TAGS: { string } = {
	"stroke-default",
	"stroke-muted",
	"stroke-emphasis",
	"stroke-contrast",
	"stroke-neutral",
	"stroke-alert",
	"stroke-success",
	"stroke-warning",
	"stroke-system-emphasis",
	"stroke-system-contrast",
	"stroke-system-neutral",
	"stroke-system-alert",
	"stroke-system-success",
	"stroke-system-warning",
	"stroke-action-standard",
	"stroke-action-emphasis",
	"stroke-action-subtle",
	"stroke-action-link",
	"stroke-action-over-media",
}

local STROKE_WIDTH_TAGS: { string } = {
	"stroke-thin",
	"stroke-standard",
	"stroke-thicker",
}

local RADIUS_TAGS: { string } = {
	"radius-none",
	"radius-xsmall",
	"radius-small",
	"radius-medium",
	"radius-large",
	"radius-circle",
	"radius-top-medium",
	"radius-bottom-medium",
	"radius-left-medium",
	"radius-right-medium",
	"radius-top-left-large",
	"radius-bottom-right-large",
}

local STYLE_CATEGORIES: { StyleCategory } = {
	{ name = "Background", swatchTag = "radius-medium stroke-thin stroke-muted", tags = BACKGROUND_TAGS },
	{ name = "Stroke", swatchTag = "radius-medium bg-surface-100 stroke-thicker", tags = STROKE_TAGS },
	{ name = "Stroke width", swatchTag = "radius-medium bg-surface-100 stroke-default", tags = STROKE_WIDTH_TAGS },
	{ name = "Radius", swatchTag = "bg-emphasis", tags = RADIUS_TAGS },
	{ name = SHADOW_CATEGORY, swatchTag = "", tags = SHADOW_TAGS },
}

local CATEGORY_OPTIONS: { string } = { ALL_CATEGORIES }
for _, category in STYLE_CATEGORIES do
	table.insert(CATEGORY_OPTIONS, category.name)
end

local function ShadowCard(props: {
	LayoutOrder: number,
	preset: ShadowPreset,
})
	return React.createElement(View, {
		tag = "col align-x-center gap-xxlarge auto-xy padding-x-xxlarge",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = shadowTag(props.preset),
			tag = "auto-xy padding-bottom-xxlarge text-label-small content-default",
			LayoutOrder = 1,
		}),
		Surface = React.createElement(View, {
			tag = `size-3000 radius-large bg-surface-200 {shadowTag(props.preset)}`,
			LayoutOrder = 2,
		}),
	})
end

local function ShadowPanel(props: {
	LayoutOrder: number,
	colorMode: ColorMode,
})
	local tokens = useTokens()

	-- Each panel hosts its own StyleProvider so the nested StyleLink scopes to this
	-- subtree and leaves the sibling panel on its own color mode.
	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Provider = React.createElement(StyleProvider, {
			colorMode = props.colorMode,
		}, {
			Panel = React.createElement(View, {
				tag = "col align-x-left gap-xxlarge auto-xy radius-large bg-surface-200",
				-- Overlay300 drops 48px with a 56px blur, so the spill below the cards
				-- exceeds the 32px padding tag cap and needs an explicit bottom value.
				padding = {
					top = UDim.new(0, tokens.Size.Size_800),
					left = UDim.new(0, tokens.Size.Size_800),
					right = UDim.new(0, tokens.Size.Size_800),
					bottom = UDim.new(0, tokens.Size.Size_2000),
				},
			}, {
				Label = React.createElement(Text, {
					Text = props.colorMode :: string,
					tag = "auto-xy text-heading-medium content-emphasis",
					LayoutOrder = 1,
				}),
				Cards = React.createElement(
					View,
					{
						tag = "row align-y-center gap-xxlarge auto-xy",
						LayoutOrder = 2,
					},
					Dash.map(SHADOW_PRESETS, function(preset, index)
						return React.createElement(ShadowCard, {
							key = preset,
							LayoutOrder = index,
							preset = preset,
						})
					end)
				),
			}),
		}),
	})
end

local function StyleSwatch(props: {
	LayoutOrder: number,
	label: string,
	swatchTag: string,
})
	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Swatch = React.createElement(View, {
			tag = props.swatchTag,
			Size = SWATCH_SIZE,
		}),
	})
end

local function StyleCategorySection(props: {
	LayoutOrder: number,
	category: StyleCategory,
})
	local category = props.category

	if category.name == SHADOW_CATEGORY then
		return React.createElement(
			Section,
			{
				LayoutOrder = props.LayoutOrder,
				name = `{category.name} ({#category.tags})`,
				contentTag = "row wrap align-y-top gap-xxlarge auto-xy",
			},
			Dash.map(COLOR_MODES, function(colorMode, index)
				return React.createElement(ShadowPanel, {
					key = colorMode,
					LayoutOrder = index,
					colorMode = colorMode,
				})
			end)
		)
	end

	return React.createElement(
		Section,
		{
			LayoutOrder = props.LayoutOrder,
			name = `{category.name} ({#category.tags})`,
			contentTag = "row wrap align-y-top gap-large auto-xy",
		},
		Dash.map(category.tags, function(tag, index)
			return React.createElement(StyleSwatch, {
				key = tag,
				LayoutOrder = index,
				label = tag,
				swatchTag = `{category.swatchTag} {tag}`,
			})
		end)
	)
end

local function StyleCategoryFilters(props: {
	LayoutOrder: number,
	selected: string,
	onSelect: (string) -> (),
})
	return React.createElement(
		View,
		{
			tag = "row wrap gap-small size-full-0 auto-y padding-medium radius-medium bg-surface-100",
			LayoutOrder = props.LayoutOrder,
		},
		Dash.map(CATEGORY_OPTIONS, function(option, index)
			return React.createElement(Chip, {
				key = option,
				text = option,
				size = ChipSize.Small,
				isChecked = props.selected == option,
				onActivated = function()
					props.onSelect(option)
				end,
				LayoutOrder = index,
			})
		end)
	)
end

local function StyleLibrarySection(props: { LayoutOrder: number })
	local selectedCategory, setSelectedCategory = React.useState(ALL_CATEGORIES)

	local categories: { StyleCategory } = if selectedCategory == ALL_CATEGORIES
		then STYLE_CATEGORIES
		else Dash.filter(STYLE_CATEGORIES, function(category: StyleCategory)
			return category.name == selectedCategory
		end)

	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = "Style library",
		contentTag = "col gap-xxlarge size-full-0 auto-y",
	}, {
		Filters = React.createElement(StyleCategoryFilters, {
			LayoutOrder = 1,
			selected = selectedCategory,
			onSelect = setSelectedCategory,
		}),
		Categories = React.createElement(
			View,
			{
				tag = "col gap-xxlarge size-full-0 auto-y",
				LayoutOrder = 2,
			},
			Dash.map(categories, function(category, index)
				return React.createElement(StyleCategorySection, {
					key = category.name,
					LayoutOrder = index,
					category = category,
				})
			end)
		),
	})
end

local function StyleLibraryStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Library = React.createElement(StyleLibrarySection, { LayoutOrder = 1 }),
	})
end

return {
	base = true,
	summary = "View is the layout primitive every other component builds on: a styled, optionally interactive container.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Shape",
			story = ShapeStory,
		},
		{
			name = "GroupTransparency",
			summary = "Any value above 0 renders the subtree into a CanvasGroup, so the group fades as one instead of per child.",
			story = GroupTransparencyStory,
		},
		{
			name = "Interaction",
			summary = "Passing onActivated or onStateChanged swaps the engine instance to an ImageButton; without one, a View never reports state.",
			story = InteractionStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "Style library",
			summary = "Developer catalog of the background, stroke, and radius tags a View can carry.",
			story = StyleLibraryStory,
		},
	},
	controls = {
		sizePreset = SIZE_PRESET_ORDER,
		aspectRatioPreset = ASPECT_RATIO_PRESET_ORDER,
		cornerRadiusPreset = CORNER_RADIUS_PRESET_ORDER,
		paddingPreset = PADDING_PRESET_ORDER,
		backgroundStylePreset = BACKGROUND_PRESET_ORDER,
		strokePreset = STROKE_PRESET_ORDER,
		GroupTransparency = GROUP_TRANSPARENCY_OPTIONS,
		hasOnActivated = false,
		isDisabled = false,
	},
}
