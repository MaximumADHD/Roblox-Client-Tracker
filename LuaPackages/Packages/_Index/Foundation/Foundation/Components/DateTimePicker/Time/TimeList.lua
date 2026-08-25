local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeLayoutUtilities = require(script.Parent.Parent.Utilities.DateTimeLayoutUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)

local ScrollView = require(Foundation.Components.ScrollView)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Props = {
	-- The currently selected date/time. Used to highlight the matching slot.
	dateTime: DateTime?,
	-- Day used to build slots when `dateTime` is nil (e.g. cleared draft → calendar anchor).
	dayAnchor: DateTime?,
	-- Called with the unix timestamp of the selected slot
	onItemChanged: (id: number) -> (),
	-- Height of the scrollable area, matched to the calendar grid
	height: number,
	LayoutOrder: number?,
	width: UDim?,
	testId: string?,
}

local defaultProps = {
	testId = "--foundation-time-list",
}

local function TimeList(timeListProps: Props)
	local props = withDefaults(timeListProps, defaultProps)
	local tokens = useTokens()
	local rowHeight = tokens.Size.Size_900
	local width = props.width or UDim.new(0, DateTimeLayoutUtilities.TIME_LIST_WIDTH)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	-- Skip the next scroll-to-selected when the user clicks a slot in this list.
	local skipNextScrollRef = React.useRef(false)
	local isFirstLayoutRef = React.useRef(true)
	local lastTimeKeyRef = React.useRef(nil :: string?)

	local slots, matchedSelectedId = React.useMemo(function()
		local slotDay = props.dateTime or props.dayAnchor or DateTime.now()
		return DateTimeCalendarViewUtilities.getTimeSlotsForDay(slotDay)
	end, { props.dateTime, props.dayAnchor } :: { unknown })
	-- No draft selection → no highlighted slot, even when dayAnchor supplies the slot day.
	local selectedId = if props.dateTime then matchedSelectedId else nil

	local function getTimeKey(id: number?): string?
		if id == nil then
			return nil
		end
		local localTime = DateTimeUtilities.toLocalTime(DateTime.fromUnixTimestamp(id))
		return string.format("%02d:%02d", localTime.Hour, localTime.Minute)
	end

	-- Center the selected slot on open and when the time of day changes externally (e.g. Reset).
	-- Do not re-scroll when: the user clicks a slot here, only the calendar day changes, or a
	-- day click first establishes a default time after mount.
	React.useEffect(function()
		local timeKey = getTimeKey(selectedId)

		if skipNextScrollRef.current then
			skipNextScrollRef.current = false
			lastTimeKeyRef.current = timeKey
			isFirstLayoutRef.current = false
			return
		end

		local frame = scrollingFrameRef.current
		if not frame then
			return
		end

		local isFirstLayout = isFirstLayoutRef.current
		isFirstLayoutRef.current = false

		if timeKey == nil then
			lastTimeKeyRef.current = nil
			return
		end

		-- Same wall-clock time (e.g. day changed): keep scroll position.
		if timeKey == lastTimeKeyRef.current then
			return
		end

		-- After mount, a first-appearing selection is usually a day click — don't jump the list.
		if not isFirstLayout and lastTimeKeyRef.current == nil then
			lastTimeKeyRef.current = timeKey
			return
		end

		lastTimeKeyRef.current = timeKey

		local slotIndex = DateTimeCalendarViewUtilities.getTimeSlotIndex(slots, selectedId)
		if not slotIndex then
			return
		end
		local targetIndex = slotIndex - 1
		local centeredY = targetIndex * rowHeight - props.height / 2 + rowHeight / 2
		frame.CanvasPosition = Vector2.new(0, math.max(0, centeredY))
	end, { selectedId, slots, rowHeight, props.height } :: { unknown })

	local rows: { [string]: React.ReactNode } = {}
	for index, slot in slots do
		local isSelected = slot.id == selectedId
		rows[`slot-{slot.id}`] = React.createElement(Text, {
			LayoutOrder = index,
			Size = UDim2.new(1, 0, 0, rowHeight),
			Text = slot.text,
			textStyle = if isSelected then tokens.Inverse.Content.Emphasis else nil,
			backgroundStyle = if isSelected then tokens.Color.System.Contrast else nil,
			stateLayer = {
				mode = if isSelected then StateLayerMode.Inverse else StateLayerMode.Default,
			},
			onActivated = function()
				skipNextScrollRef.current = true
				props.onItemChanged(slot.id)
			end,
			tag = "size-full-0 auto-y padding-x-medium text-body-medium text-align-x-left text-align-y-center radius-medium",
			testId = `{props.testId}--slot-{index}`,
		})
	end

	return React.createElement(ScrollView, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(width.Scale, width.Offset, 0, props.height),
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.fromOffset(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
		},
		scrollingFrameRef = scrollingFrameRef,
		testId = props.testId,
	}, rows)
end

return TimeList
