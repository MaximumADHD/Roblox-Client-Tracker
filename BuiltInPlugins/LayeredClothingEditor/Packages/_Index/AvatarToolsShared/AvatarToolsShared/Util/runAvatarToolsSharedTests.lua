local AvatarToolsShared = script.Parent.Parent
local Packages = AvatarToolsShared.Parent
local Dash = require(Packages.Dash)
local filter = Dash.filter

local function runTests(TestEZ, ...)
	local TestBootstrap = TestEZ.TestBootstrap
	-- Do not run the tests of the packages
	local children = filter(AvatarToolsShared:GetChildren(), function(child)
		return child.Name ~= "packages"
	end)
	return TestBootstrap:run(children, ...)
end

return runTests