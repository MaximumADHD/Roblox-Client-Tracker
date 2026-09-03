local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DateTimePicker = require(Foundation.Components.DateTimePicker)
local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
local DateTimePresetRangesUtilities =
	require(Foundation.Components.DateTimePicker.Utilities.DateTimePresetRangesUtilities)
local DateTimeUtilities = require(Foundation.Components.DateTimePicker.DateTimeUtilities)
local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

-- Everything beta (the DualWithPresets variant, the visual refresh, the new
-- prop controls) is gated behind FoundationDateTimePickerBetaUpdate. With the
-- flag off the storybook mirrors the previous, shippable surface only.
local isBeta = Flags.FoundationDateTimePickerBetaUpdate

type DateTimePickerProps = DateTimePicker.DateTimePickerProps
type DateTimePickerVariant = DateTimePickerVariantEnum.DateTimePickerVariant
type DateTimePickerElementProps = DateTimePickerProps & {
	key: string?,
}

local WIDTH_DEFAULT = "default (400px)"
local WIDTH_500 = "500px"
local WIDTH_FILL = "fill (UDim.new(1, 0))"

type Controls = {
	defaultDates: string,
	hasError: boolean,
	hint: string,
	isDisabled: boolean,
	isRequired: boolean,
	label: string,
	placeholder: string,
	referenceDate: "" | "2010-03-15",
	selectableDateRange: "" | "+/- 7 days",
	variant: DateTimePickerVariant,
	width: typeof(WIDTH_DEFAULT) | typeof(WIDTH_500) | typeof(WIDTH_FILL),
}

local VARIANT_ORDER = (
	if isBeta
		then {
			DateTimePickerVariantEnum.Single,
			DateTimePickerVariantEnum.SingleWithTime,
			DateTimePickerVariantEnum.Dual,
			DateTimePickerVariantEnum.DualWithPresets,
		}
		else {
			DateTimePickerVariantEnum.Single,
			DateTimePickerVariantEnum.SingleWithTime,
			DateTimePickerVariantEnum.Dual,
		}
) :: { DateTimePickerVariant }

local DEFAULT_START_DATE = DateTime.fromLocalTime(2000, 1, 1)
local DEFAULT_END_DATE = DateTime.fromLocalTime(2000, 1, 3)
local DEFAULT_START_DATE_WITH_TIME = DateTime.fromLocalTime(2000, 1, 1, 14, 30, 0)
local SECONDS_PER_DAY = 24 * 60 * 60

local DEFAULT_HELPER_TEXT = "This is a helper text or hint"

local function noopOnChanged(_startDateTime: DateTime?, _endDateTime: DateTime?) end

local DEFAULT_WIDTH = UDim.new(0, 400)
local WIDTH_UDIM_500 = UDim.new(0, 500)
local WIDTH_UDIM_FILL = UDim.new(1, 0)

local STACKED_EXAMPLES_TAG = "col gap-xxlarge size-full-0 auto-y"
local STORY_PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local STACKED_STORY_PAGE_TAG = STORY_PAGE_TAG .. " " .. STACKED_EXAMPLES_TAG

local WIDTH_EXAMPLES: { { label: string, width: UDim? } } = {
	{ label = "Default width", width = nil },
	{ label = "Custom 500px", width = WIDTH_UDIM_500 },
	{ label = "Full width in 800px container", width = WIDTH_UDIM_FILL },
}

local STATE_EXAMPLES: { { label: string, props: { [string]: unknown } } } = {
	{ label = "Default", props = {} },
	{ label = "With hint", props = { hint = DEFAULT_HELPER_TEXT } },
	{ label = "Required", props = { isRequired = true } },
	{ label = "hasError", props = { hasError = true } },
	{ label = "isDisabled", props = { isDisabled = true } },
}

