local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

local CustomPolicySwitchSection = require(Plugin.Src.Components.CustomPolicySwitchSection)

return function()
	withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges", true, function()
		it("should create and destroy without errors", function()
			local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
				CustomPolicySwitchSection = Roact.createElement(CustomPolicySwitchSection)
			})

			local instance = Roact.mount(mockServiceWrapper)
			Roact.unmount(instance)
		end)

		local function runTestWithCustomPolicySwitchSet(customPolicySwitchEnabled)
			it("should create and destroy without errors with custom policy switch enabled set to " .. tostring(customPolicySwitchEnabled), function()
				local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
					storeState = { customPolicySwitchEnabled = customPolicySwitchEnabled},
				}, {
					CustomPolicySwitchSection = Roact.createElement(CustomPolicySwitchSection)
				})

				local instance = Roact.mount(mockServiceWrapper)
				Roact.unmount(instance)
			end)
		end
		
		runTestWithCustomPolicySwitchSet(true)
		runTestWithCustomPolicySwitchSet(false)
	end)
end
