local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
local getFormattedTags = require(Foundation.Utility.getFormattedTags)

local getLayoutTags = require(script.Parent.getLayoutTags)

local LAYOUT_TAGS = getLayoutTags()

local function separateLayoutTags(tags: Types.Tags?): (string?, string?)
	local formattedTags = tags and getFormattedTags(tags)
	if not formattedTags then
		return nil, nil
	end

	local layoutTags, nonLayoutTags = {}, {}

	for _, tag in string.split(formattedTags, " ") do
		table.insert(if LAYOUT_TAGS[tag] then layoutTags else nonLayoutTags, tag)
	end

	return table.concat(layoutTags, " "), table.concat(nonLayoutTags, " ")
end

return separateLayoutTags
