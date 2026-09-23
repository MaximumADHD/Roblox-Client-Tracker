local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection).StorySection
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixInfoLabel = MatrixGridShared.matrixInfoLabel
local matrixLabel = MatrixGridShared.matrixLabel

local IconName = BuilderIcons.Icon

type InputSize = InputSize.InputSize
type MatrixGridRow = MatrixGridShared.MatrixGridRow
type IsContained = boolean | { isContained: false, hasMargin: boolean? }
type ListItemInput = "Chevron" | "None" | {
	type: "Checkbox" | "Toggle" | "Radio",
	isChecked: boolean?,
	onActivated: ((boolean) -> ())?,
}

local LIST_WIDTH = 320
local CONTEXT_SIZE_WIDTH = 160
local WRAPPING_WIDTH = 420
local LABEL_COLUMN_WIDTH = 200
local STORY_FRAME_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local UNSET_SIZE = "Default"

local AVATAR_USER_ID = 24813339
local MEDIA_IMAGE = "rbxthumb://type=GameIcon&id=1818&w=150&h=150"
local LONG_TITLE = "A title long enough to run past the end of the row"
local LONG_METADATA = "metadata-value-that-never-breaks"
local LONG_DESCRIPTION = "A description with enough copy to continue onto several lines inside the row."
local NO_LEADING = "None"
local UNSET_INPUT = "Default"

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local SIZE_HEADERS: { string } = {}
for _, size in SIZE_ORDER do
	table.insert(SIZE_HEADERS, size)
end

local SIZE_CONTROL_OPTIONS: { string } = { UNSET_SIZE }
for _, size in SIZE_ORDER do
	table.insert(SIZE_CONTROL_OPTIONS, size)
end

local SELECTION_HEADERS = { "unchecked", "checked" }

type ContainedCase = { name: string, isContained: IsContained }

local CONTAINED_ORDER: { ContainedCase } = {
	{ name = "Margin", isContained = { isContained = false, hasMargin = true } },
	{ name = "Full bleed", isContained = { isContained = false, hasMargin = false } },
	{ name = "Contained", isContained = true },
}

type InputCase = { name: string, api: string, input: ListItemInput }

local INPUT_ORDER: { InputCase } = {
	{ name = "Chevron", api = "input = ListItemInputType.Chevron", input = ListItemInputType.Chevron },
	{
		name = "Checkbox",
		api = "input = { type = Checkbox, isChecked }",
		input = { type = ListItemInputType.Checkbox, isChecked = false },
	},
	{
		name = "Toggle",
		api = "input = { type = Toggle, isChecked }",
		input = { type = ListItemInputType.Toggle, isChecked = false },
	},
	{
		name = "Radio",
		api = "input = { type = Radio, isChecked }",
		input = { type = ListItemInputType.Radio, isChecked = false },
	},
}

type ControlledInputType = "Checkbox" | "Toggle" | "Radio"

local CONTROLLED_INPUT_ORDER: { ControlledInputType } = {
	ListItemInputType.Checkbox,
	ListItemInputType.Toggle,
	ListItemInputType.Radio,
}

local CONTROLLED_INPUT_HEADERS: { string } = {}
for _, inputType in CONTROLLED_INPUT_ORDER do
	table.insert(CONTROLLED_INPUT_HEADERS, inputType)
end

local LEADING_CONTROL_OPTIONS: { string } = { NO_LEADING, IconName.Robux }

local CONTAINED_CONTROL_OPTIONS: { string } = {}
for _, case in CONTAINED_ORDER do
	table.insert(CONTAINED_CONTROL_OPTIONS, case.name)
end

local INPUT_CONTROL_OPTIONS: { string } = { UNSET_INPUT }
for _, case in INPUT_ORDER do
	table.insert(INPUT_CONTROL_OPTIONS, case.name)
end
table.insert(INPUT_CONTROL_OPTIONS, ListItemInputType.None)

local function containmentFor(name: string): IsContained
	for _, case in CONTAINED_ORDER do
		if case.name == name then
			return case.isContained
		end
	end
	return CONTAINED_ORDER[1].isContained
end

local function paintsContainment(isContained: IsContained): boolean
	return not (if type(isContained) == "boolean" then isContained else isContained.isContained)
end

local function noop() end

local function inputFor(name: string, isChecked: boolean): ListItemInput?
	if name == UNSET_INPUT then
		return nil
	elseif name == ListItemInputType.Chevron then
		return ListItemInputType.Chevron
	elseif name == ListItemInputType.None then
		return ListItemInputType.None
	end
	return { type = name :: "Checkbox" | "Toggle" | "Radio", isChecked = isChecked, onActivated = noop }
end

local function emptyToNil(value: string): string?
	return if value == "" then nil else value
end

local function sizeFor(name: string): InputSize?
	return if name == UNSET_SIZE then nil else name :: InputSize
end

local function logActivated()
	print("List.Item activated")
end

local function SlotPlaceholder(props: { label: string, LayoutOrder: number? }): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "auto-xy padding-x-small padding-y-xsmall radius-medium bg-shift-200",
			LayoutOrder = props.LayoutOrder,
		},
		React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small content-muted",
		})
	)
