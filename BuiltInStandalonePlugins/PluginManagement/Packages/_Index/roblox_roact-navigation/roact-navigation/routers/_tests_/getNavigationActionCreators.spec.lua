return function()
	local getNavigationActionCreators = require(script.Parent.Parent.getNavigationActionCreators)
	local NavigationActions = require(script.Parent.Parent.Parent.NavigationActions)

	local function expectError(functor, msg)
		local status, err = pcall(functor)
		expect(status).to.equal(false)
		expect(string.find(err, msg)).to.never.equal(nil)
	end

	it("should return a table with correct functions when called", function()
		local result = getNavigationActionCreators()
		expect(type(result.goBack)).to.equal("function")
		expect(type(result.navigate)).to.equal("function")
		expect(type(result.setParams)).to.equal("function")
	end)

	describe("goBack tests", function()
		it("should return a Back action when called", function()
			local result = getNavigationActionCreators().goBack("theKey")
			expect(result.type).to.equal(NavigationActions.Back)
			expect(result.key).to.equal("theKey")
		end)

		it("should throw when route.key is not a string", function()
			expectError(function()
				getNavigationActionCreators({ key = 5 }).goBack()
			end, "%.goBack%(%): key should be a string")
		end)

		it("should fall back to route.key if key is not provided", function()
			local result = getNavigationActionCreators({ key = "routeKey" }).goBack()
			expect(result.key).to.equal("routeKey")
		end)

		it("should override route.key if key is provided", function()
			local result = getNavigationActionCreators({ key = "routeKey" }).goBack("theKey")
			expect(result.key).to.equal("theKey")
		end)
	end)

	describe("navigate tests", function()
		it("should return a Navigate action when called", function()
			local theParams = {}
			local childAction = {}
			local result = getNavigationActionCreators().navigate("theRoute", theParams, childAction)
			expect(result.type).to.equal(NavigationActions.Navigate)
			expect(result.routeName).to.equal("theRoute")
			expect(result.params).to.equal(theParams)
			expect(result.action).to.equal(childAction)
		end)

		it("should return a navigate action with matching properties when called with a table", function()
			local testNavigateTo = {
				routeName = "theRoute",
				params = {},
				action = {},
			}

			local result = getNavigationActionCreators().navigate(testNavigateTo)
			expect(result.type).to.equal(NavigationActions.Navigate)
			expect(result.routeName).to.equal("theRoute")
			expect(result.params).to.equal(testNavigateTo.params)
			expect(result.action).to.equal(testNavigateTo.action)
		end)

		it("should throw when navigateTo is not a valid type", function()
			expectError(function()
				getNavigationActionCreators().navigate(5)
			end, "%.navigate%(%): navigateTo must be a string or table")
		end)

		it("should throw when params is provided with a table navigateTo", function()
			expectError(function()
				getNavigationActionCreators().navigate({}, {})
			end, "%.navigate%(%): params can only be provided with a string navigateTo value")
		end)

		it("should throw when action is provided with a table navigateTo", function()
			expectError(function()
				getNavigationActionCreators().navigate({}, nil, {})
			end, "%.navigate%(%): child action can only be provided with a string navigateTo value")
		end)
	end)

	describe("setParams tests", function()
		it("should return a SetParams action when called", function()
			local theParams = {}
			local result = getNavigationActionCreators({ key = "theKey" }).setParams(theParams)
			expect(result.type).to.equal(NavigationActions.SetParams)
			expect(result.key).to.equal("theKey")
			expect(result.params).to.equal(theParams)
		end)

		it("should throw when called by a root navigator", function()
			expectError(function()
				getNavigationActionCreators({}).setParams({})
			end, "%.setParams%(%): cannot be called by the root navigator")
		end)
	end)
end
