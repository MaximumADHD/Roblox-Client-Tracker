return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	it("should create and destroy without errors", function()
		local InGameMenuPolicy = require(script.Parent.InGameMenuPolicy)
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
		RoactTestComponent = InGameMenuPolicy.connect(function(appPolicy, props)
			return {
				testValue = appPolicy.UnitTestPolicy(),
			}
		end)(RoactTestComponent)

		local testValue
		local function testCallback(actualTestValue)
			testValue = actualTestValue
		end

		local element = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { testPolicyMapper },
		}, {
			SomeComponent = Roact.createElement(RoactTestComponent, {
				callback = testCallback,
			}),
		})

		local instance = Roact.mount(element)
		expect(testValue).to.equal(testPolicyValue)
		Roact.unmount(instance)
	end)
end