end

type ShellProps = {
	LayoutOrder: number?,
	isContained: IsContained?,
	size: InputSize?,
	isPainted: boolean?,
	width: number?,
	children: React.ReactNode?,
}

local function Shell(props: ShellProps): React.ReactNode
	return React.createElement(View, {
		tag = if props.isPainted then "col auto-y bg-surface-100" else "col auto-y",
		Size = UDim2.fromOffset(props.width or LIST_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		List = React.createElement(List.Root, {
			isContained = if props.isContained ~= nil then props.isContained else true,
			size = props.size,
			LayoutOrder = 1,
		}, props.children),
	})
end

type PlaygroundControls = {
	rootSize: string,
	rootIsContained: string,
	leading: string,
	title: string,
	metadata: string,
	description: string,
	inputType: string,
	isChecked: boolean,
	isTappable: boolean,
	hasTrailing: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local isContained = containmentFor(controls.rootIsContained)
	local input: ListItemInput? = if Flags.FoundationListItemDecoupledInput
		then inputFor(controls.inputType, controls.isChecked)
		else nil
	local inputOwnsActivation = typeof(input) == "table"

	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Shell = React.createElement(Shell, {
			LayoutOrder = 1,
			size = sizeFor(controls.rootSize),
			isContained = isContained,
			isPainted = paintsContainment(isContained),
		}, {
			Subject = React.createElement(List.Item, {
				leading = if controls.leading == NO_LEADING then nil else controls.leading,
				title = {
					title = emptyToNil(controls.title),
					metadata = emptyToNil(controls.metadata),
				},
				description = emptyToNil(controls.description),
				trailing = if controls.hasTrailing
					then React.createElement(SlotPlaceholder, { label = "Trailing slot" }) :: React.ReactNode
					else nil,
				onActivated = if controls.isTappable and not inputOwnsActivation then logActivated else nil,
				input = input,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function sizeCells(): { React.ReactNode }
	local cells: { React.ReactNode } = {}
	for _, size in SIZE_ORDER do
		table.insert(
			cells,
			React.createElement(Shell, {
				size = size :: InputSize,
				width = CONTEXT_SIZE_WIDTH,
			}, {
				Item = React.createElement(List.Item, {
					title = "Title",
					LayoutOrder = 1,
				}),
			})
		)
	end
	return cells
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		ContextSize = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Context size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CONTEXT_SIZE_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = { { cells = sizeCells() } },
			}),
		}),
	})
end

local function stateInputCells(inputType: ControlledInputType): { React.ReactNode }
	return Dash.map({ false, true }, function(isChecked: boolean)
		return React.createElement(Shell, { width = LIST_WIDTH }, {
			Item = React.createElement(List.Item, {
				title = "Title",
				input = {
					type = inputType,
					isChecked = isChecked,
					onActivated = noop,
				},
				LayoutOrder = 1,
			}),
		})
	end)
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Matrix = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 1,
		}, {
			Grid = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = SELECTION_HEADERS,
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = Dash.map(CONTROLLED_INPUT_ORDER, function(inputType: ControlledInputType): MatrixGridRow
					return {
						label = matrixLabel(inputType),
						cells = stateInputCells(inputType),
					}
				end),
			}),
		}),
	})
end

local function ClickableExample(props: { LayoutOrder: number? }): React.ReactNode
	local clickCount, setClickCount = React.useState(0)

	return React.createElement(Shell, { LayoutOrder = props.LayoutOrder }, {
		Item = React.createElement(List.Item, {
			title = { title = "Title", metadata = `Clicked {clickCount}` },
			onActivated = function()
				setClickCount(clickCount + 1)
			end,
			LayoutOrder = 1,
		}),
	})
end

local function ClickableStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Example = React.createElement(ClickableExample, { LayoutOrder = 1 }),
	})
end

local function ControlledInputExample(props: { type: ControlledInputType }): React.ReactNode
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Shell, { width = LIST_WIDTH }, {
		Item = React.createElement(List.Item, {
			title = { title = "Title", metadata = `isChecked = {isChecked}` },
			input = {
				type = props.type,
				isChecked = isChecked,
				onActivated = function(checked: boolean)
					setIsChecked(checked)
				end,
			},
			LayoutOrder = 1,
		}),
	})
end

local function controlledInputCells(): { React.ReactNode }
	return Dash.map(CONTROLLED_INPUT_ORDER, function(inputType)
		return React.createElement(ControlledInputExample, { type = inputType })
	end)
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		InputActivation = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Input activation",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = CONTROLLED_INPUT_HEADERS,
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = { { cells = controlledInputCells() } },
			}),
		}),
	})
end

local function leadingSizeCells(leading: unknown): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size)
		return React.createElement(Shell, { size = size :: InputSize, width = CONTEXT_SIZE_WIDTH }, {
			Item = React.createElement(List.Item, {
				leading = leading :: any,
				title = "Title",
				LayoutOrder = 1,
			}),
		})
	end)
end

