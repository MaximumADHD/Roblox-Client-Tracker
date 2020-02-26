local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	bulkImporterRunning = false,
	assetsTable = { assets = {}, },
	searchTerm = "",
}, {
    SetBulkImporterRunning = function(state, action)
        return Cryo.Dictionary.join(state, {
			bulkImporterRunning = action.bulkImporterRunning,
		})
	end,

	SetAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetsTable = Cryo.Dictionary.join(state.assetsTable, action.assetsTable)
		})
	end,

    SetSearchTerm = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchTerm = action.searchTerm
		})
	end,
})