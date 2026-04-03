local FoundationRoot = script:FindFirstAncestor("Foundation")
local Foundation = require(FoundationRoot)
local Components = FoundationRoot.Components:GetChildren()
local Providers = FoundationRoot.Providers:GetChildren()
local Utilities = FoundationRoot.Utility:GetChildren()

local function GetStories(public: boolean)
	local storyRoots = {}
	for _, component in Components do
		local ok, _ = pcall(function()
			return Foundation[component.Name]
		end)

		if ok == public then
			table.insert(storyRoots, component)
		end
	end
	for _, component in Providers do
		local ok, _ = pcall(function()
			return Foundation[component.Name .. "Provider"]
		end)

		if ok == public then
			table.insert(storyRoots, component)
		end
	end
	for _, component in Utilities do
		local ok, _ = pcall(function()
			return Foundation.Utility[component.Name]
		end)

		if public and ok == public then
			table.insert(storyRoots, component)
		end
	end
	return storyRoots
end

return GetStories
