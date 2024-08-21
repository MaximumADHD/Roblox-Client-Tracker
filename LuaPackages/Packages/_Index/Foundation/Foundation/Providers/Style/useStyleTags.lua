local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local TagsContext = require(Style.TagsContext)
local React = require(Packages.React)

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

local function useStyleTags(tags: Tags?)
	local addTags = React.useContext(TagsContext)
	React.useEffect(function()
		local formattedTags = getFormattedTags(tags)
		if formattedTags ~= nil then
			addTags(formattedTags)
		end
	end, { tags })
	return getFormattedTags(tags)
end

return useStyleTags
