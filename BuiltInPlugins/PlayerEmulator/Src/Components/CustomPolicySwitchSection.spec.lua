local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

local CustomPolicySwitchSection = require(Plugin.Src.Components.CustomPolicySwitchSection)

return function()
	withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges2", true, function()
		it("should create and destroy without errors", function()
			local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
				CustomPolicySwitchSection = Roact.createElement(CustomPolicySwitchSection)
			})

			local instance = Roact.mount(mockServiceWrapper)
			Roact.unmount(instance)
		end)

		local function runTestWithCustomPolicySwitchEnabledAndCustomPolicySwitchActiveSet(customPolicySwitchEnabled, customPolicySwitchActive)
			it("should create and destroy without errors with custom policy switch enabled set to "
				.. tostring(customPolicySwitchEnabled) ..
				"and custom policy active set to " .. tostring(customPolicySwitchActive), function()
				local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
					storeState = { customPolicySwitchEnabled = customPolicySwitchEnabled, customPolicySwitchActive = customPolicySwitchActive},
				}, {
					CustomPolicySwitchSection = Roact.createElement(CustomPolicySwitchSection)
				})

				local instance = Roact.mount(mockServiceWrapper)
				Roact.unmount(instance)
			end)
		end
		
		for _, switchEnabled in ipairs({true, false}) do
			for _, switchActive in ipairs({true, false}) do
				runTestWithCustomPolicySwitchEnabledAndCustomPolicySwitchActiveSet(switchEnabled, switchActive)
			end
		end
	end)
end
