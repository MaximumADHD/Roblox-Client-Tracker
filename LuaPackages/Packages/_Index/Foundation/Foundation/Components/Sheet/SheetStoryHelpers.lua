local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type SupportedButtonVariant = ButtonVariant.SupportedButtonVariant
local DialogSize = require(Foundation.Enums.DialogSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Sheet = require(Foundation.Components.Sheet)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

type AspectRatio = Types.AspectRatio
type ColorStyle = Types.ColorStyle
type DialogSize = DialogSize.DialogSize

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

export type SheetSlot = "Header" | "Content" | "Actions"
export type SheetVariant = "Side" | "Center"

export type SheetChildrenOptions = {
	showHeader: boolean?,
	showContent: boolean?,
	showActions: boolean?,
	showFullBleed: boolean?,
	headerText: string?,
	hasCloseAffordance: boolean?,
	contentText: string?,
	contentLineCount: number?,
	contentListLength: number?,
	contentHeight: number?,
	highlightedSlot: SheetSlot?,
	headerHeight: number?,
	isContentFullBleed: boolean?,
	actionCount: number?,
	fullBleedMedia: string?,
	fullBleedSticky: boolean?,
	fullBleedHeight: UDim?,
	fullBleedUnboundedHeight: boolean?,
	fullBleedAspectRatio: AspectRatio?,
	fullBleedMediaStyle: ColorStyle?,
	fullBleedBackgroundStyle: ColorStyle?,
	fullBleedChildren: React.ReactNode?,
}

export type SheetExampleProps = {
	LayoutOrder: number?,
	label: string?,
	size: DialogSize?,
	preferCenterSheet: boolean?,
	centerSheetHeight: number?,
	snapPoints: { number }?,
	defaultSnapPointIndex: number?,
	childrenOptions: SheetChildrenOptions?,
	children: React.ReactNode?,
}

local SIZE_ORDER: { DialogSize } = {
	DialogSize.Small,
	DialogSize.Medium,
	DialogSize.Large,
}

local SIDE_SIZE_ORDER: { DialogSize } = {
	DialogSize.Medium,
	DialogSize.Large,
}

local DEFAULT_SIZE: DialogSize = DialogSize.Medium
local VARIANT_SIDE: SheetVariant = "Side"
local VARIANT_CENTER: SheetVariant = "Center"
local VARIANT_ORDER: { SheetVariant } = { VARIANT_SIDE, VARIANT_CENTER }
local VARIANT_HEADERS = Dash.map(VARIANT_ORDER, function(value): string
	return value
end)
local SHORT_FULL_BLEED_HEIGHT = UDim.new(0, 80)
local CONTENT_PLACEHOLDER_HEIGHT = 240
local MATRIX_CELL_WIDTH = 120
local WIDE_CELL_WIDTH = 280
local OVERFLOW_LIST_LENGTH = 40
local PLAYGROUND_TAG = "auto-xy padding-y-large bg-surface-0"
local PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local MATRIX_SECTION_TAG = "col gap-large size-full-0 auto-y"

local function prefersCenter(variant: SheetVariant): boolean
	return variant == VARIANT_CENTER
end

local function centerHeightFor(variant: SheetVariant, height: number?): number?
	return if prefersCenter(variant) then height else nil
end

local function columnLabels(columns: { { label: string, [string]: any } }): { string }
	return Dash.map(columns, function(column): string
		return column.label
	end)
end

local function SheetMatrix(props: MatrixGridShared.MatrixGridProps): React.ReactNode
	return React.createElement(
		MatrixGrid,
		Dash.join({
			cellAlign = "left",
			headerTextAlign = "left",
			cellColumnWidth = MATRIX_CELL_WIDTH,
		}, props)
	)
end

local function variantRows(makeCells: (SheetVariant) -> { React.ReactNode })
	return Dash.map(VARIANT_ORDER, function(variant)
		return {
			label = matrixLabel(variant),
			cells = makeCells(variant),
		}
	end)
end
local MEDIA = "rbxassetid://103403748802347"
local TITLE_TEXT = "Title"
local CONTENT_TEXT = "Content"
local LONG_CONTENT_TEXT = "This is a longer block of sheet content meant to exceed the available height and scroll."

local function placeholderText(text: string, layoutOrder: number?): React.ReactNode
	return React.createElement(Text, {
		Text = text,
		LayoutOrder = layoutOrder,
		tag = "auto-xy text-body-medium text-wrap text-align-x-left content-default",
	})
end

type SlotPlaceholderProps = {
	label: string,
	LayoutOrder: number?,
	isSubject: boolean?,
	height: number?,
}

local function SlotPlaceholder(props: SlotPlaceholderProps): React.ReactNode
	local height = props.height

	return React.createElement(View, {
		tag = if height
			then if props.isSubject
				then "row align-x-center align-y-center size-full-0 padding-medium radius-medium bg-action-emphasis"
				else "row align-x-center align-y-center size-full-0 padding-medium radius-medium bg-shift-200"
			else if props.isSubject
				then "row align-x-center align-y-center size-full-0 auto-y padding-medium radius-medium bg-action-emphasis"
				else "row align-x-center align-y-center size-full-0 auto-y padding-medium radius-medium bg-shift-200",
		Size = if height then UDim2.new(1, 0, 0, height) else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = if props.isSubject
				then "auto-xy text-label-medium content-inverse-emphasis"
				else "auto-xy text-label-medium content-muted",
			LayoutOrder = 1,
		}),
	})
