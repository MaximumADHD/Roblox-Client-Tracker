--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Foundation = require(ViewportToolingFramework.Parent.Foundation)
local React = require(ViewportToolingFramework.Parent.React)
local Types = require(ViewportToolingFramework.Types)

local function Dropdown(props: {
	Item: Types.Dropdown,
	NextOrder: () -> number,
})
	local dropdownItems: { Foundation.DropdownItem } = {}

	for _, choice in props.Item.Items do
		table.insert(dropdownItems, {
			id = choice.Id,
			text = choice.Label,
		})
	end

	local onItemChanged = React.useCallback(function(id: string | number)
		assert(typeof(id) == "string", "Dropdown ID is not string")
		props.Item.OnChange(id)
	end, { props.Item.OnChange })

	return React.createElement(Foundation.Dropdown.Root, {
		label = "",
		value = props.Item.Value,

		onItemChanged = onItemChanged,
		items = dropdownItems,

		size = Foundation.Enums.InputSize.Small,
		width = UDim.new(0, 150),

		LayoutOrder = props.NextOrder(),
	})
end

return Dropdown
