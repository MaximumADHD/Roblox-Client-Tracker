local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DateTimePicker = require(Foundation.Components.DateTimePicker)
local DateTimePickerVariant = require(Foundation.Enums.DateTimePickerVariant)
local DateTimeUtilities = require(Foundation.Components.DateTimePicker.DateTimeUtilities)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type DateTimePickerProps = DateTimePicker.DateTimePickerProps
type DateTimePickerVariant = DateTimePickerVariant.DateTimePickerVariant

local WIDTH_DEFAULT = "default (400px)"
local WIDTH_500 = "500px"
local WIDTH_FILL = "fill (UDim.new(1, 0))"

type Controls = {
	defaultDates: "" | "2000-01-01" | "2000-01-01/2000-01-03",
	hasError: boolean,
	hint: string,
	isDisabled: boolean,
	isRequired: boolean,
	label: string,
	selectableDateRange: "" | "today+2d",
	variant: DateTimePickerVariant,
	width: typeof(WIDTH_DEFAULT) | typeof(WIDTH_500) | typeof(WIDTH_FILL),
}

local VARIANT_ORDER = {
	DateTimePickerVariant.Single,
	DateTimePickerVariant.SingleWithTime,
	DateTimePickerVariant.Dual,
} :: { DateTimePickerVariant }

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

local CONTROLLED_EXAMPLES: { { label: string, variant: DateTimePickerVariant, note: string } } = {
	{
		label = "Single",
		variant = DateTimePickerVariant.Single,
		note = "Select a date. onChanged(dateTime?)",
	},
	{
		label = "SingleWithTime",
		variant = DateTimePickerVariant.SingleWithTime,
		note = "Select a date and time. onChanged(dateTime?)",
	},
	{
		label = "Dual",
		variant = DateTimePickerVariant.Dual,
		note = "Select a range. onChanged(startDateTime?, endDateTime?)",
	},
}

