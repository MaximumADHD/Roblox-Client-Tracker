local root = script.Parent

local getAll = require(root.getAll)

local function getUnique(...: string): Instance
	local tagged = getAll(...)
	local total = #tagged

	if total == 1 then
		return tagged[1]
	end

	if total == 0 then
		error(
			("unable to find instance tagged with %s"):format(table.concat({ ... }, ", "))
		)
	end

	error(
		("expected to find only one instance tagged with %s, but found %d"):format(
			table.concat({ ... }, ", "),
			#tagged
		)
	)
end

return getUnique
