local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local SetAutocompleteResults = require(Actions.SetAutocompleteResults)

return function(networkInterface, categoryName, searchTerm, numberOfItems)
	return function(store)
		if searchTerm == "" then
			store:dispatch(SetAutocompleteResults({}))
		else
			local getRequest = networkInterface:getAutocompleteResults(
				categoryName, searchTerm, numberOfItems
			)

			return getRequest:andThen(
				function(result)
					local data = result.responseBody
					if data and data.Data and searchTerm == data.Args.Prefix then
						local parsedData = {}
						for key,value in pairs(data.Data) do
							table.insert(parsedData, data["Data"][key]["Query"])
						end
						store:dispatch(SetAutocompleteResults(parsedData))
					end
				end,
				function(err)
					if DebugFlags.shouldDebugWarnings() then
						warn("Toolbox: Could not fetch autocomplete results")
					end
					store:dispatch(NetworkError(err))
				end
			)
		end
	end
end
