local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
type ReactNode = React.ReactNode
local isReact = React.Tag ~= nil

local Types = require(Framework.Types)
type StudioUri = Types.StudioUri

local Dash = require(Framework.Parent.Dash)
local map = Dash.map

local useCallback = React.useCallback
local useRef = React.useRef
local useState = React.useState
local useEffect = React.useEffect

local Pane = require(Framework.UI.Components.Pane)
local RenderableInlineElement = require(script.RenderableInlineElement)
local HardBreakElement = require(script.HardBreakElement)
local HoverContext = require(script.HoverContext)
export type InlineElement = RenderableInlineElement.RenderableInlineElement | HardBreakElement.HardBreakElement

local FFlagDebugDeveloperFrameworkSdk = game:GetFastFlag("DebugDeveloperFrameworkSdk")

type Props = {
	Elements: { InlineElement },
	OverrideTags: string?,
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

	if breakPoint == MAX_ITERATIONS and FFlagDebugDeveloperFrameworkSdk then
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
		return React.createElement(
			Pane,
			{ [React.Tag] = "X-Fit X-Row X-Middle", key = tostring(index), LayoutOrder = index },
			row
		)
	end)
end

local function InlineLayout(props: Props)
	local ref = useRef(nil :: GuiObject?)
	local rows, setRows = useState({})

	if not isReact then
		warn("Can't use InlineLayout in old Roact, please upgrade your plugin to React 17")
		return
	end

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
		React.createElement(Pane, {
			[React.Change.AbsoluteSize] = updateLayout,
			ref = ref,
			[React.Tag] = props.OverrideTags or "X-FitY X-ColumnS",
		}, rows)
	)
end

return InlineLayout
