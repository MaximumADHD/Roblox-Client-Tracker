local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

local function getNumberOfParticipants(textChannel: TextChannel): number
	return List.count(textChannel:GetChildren(), function(instance: Instance)
		return instance:IsA("TextSource")
	end)
end

return getNumberOfParticipants
