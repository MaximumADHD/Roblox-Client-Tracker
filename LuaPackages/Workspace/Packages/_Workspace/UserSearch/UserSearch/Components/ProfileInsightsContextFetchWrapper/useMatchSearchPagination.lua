local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

type Array = { any }

type Props = {
	users: Array?,
}

local getNewEntries = function(users: Array, lastLength: number)
	local startIndex = lastLength + 1
	return Dash.slice(users, startIndex)
end

local useMatchSearchPagination = function(props: Props): Array
	local users = props.users or {}
	local lastLength, setLastLength = React.useState(0)
	local newEntries, setNewEntries = React.useState(users)

	React.useEffect(function()
		setNewEntries(getNewEntries(users, lastLength))
		setLastLength(#users)
	end, { #users })

	return newEntries
end

return useMatchSearchPagination
