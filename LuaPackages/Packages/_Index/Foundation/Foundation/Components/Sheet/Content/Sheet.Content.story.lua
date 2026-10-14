local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Sheet = require(Foundation.Components.Sheet)
local SheetStoryHelpers = require(script.Parent.Parent.SheetStoryHelpers)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local LabeledSheetTrigger = SheetStoryHelpers.LabeledSheetTrigger
local Section = SheetStoryHelpers.Section
local SheetMatrix = SheetStoryHelpers.SheetMatrix
local centerHeightFor = SheetStoryHelpers.centerHeightFor
local placeholderText = SheetStoryHelpers.placeholderText
local prefersCenter = SheetStoryHelpers.prefersCenter
local variantRows = SheetStoryHelpers.variantRows
local variantTrigger = SheetStoryHelpers.variantTrigger

local matrixLabel = MatrixGridShared.matrixLabel

local VARIANT_ORDER = SheetStoryHelpers.VARIANT_ORDER
local OVERFLOW_LIST_LENGTH = SheetStoryHelpers.OVERFLOW_LIST_LENGTH
local GROWING_INITIAL_ROW_COUNT = 20
local GROWING_STREAM_INTERVAL = 0.5
local GROWING_SNAP_POINTS = { 0.4, 0.9 }
local SNAP_POINT_PRESETS = {
	Default = nil :: { number }?,
	["Half and tall"] = { 0.5, 0.9 },
}
local REVERSED_SNAP_POINT_ROWS: { { label: string, snapPoints: { number } } } = {
	{ label = "{ 0.4, 0.9 }", snapPoints = { 0.4, 0.9 } },
	{ label = "{ 0.3, 0.6, 0.9 }", snapPoints = { 0.3, 0.6, 0.9 } },
}

type Controls = {
	isContentFullBleed: boolean,
	isReversed: boolean,
	rootShowHeader: boolean,
	rootShowActions: boolean,
	rootShowFullBleed: boolean,
	rootSheetTypePreset: SheetStoryHelpers.SheetVariant,
	rootSnapPointsPreset: string,
}

type StoryProps = {
	controls: Controls,
}

type BehaviorExampleProps = {
	LayoutOrder: number,
}

local function PlaygroundStory(props: StoryProps)
	local controls = props.controls

	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Trigger = React.createElement(LabeledSheetTrigger, {
			preferCenterSheet = prefersCenter(controls.rootSheetTypePreset),
			centerSheetHeight = centerHeightFor(controls.rootSheetTypePreset),
			snapPoints = SNAP_POINT_PRESETS[controls.rootSnapPointsPreset],
			childrenOptions = {
				showHeader = controls.rootShowHeader,
				showActions = controls.rootShowActions,
				showFullBleed = controls.rootShowFullBleed,
				isContentFullBleed = controls.isContentFullBleed,
				isContentReversed = controls.isReversed,
				highlightedSlot = "Content",
			},
		}),
	})
end

local function SnapPointsTrigger(props: { snapPoints: { number }, isReversed: boolean })
	return React.createElement(LabeledSheetTrigger, {
		snapPoints = props.snapPoints,
		childrenOptions = {
			contentListLength = OVERFLOW_LIST_LENGTH,
			isContentReversed = props.isReversed,
			actionCount = 1,
			highlightedSlot = "Content",
		},
	})
end

local function ContentRow(props: { label: string, LayoutOrder: number })
	return React.createElement(View, {
		tag = "row align-y-center size-full-0 auto-y padding-medium radius-medium bg-shift-200",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-label-medium content-muted",
			LayoutOrder = 1,
		}),
	})
end

