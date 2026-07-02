local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)

local Dash = require(Main.Packages.Dash)
local collectArray = Dash.collectArray
local copy = Dash.copy

local function search(children: { Types.StoryItem }, filter: string): { Types.StoryItem }
	return collectArray(children, function(_index: number, child)
		local nextChild = copy(child)
		local filteredChildren = search(nextChild.Children, filter)
		local ok, include = pcall(function()
			-- If the folder or story matches,
			-- we want to preserve all it's children to support search by a folder name
			if nextChild.Name:lower():match(filter) then
				return nextChild
			elseif #filteredChildren > 0 then
				nextChild.Children = filteredChildren
				return nextChild
			else
				return nil
			end
		end)
		if ok and include then
			return nextChild
		else
			return nil
		end
	end)
end

-- Copy the input tree of children, returning a filtered tree of items whose names match the filter
-- string passed in, or items which have descendendants that do.
local function applySearch(children: { Types.StoryItem }, filter: string): { Types.StoryItem }
	if filter == "" then
		return children
	end
	filter = filter:lower()

	return search(children, filter)
end

local function findFirst(children: { Types.StoryItem }, filter: (Types.StoryItem) -> boolean): Types.StoryItem?
	local found
	for _index, item in children do
		if filter(item) then
			return item
		end

		if #item.Children ~= 0 then
			found = findFirst(item.Children, filter)
			if found then
				return found
			end
		end
	end

	return nil
end

return {
	findFirst = findFirst,
	applySearch = applySearch,
}
