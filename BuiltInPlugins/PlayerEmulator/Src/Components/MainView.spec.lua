local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

local MainView = require(Plugin.Src.Components.MainView)

return function()
	local function runTests(customPolicyFastFlagEnabled: boolean)
		it("should create and destroy without errors with custom policy fast flag set to ".. tostring(customPolicyFastFlagEnabled), function()
			withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges2", customPolicyFastFlagEnabled, function()
				local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
					MainView = Roact.createElement(MainView)
				})

				local instance = Roact.mount(mockServiceWrapper)
				Roact.unmount(instance)
			end)
		end)
	end
	
	runTests(true)
	runTests(false)
end
