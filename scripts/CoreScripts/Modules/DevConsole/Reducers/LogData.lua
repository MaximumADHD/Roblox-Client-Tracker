local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local Immutable = require(script.Parent.Parent.Immutable)

return function(state, action)
	return Rodux.createReducer({
		clientSearchTerm = "",
		clientTypeFilters = {},

		serverSearchTerm = "",
		serverTypeFilters = {},
	}, {
		ClientLogAppendMessage = function(logData, action)
			return Immutable.JoinDictionaries(
				logData,
				{ clientData = Immutable.Append(logData.clientData, action.newMessage) }
			)
		end,
		ServerLogAppendMessage = function(logData, action)
			return Immutable.JoinDictionaries(
				logData,
				{ serverData = Immutable.Append(logData.serverData, action.newMessage) }
			)
		end,
		ClientLogAppendFilteredMessage = function(logData, action)
			local update = {
				clientData = Immutable.Append(logData.clientData, action.newMessage),
				clientDataFiltered = Immutable.Append(logData.clientDataFiltered, action.newMessage),
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
		ServerLogAppendFilteredMessage = function(logData, action)
			local update = {
				serverData = Immutable.Append(logData.serverData, action.newMessage),
				serverDataFiltered = Immutable.Append(logData.serverDataFiltered, action.newMessage),
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
		ClientLogSetData = function(logData, action)
			local update = {
				clientData = action.newData,
				clientDataFiltered = action.newDataFiltered,
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
		ServerLogSetData = function(logData, action)
			local update = {
				serverData = action.newData,
				serverDataFiltered = action.newDataFiltered,
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
		ClientLogUpdateSearchFilter = function(logData, action)
			local update = {
				clientSearchTerm = action.searchTerm,
				clientTypeFilters = Immutable.JoinDictionaries(logData.clientTypeFilters, action.filterTypes),
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
		ServerLogUpdateSearchFilter = function(logData, action)
			local update = {
				serverSearchTerm = action.searchTerm,
				serverTypeFilters = Immutable.JoinDictionaries(logData.serverTypeFilters, action.filterTypes),
			}
			return Immutable.JoinDictionaries(logData, update)
		end,
	})(state, action)
end
