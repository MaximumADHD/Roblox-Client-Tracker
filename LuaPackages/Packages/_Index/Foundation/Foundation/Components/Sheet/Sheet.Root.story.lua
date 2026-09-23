local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogSize = require(Foundation.Enums.DialogSize)
local Sheet = require(Foundation.Components.Sheet)
local SheetStoryHelpers = require(script.Parent.SheetStoryHelpers)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local LabeledSheetTrigger = SheetStoryHelpers.LabeledSheetTrigger
local Section = SheetStoryHelpers.Section
local SheetMatrix = SheetStoryHelpers.SheetMatrix
local columnLabels = SheetStoryHelpers.columnLabels
local makeSheetChildren = SheetStoryHelpers.makeSheetChildren
local prefersCenter = SheetStoryHelpers.prefersCenter
local variantRows = SheetStoryHelpers.variantRows
local variantTrigger = SheetStoryHelpers.variantTrigger

type DialogSize = DialogSize.DialogSize
type SheetVariant = SheetStoryHelpers.SheetVariant

type ControlledExampleProps = {
	LayoutOrder: number?,
}

local VARIANT_ORDER: { SheetVariant } = SheetStoryHelpers.VARIANT_ORDER
local VARIANT_HEADERS = SheetStoryHelpers.VARIANT_HEADERS
local SIZE_ORDER: { DialogSize } = SheetStoryHelpers.SIZE_ORDER
local PLAYGROUND_SIZE_OPTIONS: { DialogSize } = {
	SheetStoryHelpers.DEFAULT_SIZE,
	DialogSize.Small,
	DialogSize.Large,
}
local WIDE_CELL_WIDTH = SheetStoryHelpers.WIDE_CELL_WIDTH
local OVERFLOW_LIST_LENGTH = SheetStoryHelpers.OVERFLOW_LIST_LENGTH
local SUBPART_ORDER: { SheetStoryHelpers.SheetSlot } = { "Header", "Content", "Actions" }
local SNAP_POINT_PRESETS = {
	Default = nil :: { number }?,
	["Half and tall"] = { 0.5, 0.9 },
}
local SNAP_POINT_COLUMNS: { { label: string, snapPoints: { number }? } } = {
	{ label = "nil (hug content)" },
	{ label = "0.5 (half screen)", snapPoints = { 0.5 } },
	{ label = "0.75 (three quarters)", snapPoints = { 0.75 } },
	{ label = "1 (fill screen)", snapPoints = { 1 } },
}
local CENTER_HEIGHT_COLUMNS: { { label: string, height: number? } } = {
	{ label = "nil (hug content)" },
	{ label = "0.5 (half max height)", height = 0.5 },
	{ label = "1 (full max height)", height = 1 },
}

type Controls = {
	sheetTypePreset: SheetVariant,
	size: DialogSize,
	centerSheetHeightPreset: string,
	snapPointsPreset: string,
	defaultSnapPointIndex: number,
	showHeader: boolean,
	showContent: boolean,
	showActions: boolean,
	showFullBleed: boolean,
}

type StoryProps = {
	controls: Controls,
}

local function sizeForVariant(variant: SheetVariant, size: DialogSize): DialogSize?
	if not prefersCenter(variant) and size == DialogSize.Small then
		return nil
	end
	return if size == SheetStoryHelpers.DEFAULT_SIZE then nil else size
end

local function centerHeightFromLabel(label: string): number?
	for _, column in CENTER_HEIGHT_COLUMNS do
		if column.label == label then
			return column.height
		end
	end
	return nil
end

local function PlaygroundStory(props: StoryProps)
	local controls = props.controls

	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Trigger = React.createElement(LabeledSheetTrigger, {
			size = sizeForVariant(controls.sheetTypePreset, controls.size),
			preferCenterSheet = prefersCenter(controls.sheetTypePreset),
			centerSheetHeight = centerHeightFromLabel(controls.centerSheetHeightPreset),
			snapPoints = SNAP_POINT_PRESETS[controls.snapPointsPreset],
			defaultSnapPointIndex = controls.defaultSnapPointIndex,
			childrenOptions = {
				showHeader = controls.showHeader,
				showContent = controls.showContent,
				showActions = controls.showActions,
				showFullBleed = controls.showFullBleed,
			},
		}),
	})
end