local CONTROLLED_EXAMPLES: { { label: string, variant: DateTimePickerVariant, note: string } } = if isBeta
	then {
		{
			label = "Single",
			variant = DateTimePickerVariantEnum.Single,
			note = "Select a date. onChanged(dateTime?)",
		},
		{
			label = "SingleWithTime",
			variant = DateTimePickerVariantEnum.SingleWithTime,
			note = "Select a date and time. onChanged(dateTime?)",
		},
		{
			label = "Dual",
			variant = DateTimePickerVariantEnum.Dual,
			note = "Select a range. onChanged(startDateTime?, endDateTime?)",
		},
		{
			label = "DualWithPresets",
			variant = DateTimePickerVariantEnum.DualWithPresets,
			note = "Two-pane range with presets. Draft commits on Apply. Requires the beta flag.",
		},
	}
	else {
		{
			label = "Single",
			variant = DateTimePickerVariantEnum.Single,
			note = "Select a date. onChanged(dateTime?)",
		},
		{
			label = "SingleWithTime",
			variant = DateTimePickerVariantEnum.SingleWithTime,
			note = "Select a date and time. onChanged(dateTime?)",
		},
		{
			label = "Dual",
			variant = DateTimePickerVariantEnum.Dual,
			note = "Select a range. onChanged(startDateTime?, endDateTime?)",
		},
	}

local RESTRICTED_RANGE_NOTE = "selectableDateRange limits selection to 2 days before through 3 days after today."

