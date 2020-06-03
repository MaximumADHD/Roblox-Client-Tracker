return function()
	local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
	local getNavigation = require(script.Parent.Parent.getNavigation)

	local function makeTestBundle(testState)
		testState = testState or {
			routes = {
				{ key = "a" }
			},
			index = 1,
		}

		local testActions = {}
		local bundle = {
			testActions = testActions,
			testState = testState,
			testRouter = {
				getActionCreators = function()
					return testActions
				end
			},
			testDispatch = function() end,
			testActionSubscribers = {},
			testGetScreenProps = function() end,
		}

		function bundle.testGetCurrentNavigation()
			return bundle.navigation
		end

		bundle.navigation = getNavigation(
			bundle.testRouter,
			bundle.testState,
			bundle.testDispatch,
			bundle.testActionSubscribers,
			bundle.testGetScreenProps,
			bundle.testGetCurrentNavigation
		)

		return bundle
	end

	it("should build out correct public props", function()
		local bundle = makeTestBundle()

		expect(bundle.navigation.actions).to.equal(bundle.testActions)
		expect(bundle.navigation.router).to.equal(bundle.testRouter)
		expect(bundle.navigation.state).to.equal(bundle.testState)
		expect(bundle.navigation.dispatch).to.equal(bundle.testDispatch)
		expect(bundle.navigation.getScreenProps).to.equal(bundle.testGetScreenProps)
		expect(#bundle.navigation._childrenNavigation).to.equal(0)
	end)

	describe("isFocused tests", function()
		it("should return focused=true for child key matching index", function()
			local bundle = makeTestBundle()
			expect(bundle.navigation.isFocused("a")).to.equal(true)
		end)

		it("should return focused=false for child key not matching index", function()
			local bundle = makeTestBundle({
				routes = {
					{ key = "a" },
					{ key = "b" },
				},
				index = 2,
			})
			expect(bundle.navigation.isFocused("a")).to.equal(false)
		end)

		it("should return focused=true if no child key provided (parent always focused)", function()
			local bundle = makeTestBundle()
			expect(bundle.navigation.isFocused()).to.equal(true)
		end)
	end)

	describe("addListener tests", function()
		it("should short-circuit subscriptions for non-Action events", function()
			local bundle = makeTestBundle()

			local testHandler = function() end
			bundle.navigation.addListener(NavigationEvents.WillFocus, testHandler)
			expect(bundle.testActionSubscribers[testHandler]).to.equal(nil)
		end)

		it("should add Action event handlers to actionSubscribers set", function()
			local bundle = makeTestBundle()

			local testHandler = function() end
			bundle.navigation.addListener(NavigationEvents.Action, testHandler)
			expect(bundle.testActionSubscribers[testHandler]).to.equal(true)
		end)
	end)
end