local function PreferCenterSheetStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Grid = React.createElement(SheetMatrix, {
			showLabelColumn = false,
			columnHeaders = VARIANT_HEADERS,
			rows = {
				{
					cells = Dash.map(VARIANT_ORDER, function(variant)
						return React.createElement(LabeledSheetTrigger, {
							preferCenterSheet = prefersCenter(variant),
						})
					end),
				},
			},
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = Dash.map(SIZE_ORDER, function(value): string
					return value
				end),
				rows = variantRows(function(variant)
					return Dash.map(SIZE_ORDER, function(size)
						if not prefersCenter(variant) and size == DialogSize.Small then
							return React.createElement(Text, {
								Text = "—",
								tag = "auto-xy text-caption-small content-muted",
							})
						end
						return variantTrigger(variant, {
							size = if size == SheetStoryHelpers.DEFAULT_SIZE then nil else size,
						})
					end)
				end),
			}),
		}),
		Height = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Height",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				showLabelColumn = false,
				columnHeaders = columnLabels(CENTER_HEIGHT_COLUMNS),
				cellColumnWidth = WIDE_CELL_WIDTH,
				rows = {
					{
						cells = Dash.map(CENTER_HEIGHT_COLUMNS, function(column)
							return React.createElement(LabeledSheetTrigger, {
								preferCenterSheet = true,
								centerSheetHeight = column.height,
							})
						end),
					},
				},
			}),
		}),
		SnapPoints = React.createElement(Section, {
			LayoutOrder = 3,
			name = "snapPoints",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				showLabelColumn = false,
				columnHeaders = columnLabels(SNAP_POINT_COLUMNS),
				cellColumnWidth = WIDE_CELL_WIDTH,
				rows = {
					{
						cells = Dash.map(SNAP_POINT_COLUMNS, function(column)
							return React.createElement(LabeledSheetTrigger, {
								snapPoints = column.snapPoints,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function IsOpenDrivenExample(props: ControlledExampleProps)
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Status = React.createElement(Text, {
			Text = if isOpen then "Open" else "Closed",
			tag = "auto-xy text-body-medium content-default",
			LayoutOrder = 1,
		}),
		Toggle = React.createElement(Button, {
			text = if isOpen then "Close" else "Open",
			onActivated = function()
				setIsOpen(not isOpen)
			end,
			variant = if isOpen then ButtonVariant.Standard else ButtonVariant.Emphasis,
			LayoutOrder = 2,
		}),
		SheetRoot = React.createElement(Sheet.Root, {
			isOpen = isOpen,
			onClose = function()
				setIsOpen(false)
			end,
		}, makeSheetChildren()),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		IsOpen = React.createElement(Section, {
			LayoutOrder = 1,
			name = "isOpen",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(IsOpenDrivenExample, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Subparts = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Subparts",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = Dash.map(SUBPART_ORDER, function(slot): string
					return slot
				end),
				rows = variantRows(function(variant)
					return Dash.map(SUBPART_ORDER, function(slot)
						return variantTrigger(variant, {
							childrenOptions = {
								highlightedSlot = slot,
							},
						})
					end)
				end),
			}),
		}),
		CloseAffordance = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Close affordance",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = { "Header", "No header" },
				rows = variantRows(function(variant)
					return {
						variantTrigger(variant),
						variantTrigger(variant, {
							childrenOptions = { showHeader = false },
						}),
					}
				end),
			}),
		}),
		Overflow = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Overflow",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				showLabelColumn = false,
				columnHeaders = VARIANT_HEADERS,
				rows = {
					{
						cells = Dash.map(VARIANT_ORDER, function(variant)
							return variantTrigger(variant, {
								centerSheetHeight = 0.5,
								childrenOptions = {
									contentListLength = OVERFLOW_LIST_LENGTH,
								},
							})
						end),
					},
				},
			}),
		}),
	})
end

return {
	summary = "A contextual overlay that switches among bottom, side, and center placement from viewport, orientation, and `preferCenterSheet`.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "preferCenterSheet", story = PreferCenterSheetStory },
		{ name = "Sizing", story = SizingStory },
		{ name = "Controlled component", story = ControlledStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		sheetTypePreset = VARIANT_ORDER,
		size = PLAYGROUND_SIZE_OPTIONS,
		centerSheetHeightPreset = columnLabels(CENTER_HEIGHT_COLUMNS),
		snapPointsPreset = { "Default", "Half and tall" },
		defaultSnapPointIndex = 1,
		showHeader = true,
		showContent = true,
		showActions = true,
		showFullBleed = false,
	},
}
