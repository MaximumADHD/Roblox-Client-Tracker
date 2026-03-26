local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type Tags = Types.Tags

local function getFormattedTags(tags: Tags?): string?
	if tags ~= nil then
		if typeof(tags) == "table" then
			local tagsList = {}
			for tag, value in tags do
				if value then
					table.insert(tagsList, tag)
				end
			end
			return table.concat(tagsList, " ")
		elseif typeof(tags) == "string" then
			return tags
		else
			assert(false, "Invalid argument to useStyleTags. Expected a table or string, got " .. typeof(tags))
		end
	end
	return nil
end

return getFormattedTags
