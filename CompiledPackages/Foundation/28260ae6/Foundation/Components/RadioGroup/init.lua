local RadioGroup = require(script.RadioGroup)
local RadioGroupItem = require(script.Item)

export type RadioGroupProps = RadioGroup.RadioGroupProps
export type RadioGroupItemProps = RadioGroupItem.RadioGroupItemProps

return {
	Root = RadioGroup,
	Item = RadioGroupItem,
}
