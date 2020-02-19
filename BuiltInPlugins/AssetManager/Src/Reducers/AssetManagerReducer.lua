local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	bulkImporterRunning = false,
	searchTerm = "",
}, {
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
})