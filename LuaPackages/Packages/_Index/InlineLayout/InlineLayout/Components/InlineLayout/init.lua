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
local View = Foundation.View

local FFlagDebugInlineLayout = game:DefineFastFlag("FFlagDebugInlineLayout", false)

export type InlineElement = RenderableInlineElement.RenderableInlineElement | HardBreakElement.HardBreakElement

type Props = {
	HorizontalAlignment: Enum.HorizontalAlignment?,
	VerticalPadding: UDim?,
	Elements: { InlineElement },
}

-- To avoid unknonw bugs that can lead to an infinite cycle we have a hard stop
local MAX_ITERATIONS = 100

local function layoutElements(elements: { InlineElement }, width: number): { ReactNode }
	if #elements == 0 then
		return {}
	end

	local rows = {}
	local currentRow = {}
	local availableWidth = width
	local wrappedElement = nil
	local i = 1
	local breakPoint = 0
	local layoutOrderWithinRow

	local function flushRow()
		table.insert(rows, currentRow)
		currentRow = {}
		availableWidth = width
	end

	while (i <= #elements or wrappedElement) and breakPoint < MAX_ITERATIONS do
		-- 1. Pick wrappedElement or ith element
		local element = wrappedElement or elements[i]

		-- 2. Analogue of a new line, flush current row and go the next element
		if element == HardBreakElement then
			i += 1
			flushRow()
			continue
		end

		local elementWidth = element:getWidth()

		layoutOrderWithinRow = #currentRow
		-- 3. Check if its size exceeds the remaining width
		if elementWidth <= availableWidth then
			-- 4. If not, push rendered element onto the currentRow
			table.insert(currentRow, element:render(i, layoutOrderWithinRow))
			availableWidth -= elementWidth
			wrappedElement = nil
			i += 1
		else
			local head, tail = element:split(availableWidth)
			-- 5. Check if head can fit on the row. If so, push it and assign the tail to wrappedElement.
			if head:getWidth() <= availableWidth then
				table.insert(currentRow, head:render(i, layoutOrderWithinRow))
				wrappedElement = tail
			else
				-- 6. Put element on the next available row.
				if #currentRow == 0 then
					-- 7. Element doesn't fit the whole line after preferred way of splitting. Try to force split it.
					if element.canForceSplit then
						head, tail = element:split(availableWidth, true)
					end
					table.insert(currentRow, head:render(i, layoutOrderWithinRow))
					-- Can be nil, but can be an element if the element can be split, just not exactly as we want.
					wrappedElement = tail
				else
					-- Assign the element back, it will be processed first on the next cycle and pushed to the empty row under the condition above in the worst case.
					wrappedElement = element
				end
			end
			flushRow()
		end
		breakPoint += 1
	end

	if breakPoint == MAX_ITERATIONS and FFlagDebugInlineLayout then
		warn(
			"InlineLayout: trying to wrap text across multiple lines and iterations cap is reached. Layout may be imperfect",
			`Desired width: {width}`,
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
