local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

type MatrixGridRow = MatrixGridShared.MatrixGridRow

type InputSize = InputSize.InputSize
type FillBehavior = FillBehavior.FillBehavior
type IconVariant = BuilderIcons.IconVariant
type IconButtonVariant =
	typeof(ButtonVariant.Standard)
	| typeof(ButtonVariant.Emphasis)
	| typeof(ButtonVariant.Utility)
	| typeof(ButtonVariant.OverMedia)
	| typeof(ButtonVariant.Alert)

local DEFAULT_ICON = IconName.House
local FILL_PARENT_WIDTH = 280

local CELL_COLUMN_WIDTH = 56
local PAINTED_CELL_COLUMN_WIDTH = 72
local CONTROL_ROW_TEXT_INPUT_WIDTH = 160
local CONTROL_ROW_CELL_COLUMN_WIDTH = 304
local ICON_TYPE_LABEL_COLUMN_WIDTH = 260
local SHAPE_LABEL_COLUMN_WIDTH = 60
local SIZE_LABEL_COLUMN_WIDTH = 60

local VARIANT_ORDER: { IconButtonVariant } = {
	ButtonVariant.Utility,
	ButtonVariant.Standard,
	ButtonVariant.Emphasis,
	ButtonVariant.OverMedia,
	ButtonVariant.Alert,
}

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

local ICON_VARIANT_ORDER: { IconVariant } = {
	IconVariant.Regular,
	IconVariant.Filled,
}

local PLAYGROUND_ICON_OPTIONS = Dash.map(StoryIcons.ICON_TYPE_EXAMPLES, function(example): string
	return example.name
end)

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local VARIANT_HEADERS = Dash.map(VARIANT_ORDER, function(value): string
	return value
end)

local FILL_BEHAVIOR_ORDER: { FillBehavior } = {
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local FILL_BEHAVIOR_HEADERS = Dash.map(FILL_BEHAVIOR_ORDER, function(value): string
	return value
end)

local function noop() end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function StoryIconButton(props: {
	variant: IconButtonVariant?,
	size: InputSize?,
	icon: (string | { name: string, variant: IconVariant? })?,
	isDisabled: boolean?,
	isCircular: boolean?,
	fillBehavior: FillBehavior?,
	onActivated: (() -> ())?,
	LayoutOrder: number?,
})
	return React.createElement(IconButton, {
		icon = props.icon or DEFAULT_ICON,
		variant = props.variant,
		size = props.size,
		isDisabled = props.isDisabled,
		isCircular = props.isCircular,
		fillBehavior = props.fillBehavior,
		onActivated = props.onActivated or noop,
		LayoutOrder = props.LayoutOrder,
	})
end

local function OverMediaFrame(props: {
	children: React.ReactNode,
}): React.ReactNode
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-medium radius-medium",
		backgroundStyle = tokens.Color.Extended.White.White_100,
	}, {
		Gradient = React.createElement("UIGradient", {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, tokens.Color.Extended.Green.Green_500.Color3),
				ColorSequenceKeypoint.new(1, tokens.Color.Extended.Blue.Blue_500.Color3),
			}),
		}),
		Content = props.children,
	})
end

local function VariantCell(props: {
	variant: IconButtonVariant,
	isDisabled: boolean?,
}): React.ReactNode
	local button = React.createElement(StoryIconButton, {
		variant = props.variant,
		isDisabled = props.isDisabled,
	})

	if props.variant == ButtonVariant.OverMedia then
		return React.createElement(OverMediaFrame, nil, button)
	end

	return button
end

local function PlaygroundStory(props: {
	controls: {
		icon: string,
		iconVariant: IconVariant,
		variant: IconButtonVariant,
		size: InputSize,
		isDisabled: boolean,
		isCircular: boolean,
		fillBehavior: FillBehavior?,
	},
}): React.ReactNode
	local controls = props.controls
	local fillBehavior: FillBehavior? = if controls.fillBehavior == React.None then nil else controls.fillBehavior

	local button = React.createElement(IconButton, {
		icon = {
			name = controls.icon,
			variant = controls.iconVariant,
		},
		variant = controls.variant,
		size = controls.size,
		isDisabled = controls.isDisabled,
		isCircular = controls.isCircular,
		fillBehavior = fillBehavior,
		onActivated = function()
			print(`{controls.variant} IconButton activated`)
		end,
	})

	if controls.variant == ButtonVariant.OverMedia then
		return React.createElement(View, {
			tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
		}, {
			Media = React.createElement(OverMediaFrame, nil, button),
		})
	end

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
	}, {
		IconButton = button,
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = VARIANT_HEADERS,
			cellColumnWidth = PAINTED_CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = Dash.map(VARIANT_ORDER, function(variant)
						return React.createElement(VariantCell, {
							variant = variant,
						})
					end),
				},
			},
		}),
	})
end