local function GrowingContentExample(props: BehaviorExampleProps)
	local isOpen, setIsOpen = React.useState(false)
	local rowCount, setRowCount = React.useState(GROWING_INITIAL_ROW_COUNT)
	local isStreaming, setIsStreaming = React.useState(false)

	React.useEffect(function(): (() -> ())?
		if not isStreaming then
			return nil
		end
		local thread = task.spawn(function()
			while true do
				task.wait(GROWING_STREAM_INTERVAL)
				setRowCount(function(count: number)
					return count + 1
				end)
			end
		end)
		return function()
			task.cancel(thread)
		end
	end, { isStreaming })

	local rows: { [string]: React.ReactNode } = {}
	for index = 1, rowCount do
		rows[`Row{index}`] = React.createElement(ContentRow, {
			label = `Row {index}`,
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Open = React.createElement(Button, {
			text = "Open",
			onActivated = function()
				setIsOpen(true)
			end,
			variant = ButtonVariant.Emphasis,
			LayoutOrder = 1,
		}),
		SheetRoot = if isOpen
			then React.createElement(Sheet.Root, {
				isOpen = true,
				snapPoints = GROWING_SNAP_POINTS,
				onClose = function()
					setIsStreaming(false)
					setIsOpen(false)
				end,
			}, {
				Header = React.createElement(Sheet.Header, nil, {
					Title = placeholderText(SheetStoryHelpers.TITLE_TEXT, 1),
				}),
				Content = React.createElement(Sheet.Content, { isReversed = true }, rows),
				Actions = React.createElement(Sheet.Actions, nil, {
					Add = React.createElement(Button, {
						text = "Add row",
						variant = ButtonVariant.Emphasis,
						fillBehavior = FillBehavior.Fill,
						onActivated = function()
							setRowCount(function(count: number)
								return count + 1
							end)
						end,
						LayoutOrder = 1,
					}),
					Stream = React.createElement(Button, {
						text = if isStreaming then "Stop adding" else "Keep adding",
						fillBehavior = FillBehavior.Fill,
						onActivated = function()
							setIsStreaming(not isStreaming)
						end,
						LayoutOrder = 2,
					}),
				}),
			})
			else nil,
	})
end

local function ReversedContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		SnapPoints = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Snap points",
			note = "Bottom sheet only (Small display size, portrait). Drag or tap the gripper between snap points: with isReversed the last row and the actions stay put and the top edge reveals more rows. Watch the gap between the last row and the actions while dragging; if it opens and closes, the content is lagging the sheet. At the lower snap point, the content scrolls to its first row; dragging up at the last row expands the sheet, and dragging down at the first row collapses it.",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				labelColumnHeader = "snapPoints",
				columnHeaders = { "false", "true" },
				rows = Dash.map(REVERSED_SNAP_POINT_ROWS, function(row)
					return {
						label = matrixLabel(row.label),
						cells = {
							React.createElement(SnapPointsTrigger, {
								snapPoints = row.snapPoints,
								isReversed = false,
							}),
							React.createElement(SnapPointsTrigger, {
								snapPoints = row.snapPoints,
								isReversed = true,
							}),
						},
					}
				end),
			}),
		}),
		GrowingContent = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Growing content",
			note = "Rows are added at the end. While scrolled to the end the content follows new rows, including mid-drag between snap points; scroll up at the tallest snap point first and it stays where you left it. The header divider shows while rows are hidden above, and the actions divider shows while rows are hidden below.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(GrowingContentExample, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Bleed = React.createElement(Section, {
			LayoutOrder = 1,
			name = "isContentFullBleed",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = { "false", "true" },
				rows = variantRows(function(variant)
					return {
						variantTrigger(variant, {
							childrenOptions = { highlightedSlot = "Content" },
						}),
						variantTrigger(variant, {
							childrenOptions = {
								isContentFullBleed = true,
								highlightedSlot = "Content",
							},
						}),
					}
				end),
			}),
		}),
	})
end

return {
	summary = "The scroll surface for [[Sheet]]. Do not wrap this slot in another ScrollingFrame.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Reversed content", story = ReversedContentStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		isContentFullBleed = false,
		isReversed = false,
		rootShowHeader = true,
		rootShowActions = false,
		rootShowFullBleed = false,
		rootSheetTypePreset = VARIANT_ORDER,
		rootSnapPointsPreset = { "Default", "Half and tall" },
	},
}
