return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local PolicyProvider = require(script.Parent)

	it("SHOULD work", function()
		local presentationPolicy = function(externalPolicy)
			return {
				isFeatureEnabled = externalPolicy.isFeatureEnabled or false,
			}
		end

		local externalPolicy = {
			isFeatureEnabled = true,
		}
		local getPolicyImpl = PolicyProvider.GetPolicyImplementations.Static(externalPolicy)
		local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(getPolicyImpl)

		local function MyComponent(props)
			-- Values from PolicyProvider can be accessed just like regular props
			local isFeatureEnabled = props.isFeatureEnabled

			return Roact.createElement("ScreenGui", nil, {
				Label = Roact.createElement("TextLabel", {
					-- ...and used in your components!
					Text = "isFeatureEnabled: " .. tostring(isFeatureEnabled),
					Size = UDim2.new(1, 0, 1, 0),
				})
			})
		end

		-- `mapPolicyToProps` should return a table containing props that will be passed to
		-- your component!

		-- `connect` returns a function, so we call that function, passing in our
		-- component, getting back a new component!
		MyComponent = UniversalAppPolicyProvider.connect(
			function(incomingPresentationPolicy, props)
				-- mapPolicyToProps is run every time the policy's state updates.
				-- It's also run whenever the component receives new props.
				return {
					isFeatureEnabled = incomingPresentationPolicy.isFeatureEnabled,
				}
			end
		)(MyComponent)

		local app = Roact.createElement(UniversalAppPolicyProvider.Provider, {
			-- policy can be a list of PresentationalPolicies
			policy = { presentationPolicy },
		}, {
			Main = Roact.createElement(MyComponent),
		})

		local folder = Instance.new("Folder")
		Roact.mount(app, folder)

		-- if the label has the following string, we know
		-- everything is working!
		local Label = folder:FindFirstChild("Label", true)
		expect(Label).to.be.ok()
		expect(Label.Text).to.equal("isFeatureEnabled: true")
	end)
end
