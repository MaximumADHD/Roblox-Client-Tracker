local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(assetsTable)
	assert(type(assetsTable) == "table", string.format("SetAssets requires a table, not %s", type(assetsTable)))

	local assets = assetsTable.assets
	local nextPageCursor = assetsTable.nextPageCursor
	local previousPageCursor = assetsTable.previousPageCursor
	local pageNumber = assetsTable.pageNumber

    assert(type(assets) == "table",
		string.format("SetAssets requires a places table, not %s", type(assets)))
	if nextPageCursor then
		assert(type(nextPageCursor) == "string",
			string.format("SetAssets requires a string, not %s", type(nextPageCursor)))
	end
	if previousPageCursor then
		assert(type(previousPageCursor) == "string",
			string.format("SetAssets requires a string, not %s", type(previousPageCursor)))
	end
	if pageNumber then
		assert(type(pageNumber) == "number",
			string.format("SetAssets requires a number, not %s", type(pageNumber)))
	end

	return {
		assetsTable = {
			assets = assets,
			nextPageCursor = nextPageCursor or Cryo.None,
			previousPageCursor = previousPageCursor or Cryo.None,
			pageNumber = pageNumber or Cryo.None,
		}
	}
end)