end

local function ContentList(props: { length: number, LayoutOrder: number?, isSubject: boolean? }): React.ReactNode
	local rows: { [string]: React.ReactNode } = {}
	for index = 1, props.length do
		rows[`Row{index}`] = React.createElement(Text, {
			Text = `{index}.`,
			tag = if props.isSubject
				then "size-full-0 auto-y text-body-medium text-align-x-left content-inverse-emphasis"
				else "size-full-0 auto-y text-body-medium text-align-x-left content-muted",
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = if props.isSubject
			then "col gap-small size-full-0 auto-y padding-medium radius-medium bg-action-emphasis"
			else "col gap-small size-full-0 auto-y padding-medium radius-medium bg-shift-200",
		LayoutOrder = props.LayoutOrder,
	}, rows)
end

local function makeActionButtons(count: number): { ButtonGroup.ButtonGroupItem }
	local labels = { "Primary", "Secondary", "Tertiary" }
	local variants: { SupportedButtonVariant } = {
		ButtonVariant.Emphasis,
		ButtonVariant.Standard,
		ButtonVariant.SoftEmphasis,
	}
	local buttons: { ButtonGroup.ButtonGroupItem } = {}
	local clamped = math.clamp(count, 1, 3)
	for index = 1, clamped do
		buttons[index] = {
			text = labels[index],
			variant = variants[index],
			onActivated = function() end,
		}
	end
	return buttons
end

local function resolveFullBleedHeight(config: SheetChildrenOptions): UDim?
	if config.fullBleedHeight or config.fullBleedAspectRatio or config.fullBleedUnboundedHeight then
		return config.fullBleedHeight
	end
	return SHORT_FULL_BLEED_HEIGHT
end

local function makeSheetChildren(options: SheetChildrenOptions?): { [string]: React.ReactNode }
	local config: SheetChildrenOptions = options or {}
	local showHeader = if config.showHeader ~= nil then config.showHeader else true
	local showContent = if config.showContent ~= nil then config.showContent else true
	local showActions = if config.showActions ~= nil then config.showActions else true
	local showFullBleed = config.showFullBleed == true
	local sticky = config.fullBleedSticky == true
	local headerAllowed = not (showFullBleed and sticky)

	local highlightedSlot = config.highlightedSlot

	local contentChildren: { [string]: React.ReactNode } = {}
	local listLength = config.contentListLength
	local lineCount = config.contentLineCount
	if listLength and listLength > 0 then
		contentChildren.List = React.createElement(ContentList, {
			length = listLength,
			LayoutOrder = 1,
			isSubject = highlightedSlot == "Content",
		})
	elseif lineCount and lineCount > 1 then
		for index = 1, lineCount do
			contentChildren[`Line{index}`] = placeholderText(`{LONG_CONTENT_TEXT} {index}`, index)
		end
	elseif config.contentText then
		contentChildren.Body = placeholderText(config.contentText, 1)
	else
		contentChildren.Body = React.createElement(SlotPlaceholder, {
			label = "Content",
			LayoutOrder = 1,
			isSubject = highlightedSlot == "Content",
			height = config.contentHeight or CONTENT_PLACEHOLDER_HEIGHT,
		})
	end

	return {
		FullBleed = if showFullBleed
			then React.createElement(Sheet.FullBleed, {
				media = config.fullBleedMedia or MEDIA,
				sticky = if sticky then true else nil,
				height = resolveFullBleedHeight(config),
				aspectRatio = config.fullBleedAspectRatio,
				mediaStyle = config.fullBleedMediaStyle,
				backgroundStyle = config.fullBleedBackgroundStyle,
			}, config.fullBleedChildren)
			else nil,
		Header = if showHeader and headerAllowed
			then React.createElement(Sheet.Header, {
				hasCloseAffordance = config.hasCloseAffordance,
			}, {
				Title = if config.headerText
					then placeholderText(config.headerText, 1)
					else React.createElement(SlotPlaceholder, {
						label = "Header",
						LayoutOrder = 1,
						isSubject = highlightedSlot == "Header",
						height = config.headerHeight,
					}),
			})
			else nil,
		Content = if showContent
			then React.createElement(Sheet.Content, {
				isContentFullBleed = config.isContentFullBleed,
			}, contentChildren)
			else nil,
		Actions = if showActions
			then React.createElement(Sheet.Actions, nil, {
				Buttons = if config.actionCount
					then React.createElement(ButtonGroup, {
						buttons = makeActionButtons(config.actionCount),
						fillBehavior = FillBehavior.Fill,
						size = InputSize.Medium,
					})
					else React.createElement(SlotPlaceholder, {
						label = "Actions",
						LayoutOrder = 1,
						isSubject = highlightedSlot == "Actions",
					}),
			})
			else nil,
	}
