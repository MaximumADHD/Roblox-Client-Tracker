local OptionSelectorGroup = require(script.OptionSelectorGroup)
local OptionSelectorGroupItem = require(script.Item)

export type OptionSelectorGroupProps = OptionSelectorGroup.OptionSelectorGroupProps
export type OptionSelectorGroupItemProps = OptionSelectorGroupItem.OptionSelectorGroupItemProps

return {
	Root = OptionSelectorGroup,
	Item = OptionSelectorGroupItem,
}