local function leadingRows(): { MatrixGridRow }
	local rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
		return leadingSizeCells(iconExample.name)
	end)
	table.insert(rows, {
		label = matrixInfoLabel("Avatar config", "leading = { type = Avatar, userId }"),
		cells = leadingSizeCells({ type = AccessoryType.Avatar, userId = AVATAR_USER_ID }),
	})
	table.insert(rows, {
		label = matrixInfoLabel("Media config · Image component", "leading = { iconName = rbxthumb://... }"),
		cells = leadingSizeCells({ iconName = MEDIA_IMAGE }),
	})
	return rows
end

local function textSizeCells(): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size)
		return React.createElement(Shell, { size = size :: InputSize, width = CONTEXT_SIZE_WIDTH }, {
			Item = React.createElement(List.Item, {
				title = { title = "Title", metadata = "Metadata" },
				description = "Description",
				LayoutOrder = 1,
			}),
		})
	end)
end

local function inputSizeCells(input: ListItemInput): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size)
		return React.createElement(Shell, { size = size :: InputSize, width = CONTEXT_SIZE_WIDTH }, {
			Item = React.createElement(List.Item, {
				title = "Title",
				onActivated = noop,
				input = input,
				LayoutOrder = 1,
			}),
		})
	end)
end

local function inputRows(): { MatrixGridRow }
	return Dash.map(INPUT_ORDER, function(case: InputCase): MatrixGridRow
		return {
			label = matrixInfoLabel(case.name, case.api),
			cells = inputSizeCells(case.input),
		}
	end)
end

local function trailingCells(): { React.ReactNode }
	return {
		React.createElement(Shell, { width = LIST_WIDTH }, {
			Item = React.createElement(List.Item, {
				title = "Title",
				trailing = React.createElement(SlotPlaceholder, { label = "Trailing slot" }) :: React.ReactNode,
				LayoutOrder = 1,
			}),
		}),
		React.createElement(Shell, { width = LIST_WIDTH }, {
			Item = React.createElement(List.Item, {
				title = "Title",
				trailing = React.createElement(SlotPlaceholder, { label = "Trailing slot" }) :: React.ReactNode,
				onActivated = noop,
				LayoutOrder = 1,
			}),
		}),
	}
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Leading = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Leading",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = SIZE_HEADERS,
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = CONTEXT_SIZE_WIDTH,
				rowAlign = "top",
				rowGap = "xxlarge",
				rows = leadingRows(),
			}),
		}),
		TitleAndDescription = React.createElement(StorySection, {
			LayoutOrder = 2,
			caption = "Title and description",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CONTEXT_SIZE_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = { { cells = textSizeCells() } },
			}),
		}),
		Input = if Flags.FoundationListItemDecoupledInput
			then React.createElement(StorySection, {
				LayoutOrder = 3,
				caption = "Input",
				contentTag = "auto-xy",
			}, {
				Matrix = React.createElement(MatrixGrid, {
					labelColumnWidth = LABEL_COLUMN_WIDTH,
					columnHeaders = SIZE_HEADERS,
					cellColumnWidth = CONTEXT_SIZE_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rowAlign = "top",
					rows = inputRows(),
				}),
			})
			else nil,
		Trailing = React.createElement(StorySection, {
			LayoutOrder = 4,
			caption = "Trailing",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = { "Trailing", "Trailing and input" },
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = { { cells = trailingCells() } },
			}),
		}),
		Wrapping = React.createElement(StorySection, {
			LayoutOrder = 5,
			caption = "Wrapping",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(Shell, { LayoutOrder = 1, width = WRAPPING_WIDTH }, {
				Item = React.createElement(List.Item, {
					leading = IconName.Robux,
					title = { title = LONG_TITLE, metadata = LONG_METADATA },
					description = LONG_DESCRIPTION,
					trailing = React.createElement(SlotPlaceholder, { label = "Trailing slot" }) :: React.ReactNode,
					onActivated = noop,
					LayoutOrder = 1,
				}),
			}),
		}),
	})
end

local CONTROLS: { [string]: unknown } = Dash.join({
	rootSize = SIZE_CONTROL_OPTIONS,
	rootIsContained = CONTAINED_CONTROL_OPTIONS,
	leading = LEADING_CONTROL_OPTIONS,
	title = "Title",
	metadata = "Metadata",
	description = "Description",
	isTappable = true,
	hasTrailing = false,
}, if Flags.FoundationListItemDecoupledInput then { inputType = INPUT_CONTROL_OPTIONS, isChecked = false } else {})

local stories = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Sizing",
		story = SizingStory,
	},
	{
		name = "Clickable",
		story = ClickableStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

if Flags.FoundationListItemDecoupledInput then
	table.insert(stories, 3, {
		name = "States",
		summary = "Accessory scale is signed off in Content. This grid is checked fill at the default size.",
		story = StatesStory,
	})
	table.insert(stories, 5, {
		name = "Controlled component",
		story = ControlledStory,
	})
end

return {
	summary = "A row inside List.Root: a leading accessory, a title with optional metadata and description, a free "
		.. "trailing slot, and a trailing input accessory. It reads its size from the list.",
	stories = stories,
	controls = CONTROLS,
}
