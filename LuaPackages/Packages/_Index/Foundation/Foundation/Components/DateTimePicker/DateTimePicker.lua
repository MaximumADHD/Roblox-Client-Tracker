local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimePickerBeta = require(script.Parent.DateTimePickerBeta)
local DateTimePickerPropsModule = require(script.Parent.DateTimePickerProps)
local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
local withDefaults = require(Foundation.Utility.withDefaults)

export type DateTimePickerProps = DateTimePickerPropsModule.DateTimePickerProps

local defaultProps = {
	variant = DateTimePickerVariantEnum.Single,
	testId = "--foundation-date-time-picker",
}

local function DateTimePicker(dateTimePickerProps: DateTimePickerProps): React.ReactNode
	return React.createElement(DateTimePickerBeta, withDefaults(dateTimePickerProps, defaultProps))
end

return React.memo(DateTimePicker)
