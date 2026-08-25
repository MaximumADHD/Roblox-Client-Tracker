local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeEqualityUtilities = require(script.Parent.Parent.Utilities.DateTimeEqualityUtilities)
local DateTimePickerDateRangePresetEnum = require(Foundation.Enums.DateTimePickerDateRangePreset)
local DateTimePresetRangesUtilities = require(script.Parent.Parent.Utilities.DateTimePresetRangesUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange
type DateRangePreset = DateTimePickerDateRangePresetEnum.DateTimePickerDateRangePreset

local ChipGroup = require(Foundation.Components.ChipGroup)
local ChipSize = require(Foundation.Enums.ChipSize)
local Translator = require(Foundation.Utility.Localization.Translator)

type Props = {
	-- The current selected range. Used to derive which preset is checked.
	selectedDates: { DateTime }?,
	-- Called with the preset's resolved date range when a chip is activated
	onPresetSelected: (range: DateRange) -> (),
	-- Anchor used to resolve relative presets (defaults to now)
	referenceDate: DateTime?,
	-- When set, presets whose range falls outside this window are omitted
	selectableDateRange: DateRange?,
	LayoutOrder: number?,
	testId: string?,
}

local ORDERED_PRESETS: { DateRangePreset } = {
	DateTimePickerDateRangePresetEnum.Today,
	DateTimePickerDateRangePresetEnum.ThisWeek,
	DateTimePickerDateRangePresetEnum.LastWeek,
	DateTimePickerDateRangePresetEnum.ThisMonth,
	DateTimePickerDateRangePresetEnum.ThisYear,
	DateTimePickerDateRangePresetEnum.LastYear,
}

local function buildPresetChip(
	preset: DateRangePreset,
	selectedDates: { DateTime }?,
	referenceDate: DateTime?,
	selectableDateRange: DateRange?,
	onPresetSelected: (range: DateRange) -> ()
): ChipGroup.ChipGroupItem?
	local range = DateTimePresetRangesUtilities.resolvePresetRange(preset, referenceDate)
	if
		selectableDateRange and not DateTimeEqualityUtilities.isRangeWithinSelectableRange(range, selectableDateRange)
	then
		return nil
	end

	return {
		text = Translator:FormatByKey(`CommonUI.Controls.Label.{preset}`),
		isChecked = DateTimeEqualityUtilities.areDatesSameDayAsRange(selectedDates, range),
		onActivated = function()
			onPresetSelected(range)
		end,
	}
end

local function DateRangePresets(props: Props)
	local chips = React.useMemo(function(): { ChipGroup.ChipGroupItem }
		local items = {}
		for index = 1, #ORDERED_PRESETS do
			local chip = buildPresetChip(
				ORDERED_PRESETS[index],
				props.selectedDates,
				props.referenceDate,
				props.selectableDateRange,
				props.onPresetSelected
			)
			if chip then
				table.insert(items, chip)
			end
		end
		return items
	end, { props.selectedDates, props.referenceDate, props.onPresetSelected, props.selectableDateRange } :: { unknown })

	return React.createElement(ChipGroup, {
		chips = chips,
		LayoutOrder = props.LayoutOrder,
		size = ChipSize.Small,
		testId = props.testId,
	})
end

return DateRangePresets
