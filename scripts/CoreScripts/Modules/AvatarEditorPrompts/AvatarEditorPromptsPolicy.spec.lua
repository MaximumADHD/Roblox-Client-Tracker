return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)

	it("should create and destroy without errors", function()
		local AvatarEditorPromptsPolicy = require(script.Parent.AvatarEditorPromptsPolicy)
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
		RoactTestComponent = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
			return {
				testValue = appPolicy.UnitTestPolicy(),
			}
		end)(RoactTestComponent)

		local testValue
		local function testCallback(actualTestValue)
			testValue = actualTestValue
		end

		local element = Roact.createElement(AvatarEditorPromptsPolicy.Provider, {
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
