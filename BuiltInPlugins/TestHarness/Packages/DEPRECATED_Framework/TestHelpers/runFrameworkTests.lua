local Framework = script.Parent.Parent
--[[
	Framework is not a buildable plugin itself, so it cannot specify its
	own dev dependencies because they will not be installed by Rotriever, so
	dependency inject TestEZ here.

	Developer Storybook should be the only plugin that needs to run
	DeveloperFramework tests.
]]
local runFrameworkTests
if game:GetFastFlag("EnableRoactInspector") then
	-- TODO FFlagEnableRoactInspector: Move import to top of file
	local Dash = require(Framework.packages.Dash)
	local filter = Dash.filter

	runFrameworkTests = function(TestEZ, ...)
		local TestBootstrap = TestEZ.TestBootstrap
		-- Do not run the tests of the packages
		local children = filter(Framework:GetChildren(), function(child)
			return child.Name ~= "packages"
		end)
		return TestBootstrap:run(children, ...)
	end

else
	runFrameworkTests = function(TestEZ, ...)
		local TestBootstrap = TestEZ.TestBootstrap
		return TestBootstrap:run({Framework}, ...)
	end
end

return runFrameworkTests