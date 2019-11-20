local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	countryRegionTable = {},
	countryRegionList = {},
}, {
	LoadCountryRegion = function(state, action)
		local data = action.data
		local resTable = {}
		local resList = {}

		for _, countryRegionInfo in pairs(data) do
			local code = countryRegionInfo.code
			local name = countryRegionInfo.displayName
			local displayText = string.format("%s(%s)", name, code)

			resTable[code] = {
				code = code,
				name = name,
				displayText = displayText,
			}

			table.insert(resList, {
				code = code,
				name = name,
				displayText = displayText,
			})
		end

		return Cryo.Dictionary.join(state, {
			countryRegionTable = resTable,
			countryRegionList = resList,
		})
	end
})