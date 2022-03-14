local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)
local Dictionary = require(ProjectRoot.llama).Dictionary
local List = require(ProjectRoot.llama).List

return Rodux.createReducer({}, {
	SendChatMessage = function(state: table, action: table): table
		local entry = state[action.TextChannel.Name]
		if entry then
			-- check if message with messageId is already in the entry
			if not List.find(entry, action.MessageId) then
				entry = List.append(entry, action.MessageId)
			end
		else
			entry = { action.MessageId }
		end

		-- this is for the "all" window that shows all of received messages regardless of channelId
		local anotherEntry = state["RBXAll"]
		if anotherEntry then
			if not List.find(anotherEntry, action.MessageId) then
				anotherEntry = List.append(anotherEntry, action.MessageId)
			end
		else
			anotherEntry = { action.MessageId }
		end

		return Dictionary.join(state, {
			[action.TextChannel.Name] = entry,
			["RBXAll"] = anotherEntry,
		})
	end,
})
