local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local InputLabel = require(Foundation.Components.InputLabel)
local InputLabelSize = require(Foundation.Enums.InputLabelSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid

type InputLabelSize = InputLabelSize.InputLabelSize

local DEFAULT_TEXT = "Label"
local LONG_TEXT = "This is a longer label that should wrap onto additional lines"
local WRAP_PARENT_WIDTH = 120
local CELL_COLUMN_WIDTH = 160
local IN_CONTEXT_INPUT_WIDTH = 240

local SIZE_ORDER: { InputLabelSize } = {
	InputLabelSize.XSmall,
	InputLabelSize.Small,
	InputLabelSize.Medium,
	InputLabelSize.Large,
}

local PLAYGROUND_SIZE_OPTIONS: { InputLabelSize } = {
	InputLabelSize.Medium,
	InputLabelSize.XSmall,
	InputLabelSize.Small,
	InputLabelSize.Large,
}

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

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

local function PlaygroundStory(props: {
	controls: {
		Text: string,
		size: InputLabelSize,
		isRequired: boolean?,
		isDisabled: boolean,
		RichText: boolean,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
	}, {
		InputLabel = React.createElement(InputLabel, {
			Text = controls.Text,
			size = controls.size,
			isRequired = controls.isRequired,
			isDisabled = controls.isDisabled,
			RichText = controls.RichText,
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
							return React.createElement(InputLabel, {
								Text = DEFAULT_TEXT,
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
			columnHeaders = { "Enabled", "Disabled", "Required" },
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = {
						React.createElement(InputLabel, {
							Text = DEFAULT_TEXT,
						}),
						React.createElement(InputLabel, {
							Text = DEFAULT_TEXT,
							isDisabled = true,
						}),
						React.createElement(InputLabel, {
							Text = DEFAULT_TEXT,
							isRequired = true,
						}),
					},
				},
			},
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Wrapping = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Wrapping",
			contentTag = "auto-xy",
		}, {
			Parent = React.createElement(View, {
				tag = "auto-y padding-small radius-small bg-surface-100",
				Size = UDim2.fromOffset(WRAP_PARENT_WIDTH, 0),
			}, {
				InputLabel = React.createElement(InputLabel, {
					Text = LONG_TEXT,
				}),
			}),
		}),
		RichText = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Rich text",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = { "Off", "On" },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = {
							React.createElement(InputLabel, {
								Text = "<b>Label</b>",
							}),
							React.createElement(InputLabel, {
								Text = "<b>Label</b>",
								RichText = true,
							}),
						},
					},
				},
			}),
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		InCheckbox = React.createElement(Section, {
			LayoutOrder = 1,
			name = "In Checkbox",
			contentTag = "auto-xy",
		}, {
			Checkbox = React.createElement(Checkbox, {
				label = DEFAULT_TEXT,
				onActivated = function() end,
			}),
		}),
		InTextInput = React.createElement(Section, {
			LayoutOrder = 2,
			name = "In TextInput",
			contentTag = "auto-xy",
		}, {
			TextInput = React.createElement(TextInput, {
				label = DEFAULT_TEXT,
				text = "",
				width = UDim.new(0, IN_CONTEXT_INPUT_WIDTH),
				onChanged = function() end,
			}),
		}),
	})
end

return {
	summary = "InputLabel is the text label paired with an input control.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
		{ name = "States", story = StatesStory },
		{ name = "Content", story = ContentStory },
		{ name = "In context", story = InContextStory },
	},
	controls = {
		Text = DEFAULT_TEXT,
		size = PLAYGROUND_SIZE_OPTIONS,
		isRequired = { React.None, false, true },
		isDisabled = false,
		RichText = false,
	},
}
