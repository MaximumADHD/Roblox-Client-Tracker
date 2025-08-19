local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)

local InternalMenu = require(Foundation.Components.InternalMenu)
type MenuItem = InternalMenu.MenuItem
type ItemId = Types.ItemId

local function getItems(hasIcon: boolean): { MenuItem }
	local icon = if hasIcon then "icons/common/safety" else nil
	return {
		{ id = "A", text = "Item A" },
		{ id = "B", text = "Item B", isDisabled = true },
		{
			id = "G",
			text = "Sie dürfen das Geschwindigkeitsbegrenzung nicht überschreiten, die Strafe beträgt 100 Euro",
		},
		{ id = "C", text = "Item C", icon = icon },
	}
end

return {
	summary = "Dropdown Group component",
	story = function(props)
		local controls = props.controls
		local id, setId = React.useState(nil :: ItemId?)
		local items = getItems(controls.hasIcon)

		return React.createElement(Dropdown.Root, {
			value = id,
			placeholder = if controls.hasPlaceholder then "Choose a value" else nil,
			onItemChanged = function(itemId: ItemId)
				print("Checking item with value = " .. itemId)
				setId(itemId)
			end,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			items = items,
			size = controls.size,
			label = controls.label,
		})
	end,
	controls = {
		size = Dash.values(InputSize),
		isDisabled = false,
		label = "Dropdown Label",
		hasError = false,
		hasIcon = true,
		hasPlaceholder = false,
	},
}
