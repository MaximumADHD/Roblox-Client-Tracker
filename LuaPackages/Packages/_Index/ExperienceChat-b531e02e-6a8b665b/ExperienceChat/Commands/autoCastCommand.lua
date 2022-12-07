local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Promise = require(Packages.Promise)

local context = require(ExperienceChat.context)

local Commands = script:FindFirstAncestor("Commands")
local CommandTypes = require(Commands.types)

local function matchesAlias(aliasList: { string }, rawText: string): boolean
	for _, alias in pairs(aliasList) do
		if string.find(rawText, "^" .. alias .. " ") then
			return true
		end
	end

	return false
end

return function(command: CommandTypes.Command, userId: number, rawText: string)
	return Promise.try(function()
		assert(context.store, "Store should exist")

		local aliasList = context.store:getState().AutoCastCommands[command.name]
		if matchesAlias(aliasList, rawText) then
			local systemMessageResponse = command.clientRun(context.store, userId, rawText)
			if systemMessageResponse then
				if string.find(systemMessageResponse.metadata, "Success") then
					return Promise.resolve(systemMessageResponse)
				end
			end
		end

		return Promise.reject()
	end)
end