local function Section(props: {
	LayoutOrder: number,
	label: string,
	contentTag: string?,
	note: string?,
	heading: boolean?,
	children: React.ReactNode,
})
	local contentTag = props.contentTag or if props.heading then "row gap-large auto-xy wrap" else "auto-xy"
	local outerTag = if props.heading then "col gap-medium size-full-0 auto-y" else "col gap-medium " .. contentTag
	local labelTag = if props.heading
		then "text-label-medium content-default auto-xy"
		else "auto-xy text-caption-small text-align-x-left content-default"

	return React.createElement(View, {
		tag = outerTag,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = if props.note
			then React.createElement(View, {
				tag = "row wrap align-y-center gap-xsmall auto-xy",
				LayoutOrder = 1,
			}, {
				Title = React.createElement(Text, {
					Text = props.label,
					tag = labelTag,
					LayoutOrder = 1,
				}),
				Note = React.createElement(Text, {
					Text = props.note,
					tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
					LayoutOrder = 2,
				}),
			})
			else React.createElement(Text, {
				Text = props.label,
				tag = labelTag,
				LayoutOrder = 1,
			}),
		Content = React.createElement(View, {
			tag = contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

local TODAY_DEFAULT_DATES_RANGE = DateTimePresetRangesUtilities.resolvePresetRange("Today")
local THIS_WEEK_DEFAULT_DATES_RANGE = DateTimePresetRangesUtilities.resolvePresetRange("ThisWeek")

local DEFAULT_DATES_TODAY = DateTimeUtilities.formatLocalTime(TODAY_DEFAULT_DATES_RANGE.startDate)
local DEFAULT_DATES_THIS_WEEK =
	`{DateTimeUtilities.formatLocalTime(THIS_WEEK_DEFAULT_DATES_RANGE.startDate)} - {DateTimeUtilities.formatLocalTime(
		THIS_WEEK_DEFAULT_DATES_RANGE.endDate
	)}`

local function resolveDefaultDates(defaultDates: string): (DateTime | { DateTime })?
	if defaultDates == "" then
		return nil
	end

	if defaultDates == DEFAULT_DATES_TODAY then
		return { TODAY_DEFAULT_DATES_RANGE.startDate, TODAY_DEFAULT_DATES_RANGE.endDate }
	end

	if defaultDates == DEFAULT_DATES_THIS_WEEK then
		return { THIS_WEEK_DEFAULT_DATES_RANGE.startDate, THIS_WEEK_DEFAULT_DATES_RANGE.endDate }
	end

	return nil
end

local function offsetDate(dateTime: DateTime, dayOffset: number): DateTime
	return DateTime.fromUnixTimestamp(dateTime.UnixTimestamp + dayOffset * SECONDS_PER_DAY)
end

local function offsetDateFromToday(dayOffset: number): DateTime
	local today = DateTime.now()
	return DateTime.fromUnixTimestamp(today.UnixTimestamp + dayOffset * SECONDS_PER_DAY)
end

local SELECTABLE_DATE_RANGE_PLUS_MINUS_7_DAYS = "+/- 7 days"
local SELECTABLE_DATE_RANGE_DAY_OFFSET = 7

local function getSelectableDateRangeFromToday(
	dayOffsetStart: number,
	dayOffsetEnd: number
): {
	startDate: DateTime,
	endDate: DateTime,
}
	return {
		startDate = offsetDateFromToday(dayOffsetStart),
		endDate = offsetDateFromToday(dayOffsetEnd),
	}
end

local function resolveSelectableDateRange(
	selectableDateRange: string,
	defaultDates: string
): {
	startDate: DateTime,
	endDate: DateTime,
}?
	if selectableDateRange == "" then
		return nil
	end

	local dayOffset = SELECTABLE_DATE_RANGE_DAY_OFFSET
	local resolvedDefaultDates = resolveDefaultDates(defaultDates)
	local referenceStart: DateTime
	local referenceEnd: DateTime

	if resolvedDefaultDates == nil then
		local today = DateTime.now()
		referenceStart = today
		referenceEnd = today
	elseif typeof(resolvedDefaultDates) == "DateTime" then
		referenceStart = resolvedDefaultDates
		referenceEnd = resolvedDefaultDates
	else
		referenceStart = resolvedDefaultDates[1]
		referenceEnd = resolvedDefaultDates[2]
	end

	return {
		startDate = offsetDate(referenceStart, -dayOffset),
		endDate = offsetDate(referenceEnd, dayOffset),
	}
end

local REFERENCE_DATE = DateTime.fromLocalTime(2010, 3, 15)

local function resolveReferenceDate(referenceDate: string): DateTime?
	if referenceDate == "" then
		return nil
	end

	return REFERENCE_DATE
end

local function resolveWidth(width: string): UDim?
	if width == WIDTH_DEFAULT then
		return nil
	end

	if width == WIDTH_FILL then
		return WIDTH_UDIM_FILL
	end

	return WIDTH_UDIM_500
end

local function formatDateTimeLabel(dateTime: DateTime?, includeTime: boolean?): string
	if dateTime == nil then
		return "nil"
	end

	return DateTimeUtilities.formatLocalTime(dateTime, includeTime)
end

local VARIANT_STATIC_PROPS: { [DateTimePickerVariant]: { label: string, defaultDates: DateTime | { DateTime } } } = {
	[DateTimePickerVariantEnum.Single] = {
		label = "Date",
		defaultDates = DEFAULT_START_DATE,
	},
	[DateTimePickerVariantEnum.SingleWithTime] = {
		label = "Date and time",
		defaultDates = DEFAULT_START_DATE_WITH_TIME,
	},
	[DateTimePickerVariantEnum.Dual] = {
		label = "Date range",
		defaultDates = { DEFAULT_START_DATE, DEFAULT_END_DATE },
	},
	[DateTimePickerVariantEnum.DualWithPresets] = {
		label = "Date range with filters",
		defaultDates = { DEFAULT_START_DATE, DEFAULT_END_DATE },
	},
}

local function variantProps(variant: DateTimePickerVariant): DateTimePickerProps
	return Dash.join({
		label = "Date",
		onChanged = noopOnChanged,
		variant = variant,
		width = DEFAULT_WIDTH,
	}, VARIANT_STATIC_PROPS[variant]) :: DateTimePickerProps
end

local function emptySingleProps(overrides: {
	placeholder: string?,
	width: UDim?,
}?): DateTimePickerProps
	return Dash.join({
		label = "Date",
		onChanged = noopOnChanged,
		variant = DateTimePickerVariantEnum.Single,
		width = DEFAULT_WIDTH,
	}, overrides or {}) :: DateTimePickerProps
end

local WIDTH_EXAMPLE_CONTAINER_WIDTH = 800

local function WidthExampleContainer(props: { children: React.ReactNode })
	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(WIDTH_EXAMPLE_CONTAINER_WIDTH, 0),
	}, props.children)
end

local function StaticDateTimePicker(props: DateTimePickerProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		DateTimePicker,
		Dash.join(props, {
			key = remountKey,
			onChanged = function(_startDateTime: DateTime?, _endDateTime: DateTime?)
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		}) :: DateTimePickerElementProps
	)
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls

	local function controlValueKey(value: unknown): string
		if value == nil or value == "" then
			return ""
		end

		if typeof(value) == "string" then
			return value
		end

		return tostring(value)
	end

	local dateTimePickerProps: DateTimePickerElementProps = {
		key = `{controls.variant}-{controlValueKey(controls.defaultDates)}-{controlValueKey(
			controls.selectableDateRange
		)}-{controlValueKey(controls.width)}-{controlValueKey(controls.hint)}-{controlValueKey(controls.referenceDate)}-{tostring(
			controls.hasError
		)}-{tostring(controls.isRequired)}`,
		defaultDates = resolveDefaultDates(controls.defaultDates),
		referenceDate = resolveReferenceDate(controls.referenceDate),
		hasError = controls.hasError,
		hint = if controls.hint == "" then nil else controls.hint,
		isDisabled = controls.isDisabled,
		isRequired = if controls.isRequired then true else nil,
		label = controls.label,
		placeholder = if controls.placeholder == "" then nil else controls.placeholder,
		onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
			if
				controls.variant == DateTimePickerVariantEnum.Dual
				or controls.variant == DateTimePickerVariantEnum.DualWithPresets
			then
				print(`Dual onChanged: {startDateTime} - {endDateTime}`)
			else
				print(`onChanged: {startDateTime}`)
			end
		end,
		selectableDateRange = resolveSelectableDateRange(controls.selectableDateRange, controls.defaultDates),
		variant = controls.variant,
		width = resolveWidth(controls.width),
	}

	return React.createElement(View, {
		tag = if controls.width == WIDTH_FILL then "col size-full-0 auto-y" else "row auto-xy",
		Size = UDim2.new(1, 0, 0, 100),
	}, {
		DateTimePicker = React.createElement(DateTimePicker, dateTimePickerProps),
	})
end

local function isPickerInputEmpty(host: Instance?): boolean
	local textBox = (host and host:FindFirstChildWhichIsA("TextBox", true)) :: TextBox?
	return textBox == nil or textBox.Text:match("^%s*$") ~= nil
end

local function isDateOutsideSelectableRange(date: DateTime, selectableDateRange: DateTimeUtilities.DateRange?): boolean
	return selectableDateRange ~= nil and not DateTimeUtilities.isDateWithinRange(date, selectableDateRange)
end

type ControlledExampleProps = {
	variant: DateTimePickerVariant,
	selectableDateRange: DateTimeUtilities.DateRange?,
}

local function DualRangeControlledExample(props: ControlledExampleProps): React.ReactNode
	local hostRef = React.useRef(nil :: GuiObject?)
	local startDate, setStartDate = React.useState(nil :: DateTime?)
	local endDate, setEndDate = React.useState(nil :: DateTime?)
	local hasError, setHasError = React.useState(false)

	return React.createElement(View, {
		ref = hostRef,
		tag = "col gap-small auto-xy",
	}, {
		ValueLabel = React.createElement(Text, {
			Text = `Selected: {formatDateTimeLabel(startDate)} - {formatDateTimeLabel(endDate)}`,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		DateTimePicker = React.createElement(DateTimePicker, {
			LayoutOrder = 2,
			hasError = hasError,
			hint = if hasError then "Invalid date range" else nil,
			label = "Date",
			onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
				setStartDate(startDateTime)
				setEndDate(endDateTime)
				local inputEmpty = isPickerInputEmpty(hostRef.current)
				local incomplete = startDateTime == nil or endDateTime == nil
				local outOfRange = if startDateTime and endDateTime
					then isDateOutsideSelectableRange(startDateTime, props.selectableDateRange)
						or isDateOutsideSelectableRange(endDateTime, props.selectableDateRange)
					else false
				setHasError(not inputEmpty and (incomplete or outOfRange))
			end,
			selectableDateRange = props.selectableDateRange,
			variant = props.variant,
			width = DEFAULT_WIDTH,
		}),
	})
end

local function SingleControlledExample(props: ControlledExampleProps): React.ReactNode
	local hostRef = React.useRef(nil :: GuiObject?)
	local selectedDate, setSelectedDate = React.useState(nil :: DateTime?)
	local hasError, setHasError = React.useState(false)
	local includeTime = props.variant == DateTimePickerVariantEnum.SingleWithTime

	return React.createElement(View, {
		ref = hostRef,
		tag = "col gap-small auto-xy",
	}, {
		ValueLabel = React.createElement(Text, {
			Text = `Selected: {formatDateTimeLabel(selectedDate, if includeTime then true else nil)}`,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		DateTimePicker = React.createElement(DateTimePicker, {
			LayoutOrder = 2,
			hasError = hasError,
			hint = if hasError then "Invalid date" else nil,
			label = "Date",
			onChanged = function(dateTime: DateTime?, _endDateTime: DateTime?)
				setSelectedDate(dateTime)
				local inputEmpty = isPickerInputEmpty(hostRef.current)
				local unparseable = dateTime == nil
				local outOfRange = if dateTime
					then isDateOutsideSelectableRange(dateTime, props.selectableDateRange)
					else false
				setHasError(not inputEmpty and (unparseable or outOfRange))
			end,
			selectableDateRange = props.selectableDateRange,
			variant = props.variant,
			width = DEFAULT_WIDTH,
		}),
	})
end

-- Dual and single variants hold different state, so they are separate components rather than
-- branches inside one: switching variant swaps the element type and resets state cleanly.
local function ControlledExample(props: ControlledExampleProps): React.ReactNode
	local isDualRange = props.variant == DateTimePickerVariantEnum.Dual
		or props.variant == DateTimePickerVariantEnum.DualWithPresets

	return React.createElement(if isDualRange then DualRangeControlledExample else SingleControlledExample, props)
end

local function ControlledStory(): React.ReactNode
	local restrictedSelectableDateRange = getSelectableDateRangeFromToday(-2, 3)
	local restrictedRangeLayoutOrder = #CONTROLLED_EXAMPLES + 1

	local restrictedRangeSections: { [string]: React.ReactNode } = Dash.join(
		{
			RestrictedRangeSingle = React.createElement(Section, {
				LayoutOrder = restrictedRangeLayoutOrder,
				label = "Restricted range",
				contentTag = "auto-xy",
				note = RESTRICTED_RANGE_NOTE,
				heading = true,
			}, {
				ControlledExample = React.createElement(ControlledExample, {
					variant = DateTimePickerVariantEnum.Single,
					selectableDateRange = restrictedSelectableDateRange,
				}),
			}),
			RestrictedRangeDual = React.createElement(Section, {
				LayoutOrder = restrictedRangeLayoutOrder + 1,
				label = "Restricted range — Dual",
				contentTag = "auto-xy",
				note = RESTRICTED_RANGE_NOTE,
				heading = true,
			}, {
				ControlledExample = React.createElement(ControlledExample, {
					variant = DateTimePickerVariantEnum.Dual,
					selectableDateRange = restrictedSelectableDateRange,
				}),
			}),
		},
		if isBeta
			then (function()
				local function getRestrictedRangeForPresets(): {
					startDate: DateTime,
					endDate: DateTime,
				}
					local today = DateTime.now()
					local weekday = tonumber(today:FormatLocalTime("d", "en-us")) or 0

					return {
						startDate = offsetDateFromToday(-weekday - 7),
						endDate = offsetDateFromToday(-weekday + 6),
					}
				end

				return {
					RestrictedRangeDualWithPresets = React.createElement(Section, {
						LayoutOrder = restrictedRangeLayoutOrder + 2,
						label = "Restricted range — DualWithPresets",
						contentTag = "auto-xy",
						note = "selectableDateRange spans last week through this week so Today, This week, and Last week presets remain available.",
						heading = true,
					}, {
						ControlledExample = React.createElement(ControlledExample, {
							variant = DateTimePickerVariantEnum.DualWithPresets,
							selectableDateRange = getRestrictedRangeForPresets(),
						}),
					}),
				}
			end)()
			else {}
	)

	return React.createElement(
		View,
		{
			tag = STORY_PAGE_TAG,
		},
		Dash.join(
			Dash.map(CONTROLLED_EXAMPLES, function(example, index)
				return React.createElement(
					Section,
					{
						LayoutOrder = index,
						label = example.label,
						contentTag = "auto-xy",
						note = example.note,
						heading = true,
					},
					React.createElement(ControlledExample, {
						variant = example.variant,
						selectableDateRange = nil,
					})
				)
			end),
			restrictedRangeSections
		)
	)
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = STACKED_STORY_PAGE_TAG,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(Section, {
				label = variant,
				LayoutOrder = index,
			}, {
				DateTimePicker = React.createElement(StaticDateTimePicker, variantProps(variant)),
			})
		end)
	)
end

local function WidthStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = STACKED_STORY_PAGE_TAG,
		},
		Dash.map(WIDTH_EXAMPLES, function(example, index)
			return React.createElement(Section, {
				label = example.label,
				LayoutOrder = index,
			}, {
				Container = React.createElement(WidthExampleContainer, nil, {
					DateTimePicker = React.createElement(
						StaticDateTimePicker,
						emptySingleProps({
							width = example.width,
						})
					),
				}),
			})
		end)
	)
end

local function StatesStory(): React.ReactNode
	local baseProps = emptySingleProps()

	return React.createElement(
		View,
		{
			tag = STACKED_STORY_PAGE_TAG,
		},
		Dash.map(STATE_EXAMPLES, function(example, index)
			return React.createElement(Section, {
				label = example.label,
				LayoutOrder = index,
			}, {
				DateTimePicker = React.createElement(StaticDateTimePicker, Dash.join(baseProps, example.props)),
			})
		end)
	)
end

local function ContentStory(): React.ReactNode
	local contentExamples: { { label: string, note: string?, props: DateTimePickerProps } }
	if isBeta then
		local function offsetMonthsFromToday(monthOffset: number): DateTime
			local localTime = DateTimeUtilities.toLocalTime(DateTime.now())
			local month = localTime.Month
			local year = localTime.Year
			for _ = 1, monthOffset do
				month, year = DateTimeUtilities.getNextMonthInfo(month, year)
			end
			local day = math.min(localTime.Day, DateTimeUtilities.getDaysInMonth(month, year))
			return DateTime.fromLocalTime(year, month, day)
		end

		local referenceDate = offsetMonthsFromToday(5)

		local function getMonthSelectableDateRange(dateTime: DateTime): DateTimeUtilities.DateRange
			local localTime = DateTimeUtilities.toLocalTime(dateTime)
			return {
				startDate = DateTime.fromLocalTime(localTime.Year, localTime.Month, 1),
				endDate = DateTime.fromLocalTime(
					localTime.Year,
					localTime.Month,
					DateTimeUtilities.getDaysInMonth(localTime.Month, localTime.Year)
				),
			}
		end

		contentExamples = {
			{
				label = "Preset date",
				props = variantProps(DateTimePickerVariantEnum.Single),
			},
			{
				label = "Custom placeholder",
				note = "Override the empty-state hint with `placeholder`.",
				props = emptySingleProps({
					placeholder = "MM/DD/YYYY",
				}),
			},
			{
				label = "Reference date",
				note = "selectableDateRange is the month ~5 months from today. Opening there depends on referenceDate — without it the calendar would open on today.",
				props = {
					label = "Select available dates",
					onChanged = noopOnChanged,
					referenceDate = referenceDate,
					selectableDateRange = getMonthSelectableDateRange(referenceDate),
					variant = DateTimePickerVariantEnum.DualWithPresets,
					width = DEFAULT_WIDTH,
				},
			},
		}
	else
		contentExamples = {
			{
				label = "Preset date",
				props = variantProps(DateTimePickerVariantEnum.Single),
			},
		}
	end

	return React.createElement(
		View,
		{
			tag = STORY_PAGE_TAG,
		},
		Dash.map(contentExamples, function(example, index)
			return React.createElement(Section, {
				LayoutOrder = index,
				label = example.label,
				contentTag = STACKED_EXAMPLES_TAG,
				note = example.note,
				heading = true,
			}, {
				DateTimePicker = React.createElement(StaticDateTimePicker, example.props),
			})
		end)
	)
end

local summary = if isBeta
	then "DateTimePicker is a text input with a calendar popover for selecting a date, date-time, or date range. Single selects one date. SingleWithTime adds a time dropdown. Dual selects a start and end date. DualWithPresets adds a two-pane calendar with range presets and a draft that commits on Apply."
	else "DateTimePicker is a text input with a calendar popover for selecting a date, date-time, or date range. Single selects one date. SingleWithTime adds a time dropdown. Dual selects a start and end date."

local controls: { [string]: unknown } = Dash.join(
	{
		defaultDates = { "", DEFAULT_DATES_TODAY, DEFAULT_DATES_THIS_WEEK },
		hasError = false,
		hint = DEFAULT_HELPER_TEXT,
		isDisabled = false,
		isRequired = false,
		label = "Date",
		selectableDateRange = { "", SELECTABLE_DATE_RANGE_PLUS_MINUS_7_DAYS },
		variant = VARIANT_ORDER,
		width = { WIDTH_DEFAULT, WIDTH_500, WIDTH_FILL },
	},
	if isBeta
		then {
			placeholder = "",
			referenceDate = { "", "2010-03-15" },
		}
		else {}
)

return {
	summary = summary,
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Width",
			story = WidthStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			summary = "Parent state via onChanged. Non-empty invalid or out-of-range input sets hasError; clearing restores a valid empty state.",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = controls,
}
