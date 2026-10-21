local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local Foundation = require(Packages.Foundation)

local React = require(Packages.React)
type ReactNode = React.ReactNode

local useCallback = React.useCallback
local useRef = React.useRef
local useState = React.useState
local useEffect = React.useEffect

local Dash = require(Packages.Dash)
local map = Dash.map

local RenderableInlineElement = require(Root.Components.InlineLayout.InlineLayoutElements.RenderableInlineElement)
local HardBreakElement = require(Root.Components.InlineLayout.InlineLayoutElements.HardBreakElement)
local HoverContext = require(Root.Components.InlineLayout.InlineLayoutElements.HoverContext)
local renderInMeasuredFrame = require(Root.Utils.renderInMeasuredFrame)
local MarkdownCore = require(Packages.MarkdownCore)
local View = Foundation.View

local Flags = MarkdownCore.Flags

local FFlagDebugInlineLayout = game:DefineFastFlag("FFlagDebugInlineLayout", false)

export type InlineElement = RenderableInlineElement.RenderableInlineElement | HardBreakElement.HardBreakElement

type Props = {
	HorizontalAlignment: Enum.HorizontalAlignment?,
	VerticalPadding: UDim?,
	Elements: { InlineElement },
}

-- To avoid unknonw bugs that can lead to an infinite cycle we have a hard stop
local MAX_ITERATIONS = 100
local ITERATIONS_PER_ELEMENT = 4

local function layoutElements(elements: { InlineElement }, width: number): { ReactNode }
	if #elements == 0 then
		return {}
	end

	local maxIterations = if Flags.FFlagMarkdownAssistantParity
		then MAX_ITERATIONS + #elements * ITERATIONS_PER_ELEMENT
		else MAX_ITERATIONS

	local rows = {}
	local currentRow = {}
	local availableWidth = width
	local wrappedElement = nil
	local i = 1
	local breakPoint = 0
	local layoutOrderWithinRow
	-- Whether the current row was started by wrapping, rather than being the first row or following a hard break.
	local rowStartedByWrap = false

	local function flushRow()
		table.insert(rows, currentRow)
		currentRow = {}
		availableWidth = width
	end

	while (i <= #elements or wrappedElement) and breakPoint < maxIterations do
		-- 1. Pick wrappedElement or ith element
		local element = wrappedElement or elements[i]

		-- 2. Analogue of a new line, flush current row and go the next element
		if element == HardBreakElement then
			i += 1
			flushRow()
			rowStartedByWrap = false
			continue
		end

		-- A wrapped row doesn't start with whitespace. Word splits already drop it from the tail, but an
		-- element that wraps whole, e.g. the text after a bold run or a link, can still begin with a space.
		-- Trim it before measuring, so the row doesn't reserve space for it. Other rows render their
		-- input as-is; the parser trims whitespace at the start of a paragraph or after a hard break.
		if #currentRow == 0 and rowStartedByWrap and element.trimStart then
			local trimmed = element:trimStart()
			if trimmed == nil then
				-- Nothing is left to render, so the next element starts the row instead.
				wrappedElement = nil
				i += 1
				breakPoint += 1
				continue
			end
			element = trimmed
		end

		local elementWidth = element:getWidth()

		layoutOrderWithinRow = #currentRow
		-- 3. Check if its size exceeds the remaining width
		if elementWidth <= availableWidth then
			-- 4. If not, push rendered element onto the currentRow
			table.insert(
				currentRow,
				renderInMeasuredFrame(element:render(i, layoutOrderWithinRow), elementWidth, layoutOrderWithinRow)
			)
			availableWidth -= elementWidth
			wrappedElement = nil
			i += 1
		else
			local head, tail = element:split(availableWidth)
			-- 5. Check if head can fit on the row. If so, push it and assign the tail to wrappedElement.
			if head:getWidth() <= availableWidth then
				table.insert(
					currentRow,
					renderInMeasuredFrame(head:render(i, layoutOrderWithinRow), head:getWidth(), layoutOrderWithinRow)
				)
				wrappedElement = tail
			else
				-- 6. Put element on the next available row.
				if #currentRow == 0 then
					-- 7. Element doesn't fit the whole line after preferred way of splitting. Try to force split it.
					if element.canForceSplit then
						head, tail = element:split(availableWidth, true)
					end
					table.insert(
						currentRow,
						renderInMeasuredFrame(
							head:render(i, layoutOrderWithinRow),
							head:getWidth(),
							layoutOrderWithinRow
						)
					)
					-- Can be nil, but can be an element if the element can be split, just not exactly as we want.
					wrappedElement = tail
				else
					-- Assign the element back, it will be processed first on the next cycle and pushed to the empty row under the condition above in the worst case.
					wrappedElement = element
				end
			end
			if Flags.FFlagMarkdownAssistantParity and wrappedElement == nil then
				i += 1
			end
			flushRow()
			rowStartedByWrap = true
		end
		breakPoint += 1
	end

	if breakPoint == maxIterations and FFlagDebugInlineLayout then
		warn(
			"InlineLayout: trying to wrap text across multiple lines and iterations cap is reached. Layout may be imperfect",
			`Desired width: {width}, elements: {#elements}`,
			debug.traceback()
		)
	end

	-- Handle the last row, since we may exit the loop without commiting it
	if #currentRow > 0 then
		table.insert(rows, currentRow)
	end
	return map(rows, function(row, index)
		return React.createElement(View, {
			tag = "auto-xy row align-x-left",
			key = tostring(index),
			LayoutOrder = index,
		}, row)
	end)
end

local function InlineLayout(props: Props)
	local ref = useRef(nil :: GuiObject?)
	local tokens = Foundation.Hooks.useTokens()
	local rows, setRows = useState({})

	local updateLayout = useCallback(function()
		if ref.current == nil then
			return
		end
		if ref.current.AbsoluteSize.X == 0 then
			return
		end
		setRows(layoutElements(props.Elements, ref.current.AbsoluteSize.X))
	end, { props.Elements })

	useEffect(updateLayout, { updateLayout })

	return React.createElement(
		HoverContext.Provider,
		nil,
		React.createElement(View, {
			onAbsoluteSizeChanged = updateLayout,
			ref = ref,
			tag = "size-full-0 auto-y",
			layout = {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = props.HorizontalAlignment or Enum.HorizontalAlignment.Left,
				Padding = props.VerticalPadding or UDim.new(0, tokens.Gap.Small),
			},
		}, rows)
	)
end

return InlineLayout
