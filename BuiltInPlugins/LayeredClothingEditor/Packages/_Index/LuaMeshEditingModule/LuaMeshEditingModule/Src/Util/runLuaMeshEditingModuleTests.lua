local LuaMeshEditingModule = script.Parent.Parent.Parent
local Packages = LuaMeshEditingModule.Packages
local Dash = require(Packages.Dash)
local filter = Dash.filter

local function runTests(TestEZ, ...)
	local TestBootstrap = TestEZ.TestBootstrap
	local children = filter(LuaMeshEditingModule:GetChildren(), function(child)
		return child.Name ~= "packages"
	end)
	return TestBootstrap:run(children, ...)
end

return runTests
