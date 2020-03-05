local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	assetsTable = { assets = {}, },
	bulkImporterRunning = false,
	searchTerm = "",
	universeName = "",
}, {
	SetAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetsTable = Cryo.Dictionary.join(state.assetsTable, action.assetsTable)
		})
	end,

    SetBulkImporterRunning = function(state, action)
        return Cryo.Dictionary.join(state, {
			bulkImporterRunning = action.bulkImporterRunning,
		})
	end,

    SetSearchTerm = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchTerm = action.searchTerm
		})
	end,

	SetUniverseName = function(state, action)
		return Cryo.Dictionary.join(state, {
			universeName = action.universeName
		})
	end,
})