local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

local getTextChatServiceTextChatCommandAutocompleteVisible =
	require(ExperienceChat.Flags.getTextChatServiceTextChatCommandAutocompleteVisible)

local function getCommandKeys()
	local commands = {}
	local children = TextChatService:GetDescendants()
	for _, child in ipairs(children) do
		if getTextChatServiceTextChatCommandAutocompleteVisible() then
			-- only add command if starts with "/" and AutocompleteVisible is True
			if
				child.ClassName == "TextChatCommand"
				and child.AutocompleteVisible
				and string.sub(child.PrimaryAlias, 1, 1) == "/"
			then
				table.insert(commands, child.PrimaryAlias)
			end
		else
			-- only add command if starts with "/"
			if child.ClassName == "TextChatCommand" and string.sub(child.PrimaryAlias, 1, 1) == "/" then
				table.insert(commands, child.PrimaryAlias)
			end
		end
	end
	return commands
end

return function(autocompleteText)
	local commandKeys = getCommandKeys()
	List.map(commandKeys, function(command)
		autocompleteText.trie:insert(command)
	end)

	return autocompleteText.trie
end
