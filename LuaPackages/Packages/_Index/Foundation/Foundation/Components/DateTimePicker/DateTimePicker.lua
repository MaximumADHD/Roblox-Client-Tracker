local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Calendar = require(script.Parent.Calendar)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local GuiService = require(Foundation.Utility.Wrappers.Services).GuiService
local InputSize = require(Foundation.Enums.InputSize)
local Popover = require(Foundation.Components.Popover)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local TextInput = require(Foundation.Components.TextInput)
local Translator = require(Foundation.Utility.Localization.Translator)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local DateTimePickerPropsModule = require(script.Parent.DateTimePickerProps)
local DateTimePickerVariant = require(Foundation.Enums.DateTimePickerVariant)

export type DateTimePickerProps = DateTimePickerPropsModule.DateTimePickerProps

local defaultProps = {
	variant = DateTimePickerVariant.Single,
	testId = "--foundation-date-time-picker",
}

local function DateTimePicker(dateTimePickerProps: DateTimePickerProps)
	local props: DateTimePickerProps = withDefaults(dateTimePickerProps, defaultProps)

	local tokens = useTokens()
	local isOpen, setIsOpen = React.useState(false)
	local textInputRef = React.useRef(nil)

	local resolvedDefaultDates = React.useMemo(function(): { DateTime }?
		local dates = props.defaultDates
		if dates then
			if typeof(dates) ~= "table" then
				return { dates :: DateTime }
			end
			return dates :: { DateTime }
		end
		return nil
	end, { props.defaultDates })

	local inputText, setInputText = React.useState(
		if resolvedDefaultDates
			then if props.variant == DateTimePickerVariant.Dual
				then `{DateTimeUtilities.formatLocalTime((resolvedDefaultDates)[1])} - {if (
						resolvedDefaultDates :: { DateTime }
					)[2]
					then DateTimeUtilities.formatLocalTime((resolvedDefaultDates)[2])
					else ""}`
				else DateTimeUtilities.formatLocalTime(
					(resolvedDefaultDates)[1],
					props.variant == DateTimePickerVariant.SingleWithTime
				)
			else ""
	)

	-- DateTime objects that we track under the hood to monitor valid calendar changes
	local calendarDates, setCalendarDates = React.useState(resolvedDefaultDates)

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

	-- Since we allow user input we need to parse the text to a DateTime object before calling onChanged
	local updateInputText = React.useCallback(function(txt: string)
		setInputText(txt)

		-- Don't call onChanged for empty or whitespace-only input (prevents unwanted calls on mount)
		if txt:match("^%s*$") then
			return
		end

		if props.variant == DateTimePickerVariant.Dual then
			local dateTimes = txt:split("-")
			local dateTime1 = DateTimeUtilities.getDateTimeFromText(dateTimes[1])
			local dateTime2 = DateTimeUtilities.getDateTimeFromText(dateTimes[2])
			props.onChanged(dateTime1, dateTime2)
		else
			-- trim whitespace from the start and end of the text
			local trimmedText = txt:match("^%s*(.-)%s*$") or ""
			local dateTime = DateTimeUtilities.getDateTimeFromText(trimmedText)
			props.onChanged(dateTime)
		end
	end, { props.onChanged })

	-- We update calendarDate only when it is a valid DateTime.
	-- Thus we can directly call onChanged when apply is activated
	local onApplyActivated = React.useCallback(
		function()
			if props.variant == DateTimePickerVariant.Dual then
				local formattedDate = DateTimeUtilities.formatLocalTime(calendarDates[1] :: DateTime)
				local formattedDate2 = if calendarDates[2]
					then DateTimeUtilities.formatLocalTime(calendarDates[2] :: DateTime)
					else ""
				setInputText(formattedDate .. " - " .. formattedDate2)
			else
				setInputText(
					DateTimeUtilities.formatLocalTime(
						calendarDates[1] :: DateTime,
						props.variant == DateTimePickerVariant.SingleWithTime
					)
				)
			end

			closeDateTimePicker()
		end,
		{
			calendarDates,
			closeDateTimePicker,
		} :: { unknown }
	)

	local isApplyButtonDisabled = function()
		if not calendarDates then
			return false
		elseif
			props.variant == DateTimePickerVariant.Single or props.variant == DateTimePickerVariant.SingleWithTime
		then
			return calendarDates[1] == nil
		elseif props.variant == DateTimePickerVariant.Dual then
			return calendarDates[1] == nil
				or calendarDates[2] == nil
				or (calendarDates[1] :: DateTime).UnixTimestamp > (calendarDates[2] :: DateTime).UnixTimestamp
		end

		return false
	end

	return React.createElement(Popover.Root, {
		isOpen = isOpen,
		testId = props.testId,
	}, {
		DateInput = React.createElement(
			TextInput,
			withCommonProps(props, {
				hasError = props.hasError,
				hint = props.hint,
				iconTrailing = {
					name = IconName.Calendar,
					onActivated = showDateTimePicker,
				},
				isDisabled = props.isDisabled,
				isRequired = props.isRequired,
				key = "date-input",
				label = props.label,
				onChanged = updateInputText,
				onFocusGained = onFocusGained,
				placeholder = Translator:FormatByKey("CommonUI.Controls.Label.SelectDate"),
				ref = textInputRef,
				selectableDateRange = props.selectableDateRange,
				size = InputSize.Medium,
				text = inputText,
				testId = `{props.testId}--text-input`,
				width = props.width,
			})
		),
		Anchor = React.createElement(Popover.Anchor, {
			anchorRef = textInputRef,
		}),
		Calendar = React.createElement(Popover.Content, {
			hasArrow = false,
			onPressedOutside = closeDateTimePicker,
			side = {
				position = PopoverSide.Bottom,
				offset = tokens.Stroke.Standard + tokens.Padding.Small,
			},
			selection = props.selection,
			selectionGroup = props.selectionGroup,
		}, isOpen and React.createElement(View, {
			tag = "col auto-xy padding-large stroke-default radius-medium",
		}, {
			Calendar = React.createElement(Calendar, {
				defaultDates = calendarDates :: { DateTime },
				LayoutOrder = 1,
				onSelectedDateChanged = setCalendarDates,
				selectableDateRange = props.selectableDateRange,
				showStartDateTimeCalendarInput = props.variant ~= DateTimePickerVariant.SingleWithTime,
				showEndDateTimeCalendarInput = props.variant == DateTimePickerVariant.Dual,
				showTimeDropdown = props.variant == DateTimePickerVariant.SingleWithTime,
				testId = `--foundation-calendar`,
			}),
			BottomBar = React.createElement(View, {
				LayoutOrder = 2,
				tag = "row flex-fill gap-small size-full-0 auto-y padding-top-large",
			}, {
				ApplyButton = React.createElement(Button, {
					isDisabled = isApplyButtonDisabled(),
					onActivated = onApplyActivated,
					text = Translator:FormatByKey("CommonUI.Controls.Action.Apply"),
					variant = ButtonVariant.Emphasis,
					testId = `{props.testId}--apply-button`,
				}),
				CancelButton = React.createElement(Button, {
					onActivated = closeDateTimePicker,
					text = Translator:FormatByKey("CommonUI.Controls.Action.Cancel"),
					variant = ButtonVariant.Standard,
					testId = `{props.testId}--cancel-button`,
				}),
			}),
		})),
	})
end

return React.memo(DateTimePicker)
