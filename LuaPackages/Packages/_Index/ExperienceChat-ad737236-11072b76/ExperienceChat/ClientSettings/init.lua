local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)

return Roact.createContext({
	preferredTransparency = 1,
})
