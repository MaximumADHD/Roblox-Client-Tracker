local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useChipVariants = require(Foundation.Components.Chip.useChipVariants)

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize
local ChipVariant = require(Foundation.Enums.ChipVariant)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Flags = require(Foundation.Utility.Flags)
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local useTokens = require(Foundation.Providers.Style.useTokens)

local withCommonProps = require(Foundation.Utility.withCommonProps)

local Pagination = script.Parent.Parent
local paginationUtils = require(Pagination.paginationUtils)

type PageNumberSlotProps = {
	slotSize: PaginationSize,
	isChecked: boolean,
	LayoutOrder: number,
	onPageActivated: (page: number) -> (),
	page: number,
	testId: string,
} & Types.SelectionProps

type PageNumberTextProps = {
	page: number,
	textStyle: Types.ColorStyle?,
	textTag: string,
	padding: Types.Padding?,
	testId: string,
}

local function PageNumberText(props: PageNumberTextProps)
	return React.createElement(Text, {
		Text = tostring(props.page),
		textStyle = props.textStyle,
		tag = props.textTag,
		padding = props.padding,
		LayoutOrder = 1,
		testId = `{props.testId}--text`,
	})
end

--[[
	MultiPage page slot render paths:
	1. Selectable + page > 999 — interactive utility chip-styled View.
	2. Current page + page > 999 — display-only View styled like a checked utility chip.
	3. page ≤ 999 — circular slot; checked background comes from the parent overlay.
]]
local ICON_PRESENTATION = { colorNamespace = ColorNamespace.Color, isIconSize = true }

local WIDE_SLOT_SIZE_TAG: { [PaginationSize]: string } = {
	[PaginationSize.Small] = "size-0-600",
	[PaginationSize.Medium] = "size-0-800",
}

local function PageNumberSlot(props: PageNumberSlotProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local tokens = useTokens()

	local isInteractive = not props.isChecked
	local needsWideSlot = paginationUtils.needsWidePageSlot(props.page)

	local chipSize: ChipSize = if props.slotSize == PaginationSize.Small then ChipSize.Small else ChipSize.Medium
	local checkedVariantProps = useChipVariants(tokens, chipSize, ChipVariant.Utility, true, false, false)
	local utilityVariantProps = useChipVariants(tokens, chipSize, ChipVariant.Utility, false, false, false)
	local wideSlotTag = `row align-x-center align-y-center auto-x radius-circle {WIDE_SLOT_SIZE_TAG[props.slotSize]}`

	local onActivated = React.useCallback(function()
		props.onPageActivated(props.page)
	end, { props.onPageActivated, props.page } :: { unknown })

	local selection = {
		Selectable = isInteractive and props.Selectable ~= false,
		NextSelectionLeft = props.NextSelectionLeft,
		NextSelectionRight = props.NextSelectionRight,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
	}

	if needsWideSlot then
		if isInteractive then
			return React.createElement(
				View,
				withCommonProps({
					LayoutOrder = props.LayoutOrder,
					testId = props.testId,
				}, {
					backgroundStyle = utilityVariantProps.chip.backgroundStyle,
					padding = utilityVariantProps.chip.padding,
					cursor = paginationUtils.getSlotCursor(tokens),
					onActivated = onActivated,
					ref = ref,
					selection = selection,
					tag = wideSlotTag,
				}),
				{
					Label = React.createElement(PresentationContext.Provider, {
						value = if Flags.FoundationStableContextValues
							then ICON_PRESENTATION
							else {
								colorNamespace = ColorNamespace.Color,
								isIconSize = true,
							},
					}, {
						Text = React.createElement(PageNumberText, {
							page = props.page,
							textStyle = utilityVariantProps.text.contentStyle,
							textTag = utilityVariantProps.text.tag,
							padding = utilityVariantProps.text.padding,
							testId = props.testId,
						}),
					}),
				}
			)
		end

		return React.createElement(
			View,
			withCommonProps({
				LayoutOrder = props.LayoutOrder,
				testId = props.testId,
			}, {
				backgroundStyle = checkedVariantProps.chip.backgroundStyle,
				padding = checkedVariantProps.chip.padding,
				ref = ref,
				selection = {
					Selectable = false,
				},
				tag = wideSlotTag,
			}),
			{
				Text = React.createElement(PageNumberText, {
					page = props.page,
					textStyle = checkedVariantProps.text.contentStyle,
					textTag = checkedVariantProps.text.tag,
					padding = checkedVariantProps.text.padding,
					testId = props.testId,
				}),
			}
		)
	end

	return React.createElement(
		View,
		withCommonProps({
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		}, {
			backgroundStyle = {
				Color3 = tokens.Color.Surface.Surface_0.Color3,
				Transparency = 1,
			},
			cursor = if isInteractive then paginationUtils.getSlotCursor(tokens) else nil,
			onActivated = if isInteractive then onActivated else nil,
			ref = ref,
			selection = if isInteractive
				then selection
				else {
					Selectable = false,
				},
			tag = paginationUtils.getCircularSlotTag(props.slotSize),
		}),
		{
			Text = React.createElement(PageNumberText, {
				page = props.page,
				textStyle = if props.isChecked
					then checkedVariantProps.text.contentStyle
					else tokens.Color.Content.Default,
				textTag = paginationUtils.getPageLabelTextTag(props.slotSize),
				padding = nil,
				testId = props.testId,
			}),
		}
	)
end

return React.memo(React.forwardRef(PageNumberSlot))
