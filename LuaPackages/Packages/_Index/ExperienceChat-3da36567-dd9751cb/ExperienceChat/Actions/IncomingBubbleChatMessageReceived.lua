local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type bubbleChatMessageTable = {
	partOrModel: Instance,
	bubbleChatMessageUserId: string,
	bubbleChatMessageId: string,
	message: string,
	timestamp: DateTime,
	bubbleChatMessageProperties: BubbleChatMessageProperties?,
}

export type Action = {
	type: string,
	bubbleChatMessageTable: bubbleChatMessageTable,
}

return Rodux.makeActionCreator(script.Name, function(bubbleChatMessageTable: bubbleChatMessageTable)
	return {
		bubbleChatMessageTable = bubbleChatMessageTable,
	}
end)
