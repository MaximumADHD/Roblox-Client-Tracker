local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)

local Roact = dependencies.Roact

--[[
	Runs a test callback while the given element is mounted.

	The test callback will be passed the parent Frame that
	the passed in element is mounted on.

	@param element - The Roact element to mount
	@param callback - The callback to invoke with the element mounted.
			It will be passed the mounted element's parent Frame as a parameter.
]]
local function runWhileMounted(element, callback: (any) -> ())
	local parentFrame = Instance.new("ScreenGui")
	parentFrame.Parent = game:GetService("CoreGui")
	local roactTree = Roact.mount(element, parentFrame)
	callback(parentFrame)
	Roact.unmount(roactTree)
end

return runWhileMounted
