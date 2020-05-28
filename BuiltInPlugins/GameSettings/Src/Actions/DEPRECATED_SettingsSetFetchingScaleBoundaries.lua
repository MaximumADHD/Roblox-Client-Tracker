-- TODO (awarwick) 5/16/2020 Remove with FFlagGameSettingsNetworkRefactor
local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(isFetching)
	return {
		currentlyFetching = isFetching
	}
end)