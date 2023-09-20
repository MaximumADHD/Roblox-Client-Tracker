return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should create and destroy without errors", function()
		local PurchasePromptPolicy = require(script.Parent.PurchasePromptPolicy)
		local testPolicyValue = "TestPolicy"
		local testPolicyMapper = function(policy)
			return {
				UnitTestPolicy = function()
					return testPolicyValue
				end
			}
		end

		local RoactTestComponent = Roact.PureComponent:extend("RoactTestComponent")

		function RoactTestComponent:render()
		end

		function RoactTestComponent:didMount()
			self.props.callback(self.props.testValue)
		end

		RoactTestComponent = PurchasePromptPolicy.connect(function(appPolicy, props)
			return {
				testValue = appPolicy.UnitTestPolicy(),
			}
		end)(RoactTestComponent)

		local testValue
		local function testCallback(actualTestValue)
			testValue = actualTestValue
		end

		local element = Roact.createElement(PurchasePromptPolicy.Provider, {
			policy = { testPolicyMapper },
		}, {
			SomeComponent = Roact.createElement(RoactTestComponent, {
				callback = testCallback,
			}),
		})

		local instance = Roact.mount(element)
		expect(testValue).toBe(testPolicyValue)
		Roact.unmount(instance)
	end)
end
