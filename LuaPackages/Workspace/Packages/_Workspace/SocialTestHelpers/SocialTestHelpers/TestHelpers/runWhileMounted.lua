local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)

local Roact = dependencies.Roact
local dumpInstanceTree = require(script.Parent.dumpInstanceTree)

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
	local ok, result = (pcall :: any)(callback, parentFrame)

	local errorMessage
	if not ok then
		errorMessage = string.format("%s\n\nInstance Tree:\n\n%s", tostring(result), dumpInstanceTree(parentFrame))
	end

	Roact.unmount(roactTree)

	if not ok then
		error(errorMessage)
	end
end

return runWhileMounted
