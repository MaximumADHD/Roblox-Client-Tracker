local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarViewUtilities = require(script.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeEqualityUtilities = require(script.Parent.Utilities.DateTimeEqualityUtilities)
local DateTimeParsingUtilities = require(script.Parent.Utilities.DateTimeParsingUtilities)
local DateTimePickerPropsModule = require(script.Parent.DateTimePickerProps)
local DateTimeRangeSelectionUtilities = require(script.Parent.Utilities.DateTimeRangeSelectionUtilities)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)
type DateTimePickerProps = DateTimePickerPropsModule.DateTimePickerProps

local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
type DateTimePickerVariant = DateTimePickerVariantEnum.DateTimePickerVariant
local Types = require(Foundation.Components.Types)
local GuiService = require(Foundation.Utility.Wrappers.Services).GuiService

export type DateTimePickerState = {
	-- 1. Open / close
	closeDateTimePicker: () -> (),
	isOpen: boolean,
	onFocusGained: () -> (),
	onFocusLost: (inputObject: InputObject?) -> (),
	showDateTimePicker: () -> (),
	textInputRef: React.Ref<Types.PopoverAnchor>,
	-- 2. Draft vs committed
	selectedDates: { DateTime }?,
	-- 3. Input ↔ calendar sync
	inputText: string,
	updateInputText: (txt: string) -> (),
	-- 4. Picking
	viewAnchorDate: DateTime?,
	onDayActivated: (dateTime: DateTime) -> (),
	onPresetSelected: (range: DateTimeUtilities.DateRange) -> (),
	onSelectedDatesChanged: (dates: { DateTime }) -> (),
	-- 5. Apply / Reset / Cancel
	onApply: () -> (),
	onCancel: () -> (),
	onReset: () -> (),
	-- 6. Button enablement
	isApplyButtonDisabled: boolean,
	isResetButtonDisabled: boolean,
}

type SetDraftOptions = {
	-- When set, updates viewAnchorDate (use resolveAnchorDate for fallback months).
	anchor: DateTime?,
	-- Also write lastAppliedDates (typed input commits immediately).
	asApplied: boolean?,
}

