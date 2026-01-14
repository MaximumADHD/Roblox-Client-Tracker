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

	local function handleFlagChange(key)
		return function(checked)
			Flags[key] = checked
			pcall(function()
				game:SetFastFlagForTesting(key, checked)
			end)
			setFlags(function(current)
				local newFlags = table.clone(current)
				newFlags[key] = checked
				return newFlags
			end)
		end
	end

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
	}, {
		Search = React.createElement(TextInput, {
			text = searchText,
			onChanged = setSearchText,
			label = "Search",
			placeholder = "Search flags...",
		}),
		List = React.createElement(
			View,
			{
				tag = "col gap-small auto-xy",
			},
			Dash.map(entries, function(entry)
				return React.createElement(Checkbox, {
					key = entry.key,
					isChecked = entry.value,
					onActivated = handleFlagChange(entry.key),
					label = entry.key,
				})
			end)
		),
	})
end

return {
	story = FlagsStory,
	summary = "Toggling a flag here should update its state for other stories",
}
