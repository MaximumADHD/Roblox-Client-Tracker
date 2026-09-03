local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Checkbox = require(Foundation.Components.Checkbox)
local Dash = require(Packages.Dash)
local Flags = require(Foundation.Utility.Flags)
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

-- Flipping this while Views are mounted changes hook counts and crashes React.
local ISOLATED_FLAGS: { [string]: boolean } = {
	FoundationViewMemoizationChanges = true,
}

local function FlagsStory()
	local searchText, setSearchText = React.useState("")
	local flags, setFlags = React.useState(function()
		return table.clone(Flags)
	end)

	local entries = React.useMemo(function()
		local result = {}
		for key, value in pairs(flags) do
			if
				not ISOLATED_FLAGS[key]
				and (searchText == "" or string.find(string.lower(key), string.lower(searchText)))
			then
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

	local isolatedEntries = React.useMemo(function()
		local result = {}
		for key in ISOLATED_FLAGS do
			if searchText == "" or string.find(string.lower(key), string.lower(searchText)) then
				table.insert(result, {
					key = key,
					value = flags[key],
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

	local function handleSelectAllChange(shouldSelectAll: boolean)
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

	local entryCount = #entries
	local hasEntries = entryCount > 0
	local allChecked = hasEntries and checkedCount == entryCount
	local isIndeterminate = checkedCount > 0 and checkedCount < entryCount
	local selectAllLabel = if allChecked
		then `Unselect all ({entryCount})`
		elseif isIndeterminate then `Select all ({checkedCount}/{entryCount})`
		else `Select all ({entryCount})`

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
	}, {
		Controls = React.createElement(View, {
			tag = "col gap-medium auto-xy padding-bottom-large",
			LayoutOrder = 1,
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
		}),
		List = React.createElement(
			View,
			{
				tag = "col gap-small auto-xy",
				LayoutOrder = 2,
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
		Isolated = if #isolatedEntries > 0
			then React.createElement(View, {
				tag = "col gap-small auto-xy padding-y-small",
				LayoutOrder = 3,
			}, {
				Heading = React.createElement(Text, {
					Text = "Isolated flags",
					tag = "auto-xy text-label-small content-default",
					LayoutOrder = 1,
				}),
				Description = React.createElement(Text, {
					Text = "Excluded from bulk selection. Toggling FoundationViewMemoizationChanges while Views are mounted changes hook counts and crashes React — remount this story after changing it.",
					tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
					LayoutOrder = 2,
				}),
				Flags = React.createElement(
					View,
					{
						tag = "col gap-small auto-xy",
						LayoutOrder = 3,
					},
					Dash.map(isolatedEntries, function(entry, index)
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
			else nil,
	})
end

return {
	story = FlagsStory,
	summary = "Toggling a flag here should update its state for other stories",
}
