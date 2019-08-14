--[[
	Fired when we fetch the list of drafts for the first time when the plugin runs. We dispatch
	a separate batch add instead of dispatching DraftAddedAction in a loop so we don't constantly
	trigger re-renders every iteration
]]
local Action = require(script.Parent.Action)

-- drafts : (table) a list of LuaSourceContainer instances for drafts in the sandbox
return Action(script.Name, function(drafts)
	local draftsType = typeof(drafts)
	assert(draftsType == "table", "Expected draft to be table. Got '"..draftsType.."'")

	for i,draft in ipairs(drafts) do
		local draftType = typeof(draft)
		assert(draftType == "Instance" and draft:IsA("LuaSourceContainer"), "Expected drafts["..i..
			"] to be a LuaSourceContainer. Got '"..(draftType == "Instance" and draft.ClassName or draftType).."'")
	end

	return {
		Drafts = drafts
	}
end)