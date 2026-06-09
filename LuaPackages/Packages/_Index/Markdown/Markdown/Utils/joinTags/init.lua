local Packages = script:FindFirstAncestor("Markdown").Parent
local Dash = require(Packages.Dash)
local forEachArgs = Dash.forEachArgs
local concat = table.concat

--[[
	Create a new tag string by combining the input arguments
	Inputs can be nil or other tag strings
	A tag string is a set of tags separated by spaces e.g "Component-Pane X-Pad Focused"
]]
local function joinTags(...: (string | { [string]: boolean })?): string
	local tags = {}
	forEachArgs(function(arg: (string | { [string]: boolean })?)
		if typeof(arg) == "string" then
			table.insert(tags, arg)
		elseif typeof(arg) == "table" then
			for tag, value in arg do
				if value then
					table.insert(tags, tag)
				end
			end
		end
	end, ...)
	-- Deduplication is done on the engine level so we can save some processor time
	return concat(tags, " ")
end

return joinTags
