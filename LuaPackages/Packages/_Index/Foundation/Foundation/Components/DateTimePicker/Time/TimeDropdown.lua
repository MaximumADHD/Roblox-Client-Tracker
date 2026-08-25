local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeUtilities = require(Foundation.Components.DateTimePicker.DateTimeUtilities)
local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)
local LocalizationService = require(Foundation.Utility.Wrappers).Services.LocalizationService
local Translator = require(Foundation.Utility.Localization.Translator)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local withDefaults = require(Foundation.Utility.withDefaults)

local MAX_HEIGHT = 200
local TIME_COMPOSITE_TOKEN = "LT"

type Props = {
	-- The datetime value to use for the dropdown
	dateTime: DateTime?,
	-- Layout order
	LayoutOrder: number?,
	-- Callback when an item is changed. This will return a DateTime object in which you can grab the time selected.
	-- If no datetime param is provided then then the date will be fixed to 2000-01-01.
	onItemChanged: (id: number | string) -> (),
	-- Test id
	testId: string?,
	-- Width of the dropdown
	width: UDim?,
}

local defaultProps = {
	dateTime = DateTime.fromLocalTime(2000, 1, 1, 0, 0, 0),
	testId = "--foundation-time-dropdown",
}

local function TimeSelector(timeSelectorProps: Props)
	local props = withDefaults(timeSelectorProps, defaultProps)
	-- We round the dateTime to the nearest minute since we want to ignore seconds
	local dateTime = DateTimeUtilities.roundDownToNearestMinute(props.dateTime)
	local localDateTime = dateTime:ToLocalTime() :: DateTimeUtilities.DateTimeLocalTime

	local maxHeight = useScaledValue(MAX_HEIGHT)

	local getTimeOptions = function()
		local items: { Dropdown.DropdownItem } = {}
		local shouldAddCustomItem = localDateTime.Minute % 30 ~= 0

		-- Loop 48 times to get every 30-minute increment in a day
		for i = 0, 47 do
			local hours = math.floor(i / 2)
			local minutes = (i % 2) * 30

			local itemDateTime = DateTime.fromLocalTime(
				localDateTime.Year,
				localDateTime.Month,
				localDateTime.Day,
				hours,
				minutes,
				localDateTime.Second
			)

			-- If the value of dateTime is in between a 30 minute increment then add that time as a custom item
			if shouldAddCustomItem and dateTime.UnixTimestamp < itemDateTime.UnixTimestamp then
				table.insert(items, {
					icon = nil,
					id = dateTime.UnixTimestamp,
					isChecked = true,
					isDisabled = true,
					text = dateTime:FormatLocalTime(TIME_COMPOSITE_TOKEN, LocalizationService.RobloxLocaleId),
				})

				shouldAddCustomItem = false
			end

			table.insert(items, {
				icon = nil,
				id = itemDateTime.UnixTimestamp,
				isChecked = itemDateTime.UnixTimestamp == dateTime.UnixTimestamp,
				isDisabled = itemDateTime.UnixTimestamp == dateTime.UnixTimestamp,
				text = itemDateTime:FormatLocalTime(TIME_COMPOSITE_TOKEN, LocalizationService.RobloxLocaleId),
			})
		end

		return items
	end

	return React.createElement(Dropdown.Root, {
		items = getTimeOptions(),
		label = "",
		LayoutOrder = props.LayoutOrder,
		maxHeight = maxHeight,
		onItemChanged = props.onItemChanged,
		placeholder = Translator:FormatByKey("CommonUI.Controls.Label.SelectTheTime"),
		size = InputSize.Medium,
		testId = props.testId,
		width = props.width,
		value = dateTime.UnixTimestamp,
	})
end

return TimeSelector
