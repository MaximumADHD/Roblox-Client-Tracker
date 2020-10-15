return function()
	local getChildNavigation = require(script.Parent.Parent.getChildNavigation)

	it("should return nil if there is no route matching requested key", function()
		local testNavigation = {
			state = {
				routes = {
					{ key = "a" }
				}
			}
		}

		local childNav = getChildNavigation(testNavigation, "invalid_child", function()
			return testNavigation
		end)

		expect(childNav).to.equal(nil)
	end)

	it("should return cached child if its state is a top-level route", function()
		local testNavigation = {
			state = {
				routes = {
					{ key = "a" }
				},

			},
		}

		testNavigation._childrenNavigation = {
			a = {
				state  = testNavigation.state.routes[1]
			}
		}

		local childNav = getChildNavigation(testNavigation, "a", function()
			return testNavigation
		end)

		expect(childNav).to.equal(testNavigation._childrenNavigation.a)
	end)

	it("should update cache and return new data when child's state has changed", function()
		local testNavigation = {
			state = {
				routes = {
					{ key = "a", routeName = "a" },
					{ key = "b", routeName = "b" },
				},
				index = 1,
			},
			router = {
				getComponentForRouteName = function(routeName)
					return function() end
				end,
				getActionCreators = function() end
			}
		}

		local oldStateA = {
			state  = {
				routes = {
					{ key = "a", routeName = "a" },
					{ key = "b", routeName = "b" },
				},
				index = 2,
			},
		}

		testNavigation._childrenNavigation = {
			a = oldStateA
		}

		local childNav = getChildNavigation(testNavigation, "a", function()
			return testNavigation
		end)

		expect(childNav).to.equal(testNavigation._childrenNavigation["a"])
		expect(childNav.state).to.equal(testNavigation.state.routes[1])
		expect(type(childNav.getParam)).to.equal("function")
	end)

	it("should create a new entry if cached child does not exist yet", function()
		local testNavigation = {
			state = {
				routes = {
					{ key = "a", routeName = "a", params = { a = 1 } },
					{ key = "b", routeName = "b" },
				},
				index = 1,
			},
			router = {
				getComponentForRouteName = function(routeName)
					return function() end
				end,
				getActionCreators = function() end,
			},
			addListener = function()
				return {
					disconnect = function() end
				}
			end,
			isFocused = function()
				return true
			end,
		}

		local childNav = getChildNavigation(testNavigation, "a", function()
			return testNavigation
		end)

		expect(testNavigation._childrenNavigation["a"]).to.never.equal(nil)
		expect(childNav).to.equal(testNavigation._childrenNavigation["a"])
		expect(childNav.isFocused()).to.equal(true)

		expect(childNav.getParam("a", 0)).to.equal(1)
		expect(childNav.getParam("b", 0)).to.equal(0)
	end)
end