local function Section(props: {
	layoutOrder: number,
	label: string,
	contentTag: string?,
	note: string?,
	heading: boolean?,
	children: React.ReactNode,
})
	local contentTag = props.contentTag
		or if props.heading then "row gap-large align-y-start auto-xy wrap" else "auto-xy"
	local outerTag = if props.heading then "col gap-medium size-full-0 auto-y" else "col gap-medium " .. contentTag
	local labelTag = if props.heading
		then "text-label-medium content-default auto-xy"
		else "auto-xy text-caption-small text-align-x-left content-default"

	return React.createElement(View, {
		tag = outerTag,
		LayoutOrder = props.layoutOrder,
	}, {
		Label = if props.note
			then React.createElement(View, {
				tag = "row gap-xsmall align-y-center auto-xy wrap",
				LayoutOrder = 1,
			}, {
				Title = React.createElement(Text, {
					Text = props.label,
					tag = labelTag,
					LayoutOrder = 1,
				}),
				Note = React.createElement(Text, {
					Text = props.note,
					tag = "auto-xy text-caption-small content-muted text-align-x-left text-wrap",
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

local function offsetDateFromToday(dayOffset: number): DateTime
	local today = DateTime.now()
	return DateTime.fromUnixTimestamp(today.UnixTimestamp + dayOffset * SECONDS_PER_DAY)
end

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

local function resolveSelectableDateRange(selectableDateRange: string): {
	startDate: DateTime,
	endDate: DateTime,
}?
	if selectableDateRange == "" then
		return nil
	end

	return getSelectableDateRangeFromToday(0, 2)
end

local function resolveDefaultDates(defaultDates: string): (DateTime | { DateTime })?
	if defaultDates == "" then
		return nil
	end

	if defaultDates == "2000-01-01" then
		return DEFAULT_START_DATE
	end

	if defaultDates == "2000-01-01/2000-01-03" then
		return { DEFAULT_START_DATE, DEFAULT_END_DATE }
	end

	return nil
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
	[DateTimePickerVariant.Single] = {
		label = "Date",
		defaultDates = DEFAULT_START_DATE,
	},
	[DateTimePickerVariant.SingleWithTime] = {
		label = "Date and time",
		defaultDates = DEFAULT_START_DATE_WITH_TIME,
	},
	[DateTimePickerVariant.Dual] = {
		label = "Date range",
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

local WIDTH_EXAMPLE_CONTAINER_WIDTH = 800

local function WidthExampleContainer(props: { children: React.ReactNode })
	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(WIDTH_EXAMPLE_CONTAINER_WIDTH, 0),
	}, props.children)
end

local function createDateTimePicker(props: DateTimePickerProps): React.ReactNode
	return React.createElement(DateTimePicker, props :: any)
end

local function StaticDateTimePicker(props: DateTimePickerProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return createDateTimePicker(Dash.join(props, {
		key = remountKey,
		onChanged = function(_startDateTime: DateTime?, _endDateTime: DateTime?)
			setRemountKey(function(key)
				return key + 1
			end)
		end,
	}))
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

	return React.createElement(View, {
		tag = if controls.width == WIDTH_FILL then "col size-full-0 auto-y" else "row auto-xy",
		Size = UDim2.new(1, 0, 0, 100),
	}, {
		DateTimePicker = React.createElement(
			DateTimePicker,
			{
				key = `{controls.variant}-{controlValueKey(controls.defaultDates)}-{controlValueKey(
					controls.selectableDateRange
				)}-{controlValueKey(controls.width)}-{controlValueKey(controls.hint)}-{tostring(controls.hasError)}-{tostring(
					controls.isRequired
				)}`,
				defaultDates = resolveDefaultDates(controls.defaultDates),
				hasError = controls.hasError,
				hint = if controls.hint == "" then nil else controls.hint,
				isDisabled = controls.isDisabled,
				isRequired = if controls.isRequired then true else nil,
				label = controls.label,
				onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
					if controls.variant == DateTimePickerVariant.Dual then
						print(`Dual onChanged: {startDateTime} - {endDateTime}`)
					else
						print(`onChanged: {startDateTime}`)
					end
				end,
				selectableDateRange = resolveSelectableDateRange(controls.selectableDateRange),
				variant = controls.variant,
				width = resolveWidth(controls.width),
			} :: any
		),
	})
end

local function ControlledExample(props: { variant: DateTimePickerVariant }): React.ReactNode
	if props.variant == DateTimePickerVariant.Dual then
		local startDate, setStartDate = React.useState(nil :: DateTime?)
		local endDate, setEndDate = React.useState(nil :: DateTime?)

		return React.createElement(View, {
			tag = "col gap-small auto-xy",
		}, {
			ValueLabel = React.createElement(Text, {
				Text = `Selected: {formatDateTimeLabel(startDate)} - {formatDateTimeLabel(endDate)}`,
				tag = "auto-xy text-caption-small content-muted text-align-x-left",
				LayoutOrder = 1,
			}),
			Content = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 2,
			}, {
				DateTimePicker = createDateTimePicker({
					label = "Date",
					onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
						setStartDate(startDateTime)
						setEndDate(endDateTime)
					end,
					variant = DateTimePickerVariant.Dual,
					width = DEFAULT_WIDTH,
				}),
			}),
		})
	end

	local selectedDate, setSelectedDate = React.useState(nil :: DateTime?)
	local includeTime = props.variant == DateTimePickerVariant.SingleWithTime

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
	}, {
		ValueLabel = React.createElement(Text, {
			Text = `Selected: {formatDateTimeLabel(selectedDate, if includeTime then true else nil)}`,
			tag = "auto-xy text-caption-small content-muted text-align-x-left",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			DateTimePicker = createDateTimePicker({
				label = "Date",
				onChanged = setSelectedDate,
				variant = props.variant,
				width = DEFAULT_WIDTH,
			}),
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = STORY_PAGE_TAG,
		},
		Dash.map(CONTROLLED_EXAMPLES, function(example, index)
			return React.createElement(
				Section,
				{
					layoutOrder = index,
					label = example.label,
					contentTag = "auto-xy",
					note = example.note,
					heading = true,
				},
				React.createElement(ControlledExample, {
					variant = example.variant,
				})
			)
		end)
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
				layoutOrder = index,
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
				layoutOrder = index,
			}, {
				Container = React.createElement(WidthExampleContainer, nil, {
					DateTimePicker = React.createElement(
						StaticDateTimePicker,
						Dash.join(variantProps(DateTimePickerVariant.Single), {
							width = example.width,
						})
					),
				}),
			})
		end)
	)
end

local function StatesStory(): React.ReactNode
	local baseProps = variantProps(DateTimePickerVariant.Single)

	return React.createElement(
		View,
		{
			tag = STACKED_STORY_PAGE_TAG,
		},
		Dash.map(STATE_EXAMPLES, function(example, index)
			return React.createElement(Section, {
				label = example.label,
				layoutOrder = index,
			}, {
				DateTimePicker = React.createElement(StaticDateTimePicker, Dash.join(baseProps, example.props)),
			})
		end)
	)
end

local function ContentStory(): React.ReactNode
	local restrictedSelectableDateRange = getSelectableDateRangeFromToday(-2, 3)

	return React.createElement(View, {
		tag = STORY_PAGE_TAG,
	}, {
		PresetDate = React.createElement(Section, {
			layoutOrder = 1,
			label = "Preset date",
			contentTag = STACKED_EXAMPLES_TAG,
			heading = true,
		}, {
			DateTimePicker = React.createElement(StaticDateTimePicker, variantProps(DateTimePickerVariant.Single)),
		}),
		RestrictedRange = React.createElement(Section, {
			layoutOrder = 2,
			label = "Restricted range",
			contentTag = STACKED_EXAMPLES_TAG,
			note = "selectableDateRange limits selection to 2 days before through 3 days after today.",
			heading = true,
		}, {
			DateTimePicker = React.createElement(
				StaticDateTimePicker,
				Dash.join(variantProps(DateTimePickerVariant.Single), {
					selectableDateRange = restrictedSelectableDateRange,
				})
			),
		}),
	})
end

return {
	summary = "DateTimePicker is a text input with a calendar popover for selecting a date, date-time, or date range. Single selects one date. SingleWithTime adds a time dropdown. Dual selects a start and end date.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
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
			summary = "Parent state via onChanged. Select a value and watch Selected update.",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		defaultDates = { "", "2000-01-01", "2000-01-01/2000-01-03" },
		hasError = false,
		hint = DEFAULT_HELPER_TEXT,
		isDisabled = false,
		isRequired = false,
		label = "Date",
		selectableDateRange = { "", "today+2d" },
		variant = VARIANT_ORDER,
		width = { WIDTH_DEFAULT, WIDTH_500, WIDTH_FILL },
	},
}
