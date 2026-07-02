local Foundation = script:FindFirstAncestor("Providers").Parent

local Checkbox = require(Foundation.Components.Checkbox)
local Dash = require(Foundation.Parent.Dash)
local Flags = require(Foundation.Utility.Flags)
local React = require(Foundation.Parent.React)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

local function FlagsStory()
	local searchText, setSearchText = React.useState("")
	local flags, setFlags = React.useState(function()
		return table.clone(Flags)
	end)

	local entries = React.useMemo(function()
		local result = {}
		for key, value in pairs(flags) do
			if searchText == "" or string.find(string.lower(key), string.lower(searchText)) then
				table.insert(result, {
					key = key,
					value = value,
				})
			end
		end
		table.sort(result, function(a, b)
			return a.key < b.key
		end)
		return result
	end, { searchText, flags } :: { unknown })

	local checkedCount = React.useMemo(function()
		local count = 0
		for _, entry in entries do
			if entry.value then
				count += 1
			end
		end
		return count
	end, { entries })

	local function setFlagValue(key: string, checked: boolean)
		Flags[key] = checked
		pcall(function()
			game:SetFastFlagForTesting(key, checked)
		end)
	end

	local function handleFlagChange(key)
		return function(checked)
			setFlagValue(key, checked)
			setFlags(function(current)
				local newFlags = table.clone(current)
				newFlags[key] = checked
				return newFlags
			end)
		end
	end

	local function handleSelectAllChange()
		local shouldSelectAll = checkedCount < #entries
		for _, entry in entries do
			setFlagValue(entry.key, shouldSelectAll)
		end
		setFlags(function(current)
			local newFlags = table.clone(current)
			for _, entry in entries do
				newFlags[entry.key] = shouldSelectAll
			end
			return newFlags
		end)
	end

	local hasEntries = #entries > 0
	local allChecked = hasEntries and checkedCount == #entries
	local isIndeterminate = checkedCount > 0 and checkedCount < #entries
	local selectAllLabel = if allChecked
		then `Unselect all ({#entries})`
		elseif isIndeterminate then `Select all ({checkedCount}/{#entries})`
		else `Select all ({#entries})`

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
	}, {
		Search = React.createElement(TextInput, {
			text = searchText,
			onChanged = setSearchText,
			label = "Search",
			placeholder = "Search flags...",
			LayoutOrder = 1,
		}),
		SelectAll = React.createElement(Checkbox, {
			isChecked = allChecked,
			isIndeterminate = isIndeterminate,
			isDisabled = not hasEntries,
			onActivated = handleSelectAllChange,
			label = selectAllLabel,
			LayoutOrder = 2,
		}),
		List = React.createElement(
			View,
			{
				tag = "col gap-small auto-xy",
				LayoutOrder = 3,
			},
			Dash.map(entries, function(entry, index)
				return React.createElement(Checkbox, {
					key = entry.key,
					isChecked = entry.value,
					onActivated = handleFlagChange(entry.key),
					label = entry.key,
					LayoutOrder = index,
				})
			end)
		),
	})
end

return {
	story = FlagsStory,
	summary = "Toggling a flag here should update its state for other stories",
}