end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = if props.note
			then React.createElement(View, {
				tag = "col gap-xsmall auto-xy",
				LayoutOrder = 1,
			}, {
				Name = React.createElement(Text, {
					Text = props.name,
					tag = "auto-xy text-label-medium content-default",
					LayoutOrder = 1,
				}),
				Note = React.createElement(Text, {
					Text = props.note,
					tag = "auto-xy text-body-small content-muted",
					LayoutOrder = 2,
				}),
			})
			else React.createElement(Text, {
				Text = props.name,
				tag = "auto-xy text-label-medium content-default",
				LayoutOrder = 1,
			}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledSheetTrigger(props: SheetExampleProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = if props.label
			then React.createElement(Text, {
				Text = props.label,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			})
			else nil,
		OpenButton = React.createElement(Button, {
			text = if isOpen then "Close" else "Open",
			onActivated = function()
				setIsOpen(not isOpen)
			end,
			variant = if isOpen then ButtonVariant.Standard else ButtonVariant.Emphasis,
			LayoutOrder = 2,
		}),
		SheetRoot = if isOpen
			then React.createElement(Sheet.Root, {
				isOpen = true,
				size = props.size,
				preferCenterSheet = props.preferCenterSheet,
				centerSheetHeight = props.centerSheetHeight,
				snapPoints = props.snapPoints,
				defaultSnapPointIndex = props.defaultSnapPointIndex,
				onClose = function()
					setIsOpen(false)
				end,
			}, props.children or makeSheetChildren(props.childrenOptions))
			else nil,
	})
end

local function variantTrigger(variant: SheetVariant, props: SheetExampleProps?): React.ReactNode
	local merged: SheetExampleProps = Dash.join(props or {})
	merged.preferCenterSheet = prefersCenter(variant)
	merged.centerSheetHeight = centerHeightFor(variant, merged.centerSheetHeight)
	return React.createElement(LabeledSheetTrigger, merged)
end

return {
	SIZE_ORDER = SIZE_ORDER,
	SIDE_SIZE_ORDER = SIDE_SIZE_ORDER,
	DEFAULT_SIZE = DEFAULT_SIZE,
	VARIANT_ORDER = VARIANT_ORDER,
	VARIANT_HEADERS = VARIANT_HEADERS,
	MATRIX_CELL_WIDTH = MATRIX_CELL_WIDTH,
	WIDE_CELL_WIDTH = WIDE_CELL_WIDTH,
	OVERFLOW_LIST_LENGTH = OVERFLOW_LIST_LENGTH,
	PLAYGROUND_TAG = PLAYGROUND_TAG,
	PAGE_TAG = PAGE_TAG,
	MATRIX_SECTION_TAG = MATRIX_SECTION_TAG,
	prefersCenter = prefersCenter,
	centerHeightFor = centerHeightFor,
	columnLabels = columnLabels,
	SheetMatrix = SheetMatrix,
	variantRows = variantRows,
	variantTrigger = variantTrigger,
	MEDIA = MEDIA,
	TITLE_TEXT = TITLE_TEXT,
	CONTENT_TEXT = CONTENT_TEXT,
	LONG_CONTENT_TEXT = LONG_CONTENT_TEXT,
	Section = Section,
	LabeledSheetTrigger = LabeledSheetTrigger,
	makeSheetChildren = makeSheetChildren,
	makeActionButtons = makeActionButtons,
	placeholderText = placeholderText,
}
