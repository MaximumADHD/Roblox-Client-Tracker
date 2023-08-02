local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

return function(results)
	-- Since the Trie uses a dict to store its children and Lua does not maintain sorting in dicts, results will be unsorted even if inserted in sorted order
	-- Sorting every time should not be too intensive as list of emotes is a constant number
	return List.sort(results)
end
