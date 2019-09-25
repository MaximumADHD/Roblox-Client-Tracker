local function itemExistsInList(item, list)
	for i = 1, #list do
		if list[i] == item then
			return true
		end
	end
	return false
end

local function filterOutItems(items, list)
	if not items then return list end
	
	local ret = {}
	for i = 1, #list do
		if not itemExistsInList(list[i], items) then
			table.insert(ret, list[i])
		end
	end
	
	return ret
end

local function listContainsAnyItems(items, list)
	local map = {}
	for i = 1, #list do
		map[list[i]] = true
	end
	
	for i = 1, #items do
		if map[items[i]] then return true end
	end
	return false
end

local function itemsHasItemNotInList(items, list)
	if not list and items then return true end
	if not list and not items then return false end
	
	local map = {}
	for i = 1, #list do
		map[list[i]] = true
	end
	
	for i = 1, #items do
		if not map[items[i]] then return true end
	end
	return false
end

local function combineLists(t1, t2)
	for i, v in ipairs(t2) do
		table.insert(t1, v)
	end
	return t1
end

local function createIgnoreListGivenWhiteList(root, whiteList)
	local children = root:GetChildren()
	local ignoreList = {}
	for i, v in ipairs(children) do
		if v:IsA("PartInstance") and not itemExistsInList(v, whiteList) then table.insert(ignoreList, v) end
		if v:IsA("PVInstance") and not v:IsA("Workspace") then
			ignoreList = combineLists(ignoreList, createIgnoreListGivenWhiteList(v, whiteList))
		end
	end
	return ignoreList
end

local function removeDuplicates(t)
	local final = {}
	local set = {}
	
	for i = 1, #t do
		if not set[t[i]] then
			set[t[i]] = true
			table.insert(final, t[i])
		end
	end
	return final
end

local function listDoesNotContainType(list, type)
	for i = 1, #list do
		if list[i]:IsA(type) then
			return false
		end
	end
	return true
end

--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------

local module = {}

module.itemExistsInList = itemExistsInList
module.filterOutItems = filterOutItems
module.combineLists = combineLists
module.createIgnoreListGivenWhiteList = createIgnoreListGivenWhiteList
module.removeDuplicates = removeDuplicates
module.listDoesNotContainType = listDoesNotContainType
module.listContainsAnyItems = listContainsAnyItems
module.itemsHasItemNotInList = itemsHasItemNotInList

return module
