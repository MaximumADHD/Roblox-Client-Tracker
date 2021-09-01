local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

local PolicySection = require(Plugin.Src.Components.PolicySection)

return function()
	local store = {
		Policies = {
			allPolicies = {
				BoolItem1 = false,
				BoolItem2 = false,
				ListItem1 = {
					"hello",
					"world",
				},
				ListItem2 = {
					"aloha",
				}
			},
			allPolicySortedKeys = {
				"BoolItem1",
				"BoolItem2",
				"ListItem1",
				"ListItem2",
			},
			policySettingStatus = {
				BoolItem1 = true,
				BoolItem2 = false,
				ListItem1 = {
					"world",
				},
				ListItem2 = {
				}
			}
		}
	}
	
	local function runTests(customPolicyFastFlagEnabled: boolean)
		withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges", customPolicyFastFlagEnabled, function()
			it("should create and destroy without errors with mock data with custom policy fast flag set to ".. tostring(customPolicyFastFlagEnabled), function()
				local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
					storeState = store
				}, {
					PolicySection = Roact.createElement(PolicySection)
				})

				local instance = Roact.mount(mockServiceWrapper)
				Roact.unmount(instance)
			end)

			it("should create and destroy without errors with custom policy fast flag set to " .. tostring(customPolicyFastFlagEnabled), function()
				local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
					PolicySection = Roact.createElement(PolicySection)
				})

				local instance = Roact.mount(mockServiceWrapper)
				Roact.unmount(instance)
			end)
		end)
	end
	
	runTests(true)
	runTests(false)
end
