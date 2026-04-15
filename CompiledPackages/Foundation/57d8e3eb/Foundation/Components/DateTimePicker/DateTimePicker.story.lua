local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimePicker = require(Foundation.Components.DateTimePicker)
local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
local View = require(Foundation.Components.View)

type Props = {
	controls: {
		defaultSelectedDate: boolean?,
		fullWidth: boolean?,
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
			name = "DateTimePicker - Single With Time",
			story = function(props: Props)
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row",
				}, {
					DateTimePicker = React.createElement(DateTimePicker, {
						hasError = props.controls.hasError,
						isDisabled = props.controls.isDisabled,
						label = props.controls.label,
						onChanged = function() end,
						variant = DateTimePickerVariantEnum.SingleWithTime,
						width = if props.controls.fullWidth then UDim.new(1, 0) else UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
		{
			name = "DateTimePicker - Dual",
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
						variant = DateTimePickerVariantEnum.Dual,
						width = if props.controls.fullWidth then UDim.new(1, 0) else UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
		{
			name = "DateTimePicker - Single",
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
						variant = DateTimePickerVariantEnum.Single,
						width = if props.controls.fullWidth then UDim.new(1, 0) else UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
		{
			name = "DateTimePicker - Single with default selected date 1/1/2000",
			story = function(props: Props)
				local currDate = DateTime.now()
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row",
				}, {
					DateTimePicker = React.createElement(DateTimePicker, {
						defaultDates = DateTime.fromLocalTime(2000, 1, 1),
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
						variant = DateTimePickerVariantEnum.Single,
						width = if props.controls.fullWidth then UDim.new(1, 0) else UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
		{
			name = "DateTimePicker - Dual with default selected date 1/1/2000 - 1/3/2000",
			story = function(props: Props)
				local currDate = DateTime.now()
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row",
				}, {
					DateTimePicker = React.createElement(DateTimePicker, {
						defaultDates = { DateTime.fromLocalTime(2000, 1, 1), DateTime.fromLocalTime(2000, 1, 3) },
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
						variant = DateTimePickerVariantEnum.Dual,
						width = if props.controls.fullWidth then UDim.new(1, 0) else UDim.new(0, props.controls.width),
					}),
				})
			end,
		},
	},
	controls = {
		fullWidth = false,
		hasError = false,
		isDisabled = false,
		label = "Date",
		showUnselectableDates = false,
		width = 400,
	},
}
