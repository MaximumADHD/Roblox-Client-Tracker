local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

return function(results)
	return List.sort(results)
end
