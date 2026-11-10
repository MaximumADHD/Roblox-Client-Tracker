local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
local devAssert = require(Foundation.Utility.devAssert)
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
			if Flags.FoundationDevOnlyPropAsserts then
				devAssert(false, "Invalid argument to useStyleTags. Expected a table or string, got " .. typeof(tags))
			else
				assert(false, "Invalid argument to useStyleTags. Expected a table or string, got " .. typeof(tags))
			end
		end
	end
	return nil
end

return getFormattedTags
