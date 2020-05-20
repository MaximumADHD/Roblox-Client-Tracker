local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Framework.Util.Action)

local SaveState = require(Plugin.Src.Util.SaveState)
local saveStateMin = 0
local saveStateMax = 0

for _,v in pairs(SaveState) do
	saveStateMin = math.min(saveStateMin, v)
	saveStateMax = math.max(saveStateMax, v)
end

return Action(script.Name, function(pageId, saveState)
	assert(typeof(pageId) == "string",
        string.format(script.Name.." requires pageId to be a string, not %s", typeof(pageId)))
	assert(typeof(saveState) == "number" and saveState >= saveStateMin and saveState <= saveStateMax,
        string.format(script.Name.." requires loadState to be a LoadState, not %s", typeof(saveState)))

	return {
		pageId = pageId,
		saveState = saveState,
	}
end)