local function FillBehaviorCell(props: {
	fillBehavior: FillBehavior,
	isCircular: boolean?,
}): React.ReactNode
	return React.createElement(View, {
		tag = "row gap-medium auto-y padding-large radius-medium bg-surface-100",
		Size = UDim2.fromOffset(FILL_PARENT_WIDTH, 0),
	}, {
		Button = React.createElement(StoryIconButton, {
			variant = ButtonVariant.Emphasis,
			fillBehavior = props.fillBehavior,
			isCircular = props.isCircular,
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
							return React.createElement(StoryIconButton, {
								size = size,
							})
						end),
					},
				},
			}),
		}),
		FillBehavior = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Fill behavior",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = FILL_BEHAVIOR_HEADERS,
				cellColumnWidth = FILL_PARENT_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior)
							return React.createElement(FillBehaviorCell, {
								fillBehavior = fillBehavior,
							})
						end),
					},
				},
			}),
		}),
	})
end

local CIRCULAR_ORDER: { { label: string, isCircular: boolean } } = {
	{ label = "false", isCircular = false },
	{ label = "true", isCircular = true },
}

local function ShapeStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Rounding = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Rounding",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = SHAPE_LABEL_COLUMN_WIDTH,
				columnHeaders = FILL_BEHAVIOR_HEADERS,
				cellColumnWidth = FILL_PARENT_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = Dash.map(CIRCULAR_ORDER, function(shape): MatrixGridRow
					return {
						label = matrixLabel(shape.label),
						cells = Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior)
							return React.createElement(FillBehaviorCell, {
								fillBehavior = fillBehavior,
								isCircular = if shape.isCircular then true else nil,
							})
						end),
					}
				end),
			}),
		}),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Disabled = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Disabled",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = VARIANT_HEADERS,
				cellColumnWidth = PAINTED_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(VARIANT_ORDER, function(variant)
							return React.createElement(VariantCell, {
								variant = variant,
								isDisabled = true,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		IconVariations = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Icon variations",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = ICON_TYPE_LABEL_COLUMN_WIDTH,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
					return Dash.map(SIZE_ORDER, function(size)
						return React.createElement(StoryIconButton, {
							icon = iconExample.name,
							size = size,
						})
					end)
				end),
			}),
		}),
	})
end

local function InverseSurfaceCell(props: { variant: IconButtonVariant }): React.ReactNode
	local tokens = useTokens()
	local presentationValue = React.useMemo(function()
		return { colorNamespace = ColorNamespace.Inverse }
	end, {})

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-medium radius-medium",
		backgroundStyle = tokens.Inverse.Surface.Surface_100,
	}, {
		Button = React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			React.createElement(StoryIconButton, {
				variant = props.variant,
			})
		),
	})
end

local function ControlRowCell(props: { size: InputSize }): React.ReactNode
	return React.createElement(View, {
		tag = "row align-y-top gap-medium auto-xy",
	}, {
		Button = React.createElement(Button, {
			text = "Label",
			variant = ButtonVariant.Standard,
			size = props.size,
			onActivated = noop,
			LayoutOrder = 1,
		}),
		IconButton = React.createElement(StoryIconButton, {
			variant = ButtonVariant.Standard,
			size = props.size,
			LayoutOrder = 2,
		}),
		TextInput = React.createElement(TextInput, {
			text = "",
			label = "",
			placeholder = "Value",
			onChanged = noop,
			size = props.size,
			width = UDim.new(0, CONTROL_ROW_TEXT_INPUT_WIDTH),
			LayoutOrder = 3,
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
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = VARIANT_HEADERS,
				cellColumnWidth = PAINTED_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(VARIANT_ORDER, function(variant)
							return React.createElement(InverseSurfaceCell, {
								variant = variant,
							})
						end),
					},
				},
			}),
		}),
		AdjacentControls = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Adjacent controls",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showHeader = false,
				columnHeaders = {},
				labelColumnWidth = SIZE_LABEL_COLUMN_WIDTH,
				cellColumnWidth = CONTROL_ROW_CELL_COLUMN_WIDTH,
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
					return {
						label = matrixLabel(size),
						cells = {
							React.createElement(ControlRowCell, {
								size = size,
							}),
						},
					}
				end),
			}),
		}),
	})
end

return {
	summary = "IconButton is a pressable control that shows a single icon.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Variants", story = VariantsStory },
		{ name = "Sizing", story = SizingStory },
		{ name = "Shape", story = ShapeStory },
		{ name = "States", story = StatesStory },
		{ name = "Content", story = ContentStory },
		{ name = "In context", story = InContextStory },
	},
	controls = {
		icon = PLAYGROUND_ICON_OPTIONS,
		iconVariant = ICON_VARIANT_ORDER,
		variant = VARIANT_ORDER,
		size = PLAYGROUND_SIZE_OPTIONS,
		isDisabled = false,
		isCircular = false,
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
	},
}
