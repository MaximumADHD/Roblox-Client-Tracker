return function()
	local MemStorageService = game:GetService("MemStorageService")

	local Root = script.Parent
	local Packages = Root.Parent

	local PolicyProvider = require(Packages.PolicyProvider)
	local Logger = require(Packages.Loggers).Logger

	local Roact = require(Packages.Dev.Roact)
	local Rodux = require(Packages.Dev.Rodux)
	local RoactRodux = require(Packages.Dev.RoactRodux)

	local RoactAppPolicy = require(script.Parent.RoactAppPolicy)

	local function withPolicy(policyJson, callback)
		local userId = -1
		if game.Players.LocalPlayer then
			userId = game.Players.LocalPlayer.UserId
		end
		local storeKey = "GUAC:" .. userId .. ":app-policy"
		local oldPolicy = MemStorageService:GetItem(storeKey)
		MemStorageService:SetItem(storeKey, policyJson)
		local success, result = pcall(callback, function(newPolicy)
			MemStorageService:SetItem(storeKey, newPolicy)
		end)
		MemStorageService:SetItem(storeKey, oldPolicy)
		assert(success, result)
	end

	local testStore = Rodux.Store.new(function(state, action)
		return {
			feature = action.value or false,
		}
	end)

	local TestComponent = Roact.Component:extend("TestComponent")
	function TestComponent:render()
		if self.props.onRender then
			self.props.onRender(self.props)
		end
	end

	local featureKey = "TestFeature"

	local testPolicy = function(policy)
		return {
			["get" .. featureKey] = function()
				return policy[featureKey]
			end,
		}
	end

	local TestConnection = RoactAppPolicy.connect(function(appPolicy, props)
		if props.onConnect then
			props.onConnect(appPolicy)
		end
		return {
			testFeature = appPolicy["get" .. featureKey](),
		}
	end)

	local function TestProvider(props)
		return Roact.createElement(RoactAppPolicy.Provider, {
			policy = { testPolicy },
		}, {
			Content = Roact.oneChild(props[Roact.Children]),
		})
	end

	describe("Roact app policy connector", function()
		it("should extract the policy from context", function()
			local expectedValue = "expected test value"
			local actualValue = nil

			local element = Roact.createElement(TestProvider, {}, {
				Content = Roact.createElement(TestConnection(TestComponent), {
					onConnect = function(appPolicy)
						actualValue = appPolicy["get" .. featureKey]()
					end,
				}),
			})

			withPolicy('{"' .. featureKey .. '":"' .. expectedValue .. '"}', function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end)

			expect(actualValue).to.equal(expectedValue)
		end)

		it("should provide policy information to the component", function()
			local expectedValue = "expected test value 2"
			local actualValue = nil

			local element = Roact.createElement(TestProvider, {}, {
				Content = Roact.createElement(TestConnection(TestComponent), {
					onRender = function(props)
						actualValue = props.testFeature
					end,
				}),
			})

			withPolicy('{"' .. featureKey .. '":"' .. expectedValue .. '"}', function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end)

			expect(actualValue).to.equal(expectedValue)
		end)

		it("should fail if not under a PolicyProvider", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = testStore,
			}, {
				Content = Roact.createElement(TestConnection(TestComponent), {}),
			})

			expect(function()
				Roact.mount(element)
			end).to.throw()
		end)

		it("should not fail if applied multiple times", function()
			local expectedValue = "expected test value 3"
			local actualValue = nil

			local element = Roact.createElement(TestProvider, {}, {
				Content = Roact.createElement(TestConnection(TestConnection(TestComponent)), {
					onRender = function(props)
						actualValue = props.testFeature
					end,
				}),
			})

			withPolicy('{"' .. featureKey .. '":"' .. expectedValue .. '"}', function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end)

			expect(actualValue).to.equal(expectedValue)
		end)
	end)

	describe("Roact app policy connected components", function()
		it("should update the component on policy changes", function()
			-- TODO(CLILUACORE-698): This test is broken because it runs in paralell with other tests and will receive updates to
			-- MemStorageService from other sources. A possible solution is Mocking MemStorageService for these tests.
			local SKIP_TEST = true
			if SKIP_TEST then
				SKIP()
				return
			end

			local expectedValues = { "one", "two" }
			local actualValues = {}

			local element = Roact.createElement(TestProvider, {}, {
				Content = Roact.createElement(TestConnection(TestComponent), {
					onRender = function(props)
						table.insert(actualValues, props.testFeature)
					end,
				}),
			})

			withPolicy('{"' .. featureKey .. '":"' .. expectedValues[1] .. '"}', function(setPolicy)
				local instance = Roact.mount(element)
				setPolicy('{"' .. featureKey .. '":"' .. expectedValues[2] .. '"}')
				wait()
				Roact.unmount(instance)
			end)

			expect(#actualValues).to.equal(#expectedValues)
			expect(actualValues[1]).to.equal(expectedValues[1])
			expect(actualValues[2]).to.equal(expectedValues[2])
		end)
	end)

	it("SHOULD set Logger to LuaAppLogger", function()
		expect(PolicyProvider.Logger.parent).to.equal(Logger)
	end)
end
