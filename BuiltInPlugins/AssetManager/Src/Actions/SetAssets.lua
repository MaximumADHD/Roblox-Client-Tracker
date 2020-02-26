local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(assetsTable)
	assert(type(assetsTable) == "table", string.format("SetPlaceAssets requires a table, not %s", type(assetsTable)))

	local assets = assetsTable.assets
	local nextPageCursor = assetsTable.nextPageCursor
	local previousPageCursor = assetsTable.previousPageCursor

    assert(type(assets) == "table",
		string.format("SetPlaceAssets requires a places table, not %s", type(assets)))
	if nextPageCursor then
		assert(type(nextPageCursor) == "string",
			string.format("SetPlaceAssets requires a string, not %s", type(nextPageCursor)))
	end
	if previousPageCursor then
		assert(type(previousPageCursor) == "string",
			string.format("SetPlaceAssets requires a string, not %s", type(previousPageCursor)))
	end

	return {
		assetsTable = {
			assets = assets,
			nextPageCursor = nextPageCursor or Cryo.None,
			previousPageCursor = previousPageCursor or Cryo.None,
		}
	}
end)