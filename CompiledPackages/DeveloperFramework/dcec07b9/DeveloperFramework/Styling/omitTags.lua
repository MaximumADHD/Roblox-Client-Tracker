local Framework = script.Parent.Parent
local Dash = require(Framework.Parent.Dash)
local collectSet = Dash.collectSet
local forEach = Dash.forEach
local forEachArgs = Dash.forEachArgs
local keys = Dash.keys
local split = string.split
local concat = table.concat

--[[
    Omit one or more tags from the first argument
    Input arguments can be nil or other tag strings
	A tag string is a set of tags separated by spaces e.g "Component-Pane X-Pad Focused"
]]
local function omitTags(tags: string?, ...): string?
	if not tags then
		return nil
	end
	local tagSet = collectSet(split(tags, " "))
	forEachArgs(function(tag: string?)
		if tag then
			forEach(split(tag, " "), function(child)
				tagSet[child] = nil
			end)
		end
	end, ...)
	return concat(keys(tagSet), " ")
end

return omitTags
