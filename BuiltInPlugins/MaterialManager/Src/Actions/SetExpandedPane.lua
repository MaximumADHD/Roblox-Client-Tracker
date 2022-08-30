local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	ExpandedPaneState: boolean,
	PaneName: string,
}

return Action(script.Name, function(paneName: string, expandedPaneState: boolean): Payload
	assert(type(paneName) == "string", ("Expected paneName to be a string, received %s"):format(type(paneName)))
	assert(type(expandedPaneState) == "boolean", ("Expected expandedPaneState to be a boolean, received %s"):format(type(expandedPaneState)))
	return {
		PaneName = paneName,
		ExpandedPaneState = expandedPaneState,
	}
end)
