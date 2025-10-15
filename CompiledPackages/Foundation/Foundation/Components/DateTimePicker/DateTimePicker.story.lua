local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local DateTimePicker = require(Foundation.Components.DateTimePicker)
local DateTimePickerVariant = require(Foundation.Enums.DateTimePickerVariant)
local View = require(Foundation.Components.View)

type DateTimePickerVariant = DateTimePickerVariant.DateTimePickerVariant

local dateTimePickerVariants = Dash.values(DateTimePickerVariant) :: { DateTimePickerVariant }

type Props = {
	controls: {
		variant: DateTimePickerVariant,
		defaultSelectedDate: boolean?,
		hasError: boolean?,
		isDisabled: boolean?,
		label: string,
		showUnselectableDates: boolean?,
		width: number?,
	},
}

return {
	summary = "DateTimePicker",
	stories = {
		{
			name = "DateTimePicker with no default selected date",
			story = function(props: Props)
				local currDate = DateTime.now()
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row",
				}, {
					DateTimePicker = React.createElement(DateTimePicker, {
						hasError = props.controls.hasError,
						isDisabled = props.controls.isDisabled,
						label = props.controls.label,
						onChanged = function() end,
						selectableDateRange = if props.controls.showUnselectableDates
							then {
								startDate = currDate,
								endDate = DateTime.fromUnixTimestamp(currDate.UnixTimestamp + (2 * 24 * 60 * 60)),
							}
							else nil,
						variant = props.controls.variant,
						width = UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
		{
			name = "DateTimePicker with default selected date",
			story = function(props: Props)
				local currDate = DateTime.now()
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row",
				}, {
					DateTimePicker = React.createElement(DateTimePicker, {
						defaultSelectedDate = DateTime.fromLocalTime(2000, 1, 1),
						hasError = props.controls.hasError,
						isDisabled = props.controls.isDisabled,
						label = props.controls.label,
						onChanged = function() end,
						selectableDateRange = if props.controls.showUnselectableDates
							then {
								startDate = currDate,
								endDate = DateTime.fromUnixTimestamp(currDate.UnixTimestamp + (2 * 24 * 60 * 60)),
							}
							else nil,
						variant = props.controls.variant,
						width = UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
	},
	controls = {
		variant = dateTimePickerVariants,
		hasError = false,
		isDisabled = false,
		label = "Date",
		showUnselectableDates = false,
		width = 400,
	},
}