--[[
	State machine for DateTimePickerBeta. Groups:

	1. Open / close — popover open state, focus-to-open (non-small viewports), text-input ref
	2. Draft vs committed — selectedDates (in progress) vs lastAppliedDates (last Apply); Cancel/Reset restore
	3. Input ↔ calendar sync — typing parses into selection + onChanged; blur reorders inverted Dual ranges; Apply formats text back (with loop guard)
	4. Picking — SingleMonthCalendar day/range picks; DualWithPresets day picks + presets (stubbed); view anchor
	5. Apply / Reset / Cancel — variant-aware commit to input + onChanged; Cancel closes popover
	6. Button enablement — when Apply / Reset are disabled

	DateTimePickerBeta mostly wires this state to UI (TextInput / Popover / panel / calendar).
]]
local function useDateTimePickerState(props: DateTimePickerProps): DateTimePickerState
	local variant: DateTimePickerVariant = props.variant or DateTimePickerVariantEnum.Single
	local isRange = variant == DateTimePickerVariantEnum.Dual or variant == DateTimePickerVariantEnum.DualWithPresets
	local isPresets = variant == DateTimePickerVariantEnum.DualWithPresets
	local isTime = variant == DateTimePickerVariantEnum.SingleWithTime

	-- 1. Open / close
	local isOpen, setIsOpen = React.useState(false)
	local textInputRef = React.useRef(nil :: Types.PopoverAnchor?)

	-- 2. Draft vs committed
	local normalizedDefaultDates = React.useMemo(function(): { DateTime }?
		local dates = props.defaultDates
		if dates == nil then
			return nil
		end
		return DateTimeRangeSelectionUtilities.normalizeDates({
			acceptsDateRange = isRange,
			dates = dates,
		})
	end, { props.defaultDates, isRange } :: { unknown })

	local inputText, setInputText = React.useState(if normalizedDefaultDates
		then DateTimeParsingUtilities.formatInputText({
			dates = normalizedDefaultDates,
			variant = variant,
		})
		else "")
	-- Keep a ref mirror so FocusLost can read the latest typed text (avoids stale closures).
	local inputTextRef = React.useRef(inputText)
	inputTextRef.current = inputText

	local selectedDates, setSelectedDates = React.useState(function(): { DateTime }?
		return normalizedDefaultDates
	end)
	-- Keep a ref mirror so Apply / day handlers read the latest draft (avoids stale closures).
	local selectedDatesRef = React.useRef(selectedDates)
	selectedDatesRef.current = selectedDates

	local viewAnchorDate, setViewAnchorDate = React.useState(nil :: DateTime?)

	local lastAppliedDates, setLastAppliedDates = React.useState(function(): { DateTime }?
		return normalizedDefaultDates
	end)

	local closeDateTimePicker = React.useCallback(function()
		setIsOpen(false)
	end, {})

	local showDateTimePicker = React.useCallback(function()
		setIsOpen(true)
	end, {})

	local onFocusGained = React.useCallback(function()
		if GuiService.ViewportDisplaySize ~= Enum.DisplaySize.Small then
			showDateTimePicker()
		end
	end, { showDateTimePicker, GuiService.ViewportDisplaySize } :: { unknown })

	-- Single entry point for draft + optional view anchor / applied sync.
	local setDraft = React.useCallback(function(dates: { DateTime }?, options: SetDraftOptions?)
		setSelectedDates(dates)
		selectedDatesRef.current = dates
		if options and options.asApplied then
			setLastAppliedDates(dates)
		end
		-- DateTime cannot be compared to nil with ~=; presence means update the anchor.
		if options and options.anchor then
			setViewAnchorDate(options.anchor)
		end
	end, {})

	local function resolvedViewAnchor(dates: { DateTime }?): DateTime
		local anchor = DateTimeCalendarViewUtilities.resolveAnchorDate(dates, props.referenceDate)
		return DateTime.fromUnixTimestamp(anchor.UnixTimestamp)
	end

	-- 3. Input ↔ calendar sync (pendingProgrammaticInputTextRef avoids Apply → setInputText → onChanged loops)
	local pendingProgrammaticInputTextRef = React.useRef(nil :: string?)

	local updateInputText = React.useCallback(function(txt: string)
		setInputText(txt)

		if pendingProgrammaticInputTextRef.current ~= nil then
			local pendingText = pendingProgrammaticInputTextRef.current
			pendingProgrammaticInputTextRef.current = nil
			if txt == pendingText then
				return
			end
		end

		-- Empty table (not nil): nil is unbound and re-triggers SingleMonthCalendar's empty-selection sync.
		local function clearDraftToReference()
			setDraft({}, {
				anchor = resolvedViewAnchor(nil),
				asApplied = true,
			})
		end

		if txt:match("^%s*$") then
			clearDraftToReference()
			props.onChanged(nil)
			return
		end

		if isRange then
			-- Per-endpoint parse for onChanged; calendar draft only when both sides are valid and selectable.
			local startDate, endDate = DateTimeParsingUtilities.parseDualInputEndpoints(txt)
			props.onChanged(startDate, endDate)

			local parsed = DateTimeParsingUtilities.parseInputToDraftDates(txt, props.selectableDateRange)
			if parsed then
				setDraft(parsed, {
					anchor = parsed[1],
					asApplied = true,
				})
			else
				clearDraftToReference()
			end
		else
			local dateTime = DateTimeParsingUtilities.parseDateTimeFromText(DateTimeParsingUtilities.trimInputText(txt))
			if
				dateTime
				and (
					props.selectableDateRange == nil
					or DateTimeUtilities.isDateWithinRange(dateTime, props.selectableDateRange)
				)
			then
				setDraft({ dateTime }, {
					anchor = dateTime,
					asApplied = true,
				})
				props.onChanged(dateTime)
			else
				clearDraftToReference()
				props.onChanged(dateTime)
			end
		end
	end, { props.onChanged, isRange, isTime, props.referenceDate, props.selectableDateRange, setDraft } :: { unknown })

	-- Reorder inverted Dual ranges in the input when typed text still matches the calendar draft.
	local onFocusLost = React.useCallback(function(_inputObject: InputObject?)
		if not isRange then
			return
		end

		local txt = inputTextRef.current
		local parsed = DateTimeParsingUtilities.parseInputToDraftDates(txt, props.selectableDateRange)
		if not parsed then
			return
		end

		local formattedText = DateTimeParsingUtilities.formatInputText({
			dates = parsed,
			variant = variant,
		})
		if formattedText == txt then
			return
		end

		-- Calendar picks can diverge from typed text; only normalize display when they still match.
		local draft = selectedDatesRef.current
		if
			not draft
			or not draft[1]
			or not draft[2]
			or not DateTimeEqualityUtilities.isSameDay(draft[1], parsed[1])
			or not DateTimeEqualityUtilities.isSameDay(draft[2], parsed[2])
		then
			return
		end

		pendingProgrammaticInputTextRef.current = formattedText
		setInputText(formattedText)
		props.onChanged(parsed[1], parsed[2])
	end, { isRange, props.onChanged, props.selectableDateRange, variant } :: { unknown })

	-- 4. Picking
	-- Day clicks update the draft only. Re-anchoring here jumps DualWithPresets panes whenever the
	-- second month (or a cross-month end) is picked; presets / typed input / Reset still set anchor.
	local onDayActivated = React.useCallback(function(dateTime: DateTime)
		local nextDates = DateTimeRangeSelectionUtilities.selectRangeEndpoint(selectedDatesRef.current, dateTime)
		setDraft(nextDates)
	end, { setDraft })

	local onPresetSelected = React.useCallback(function(range: DateTimeUtilities.DateRange)
		if
			props.selectableDateRange
			and not DateTimeEqualityUtilities.isRangeWithinSelectableRange(range, props.selectableDateRange)
		then
			return
		end

		setDraft({ range.startDate, range.endDate }, { anchor = range.startDate })
	end, { props.selectableDateRange, setDraft } :: { unknown })

	local onSelectedDatesChanged = React.useCallback(function(dates: { DateTime })
		local previousDates = selectedDatesRef.current
		local previousStart = if previousDates then previousDates[1] :: DateTime? else nil
		local previousEnd = if previousDates then previousDates[2] :: DateTime? else nil
		local nextStart = dates[1] :: DateTime?
		local nextEnd = dates[2] :: DateTime?

		if
			previousDates
			and nextStart
			and previousStart
			and previousStart.UnixTimestamp == nextStart.UnixTimestamp
			and (not previousEnd) == not nextEnd
			and (not previousEnd or not nextEnd or previousEnd.UnixTimestamp == nextEnd.UnixTimestamp)
		then
			return
		end

		-- No view anchor: SingleMonthCalendar already updates currViewDate on day activate.
		setDraft(dates)
	end, { setDraft })

	-- 5. Apply / Reset / Cancel
	local restoreLastApplied = React.useCallback(function()
		setDraft(lastAppliedDates, {
			anchor = resolvedViewAnchor(lastAppliedDates),
		})
	end, { lastAppliedDates, props.referenceDate, setDraft } :: { unknown })

	local onCancel = React.useCallback(function()
		restoreLastApplied()
		closeDateTimePicker()
	end, { restoreLastApplied, closeDateTimePicker } :: { unknown })

	local onReset = React.useCallback(function()
		restoreLastApplied()
	end, { restoreLastApplied })

	local commitDates = React.useCallback(function(dates: { DateTime })
		local startDate = dates[1]
		if not startDate then
			return
		end

		setDraft(dates, { anchor = startDate })
		local formattedText: string
		if isRange then
			local endDate = dates[2]
			local formattedDate = DateTimeUtilities.formatLocalTime(startDate)
			local formattedDate2 = if endDate then DateTimeUtilities.formatLocalTime(endDate) else ""
			formattedText = formattedDate .. " - " .. formattedDate2
			pendingProgrammaticInputTextRef.current = formattedText
			setInputText(formattedText)
			props.onChanged(startDate, endDate)
		else
			formattedText = DateTimeUtilities.formatLocalTime(startDate, isTime)
			pendingProgrammaticInputTextRef.current = formattedText
			setInputText(formattedText)
			props.onChanged(startDate)
		end
	end, { props.onChanged, isRange, isTime, setDraft } :: { unknown })

	local onApply = React.useCallback(function()
		local datesToCommit = selectedDatesRef.current
		if datesToCommit then
			if isPresets and not (datesToCommit[1] and datesToCommit[2]) then
				closeDateTimePicker()
				return
			end
			setLastAppliedDates(datesToCommit)
			commitDates(datesToCommit)
		end
		closeDateTimePicker()
	end, { closeDateTimePicker, commitDates, isPresets } :: { unknown })

	-- 6. Button enablement
	local isApplyButtonDisabled = false
	if selectedDates then
		local startDate = selectedDates[1] :: DateTime?
		local endDate = selectedDates[2] :: DateTime?
		if isPresets or isRange then
			isApplyButtonDisabled = startDate == nil
				or endDate == nil
				or startDate.UnixTimestamp > endDate.UnixTimestamp
		elseif variant == DateTimePickerVariantEnum.Single or isTime then
			isApplyButtonDisabled = startDate == nil
		end
	elseif isPresets then
		isApplyButtonDisabled = true
	end

	local isResetButtonDisabled = if isPresets or isTime
		then DateTimeEqualityUtilities.areDatesEqual(selectedDates, lastAppliedDates)
		else true

	return {
		closeDateTimePicker = closeDateTimePicker,
		isOpen = isOpen,
		onFocusGained = onFocusGained,
		onFocusLost = onFocusLost,
		showDateTimePicker = showDateTimePicker,
		textInputRef = textInputRef,
		selectedDates = selectedDates,
		inputText = inputText,
		updateInputText = updateInputText,
		viewAnchorDate = viewAnchorDate,
		onDayActivated = onDayActivated,
		onPresetSelected = onPresetSelected,
		onSelectedDatesChanged = onSelectedDatesChanged,
		onApply = onApply,
		onCancel = onCancel,
		onReset = onReset,
		isApplyButtonDisabled = isApplyButtonDisabled,
		isResetButtonDisabled = isResetButtonDisabled,
	}
end

return useDateTimePickerState
