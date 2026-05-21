local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)
local Types = require(Foundation.Components.Types)

type DropdownItem = Dropdown.DropdownItem
type DropdownItems = Dropdown.DropdownItems
type ItemId = Types.ItemId

local function getItems(hasIcon: boolean): { DropdownItem }
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
	summary = "Dropdown component",
	stories = {
		{
			name = "Base",
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
		} :: any,
		{
			name = "Overflow",
			story = function(props)
				local controls = props.controls
				local id, setId = React.useState(nil :: ItemId?)

				local items = React.useMemo(function()
					local tempItems = {}
					for i = 1, 100 do
						local itemId = tostring(i)
						table.insert(tempItems, {
							id = itemId,
							icon = "icons/common/robux",
							text = `Item {itemId}`,
							isDisabled = i % 7 == 0,
						})
					end
					return tempItems :: { DropdownItem }
				end, {})

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
					width = UDim.new(0, 150),
					maxHeight = 500,
				})
			end,
		},
		{
			name = "With item groups",
			story = function(props): React.ReactNode
				local controls = props.controls
				local id, setId = React.useState(nil :: ItemId?)

				return React.createElement(Dropdown.Root, {
					value = id,
					placeholder = if controls.hasPlaceholder then "Choose a value" else nil,
					onItemChanged = function(itemId: ItemId)
						print("Checking item with value = " .. itemId)
						setId(itemId)
					end,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					items = {
						{
							title = "First title" :: string?,
							items = {
								{ id = "a1", icon = "icons/common/robux", text = "Alpha 1" } :: DropdownItem,
								{ id = "a2", text = "Alpha 2" },
							},
						},
						{
							items = {
								{ id = "b1", text = "Beta 1" },
								{ id = "b2", isDisabled = true, text = "Beta 2 (disabled)" },
							},
						},
						{
							items = {
								{ id = "c1", text = "Untitled group item" },
							},
						},
					} :: DropdownItems,
					size = controls.size,
					label = controls.label,
				})
			end,
		},
		{
			name = "Narrow dropdown narrow items",
			story = function(props)
				local controls = props.controls
				local id, setId = React.useState(nil :: ItemId?)

				return React.createElement(Dropdown.Root, {
					value = id,
					placeholder = if controls.hasPlaceholder then "Choose a value" else nil,
					onItemChanged = function(itemId: ItemId)
						print("Checking item with value = " .. itemId)
						setId(itemId)
					end,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					items = {
						{ id = "A", text = "Item A" },
						{ id = "B", text = "Item B", isDisabled = true },
					},
					size = controls.size,
					label = controls.label,
					width = UDim.new(0, 150),
				})
			end,
		},
		{
			name = "Narrow dropdown wider items",
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
					width = UDim.new(0, 150),
				})
			end,
		},
		{
			name = "Wide dropdown narrow items",
			story = function(props)
				local controls = props.controls
				local id, setId = React.useState(nil :: ItemId?)

				return React.createElement(Dropdown.Root, {
					value = id,
					placeholder = if controls.hasPlaceholder then "Choose a value" else nil,
					onItemChanged = function(itemId: ItemId)
						print("Checking item with value = " .. itemId)
						setId(itemId)
					end,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					items = {
						{ id = "A", text = "Item A" },
						{ id = "B", text = "Item B", isDisabled = true },
					},
					size = controls.size,
					label = controls.label,
					width = UDim.new(1, 0),
				})
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		isDisabled = false,
		label = "Dropdown Label",
		hasError = false,
		hasIcon = true,
		hasPlaceholder = false,
	},
}
