--[[
	Fired when a draft is checked out
]]
local Action = require(script.Parent.Action)

-- draft : (Instance) the script instance for a draft
return Action(script.Name, function(draft)
	local draftType = typeof(draft)
	assert(draftType == "Instance", "Expected draft to be Instance. Got '"..draftType.."'")
	assert(draft:IsA("LuaSourceContainer"), "Expected draft to be a LuaSourceContainer. Got '"..draft.ClassName.."'")

	return {
		Draft = draft
	}
end)