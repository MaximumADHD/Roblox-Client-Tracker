-- ROBLOX deviation: added to handle file paths in snapshot/State
local function getParent(path: string, level_: number?): string
	local level = if level_ then level_ else 0

	local isUnixPath = string.sub(path, 1, 1) == "/"
	local t = {}

	for p in string.gmatch(path, "[^\\/][^\\/]*") do
		table.insert(t, p)
	end
	if level > 0 then
		t = { table.unpack(t, 1, #t - level) }
	end

	if isUnixPath then
		return "/" .. table.concat(t, "/")
	end

	return table.concat(t, "\\")
end

return getParent
