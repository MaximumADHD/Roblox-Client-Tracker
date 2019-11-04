return function()
	local StateUtils = require(script.Parent.Parent.StateUtils)

	describe("StateUtils.get tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.get(nil, "key")
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.get({}, 5)
			end).to.throw()
		end)

		it("should return nil if key is not found in routes", function()
			local result = StateUtils.get({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					},
				},
			}, "key")

			expect(result).to.equal(nil)
		end)

		it("should return route if key is found in routes", function()
			local result = StateUtils.get({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					}
				},
			}, "foo-1")

			expect(result.routeName).to.equal("foo")
			expect(result.key).to.equal("foo-1")
		end)
	end)

	describe("StateUtils.getAtIndex tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.getAtIndex(nil, 0)
			end).to.throw()
		end)

		it("should assert if index is negative", function()
			expect(function()
				StateUtils.getAtIndex({}, -1)
			end).to.throw()
		end)

		it("should return nil if index is not found", function()
			local result = StateUtils.getAtIndex({
				index = 1,
				routes = {
					{
						routeName = "foo1",
						key = "foo-1",
					},
					{
						routeName = "foo2",
						key = "foo-2",
					}
				}
			}, 5)

			expect(result).to.equal(nil)
		end)

		it("should return a matching route", function()
			local result = StateUtils.getAtIndex({
				index = 1,
				routes = {
					{
						routeName = "foo1",
						key = "foo-1",
					},
					{
						routeName = "foo2",
						key = "foo-2",
					}
				}
			}, 2)

			expect(result.routeName).to.equal("foo2")
			expect(result.key).to.equal("foo-2")
		end)
	end)

	describe("StateUtils.getActiveRoute tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.getActiveRoute(nil)
			end).to.throw()
		end)

		it("should return nil if no routes", function()
			local result = StateUtils.getActiveRoute({
				index = 0,
				routes = {},
			})

			expect(result).to.equal(nil)
		end)

		it("should return active route", function()
			local result = StateUtils.getActiveRoute({
				index = 1,
				routes = {
					{
						routeName = "active",
						key = "active-1",
					}
				},
			})

			expect(result.routeName).to.equal("active")
			expect(result.key).to.equal("active-1")
		end)
	end)

	describe("StateUtils.indexOf tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.indexOf(nil, "key")
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.indexOf({}, 5)
			end).to.throw()
		end)

		it("should return nil if key is not found in routes", function()
			local result = StateUtils.indexOf({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					}
				},
			}, "key")

			expect(result).to.equal(nil)
		end)

		it("should return index if key is found in routes", function()
			local result = StateUtils.indexOf({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					},
					{
						routeName = "foo2",
						key = "foo-2",
					}
				},
			}, "foo-2")

			expect(result).to.equal(2)
		end)
	end)

	describe("StateUtils.has tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.has(nil, "key")
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.has({}, 5)
			end).to.throw()
		end)

		it("should return false if key is not in routes", function()
			local result = StateUtils.has({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					}
				}
			}, "key")

			expect(result).to.equal(false)
		end)

		it("should return true if key is found in routes", function()
			local result = StateUtils.has({
				index = 1,
				routes = {
					{
						routeName = "foo",
						key = "foo-1",
					}
				}
			}, "foo-1")

			expect(result).to.equal(true)
		end)
	end)

	describe("StateUtils.push tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.push(nil, {})
			end).to.throw()
		end)

		it("should assert if route is not a table", function()
			expect(function()
				StateUtils.push({}, 5)
			end).to.throw()
		end)

		it("should assert if route.key is already present", function()
			expect(function()
				StateUtils.push({
					index = 1,
					routes = {
						{
							routeName = "foo",
							key = "foo-1",
						}
					}
				}, {
					routeName = "foo",
					key = "foo-1",
				})
			end).to.throw()
		end)

		it("should insert new route if it doesn't exist", function()
			local newState = StateUtils.push({
				index = 1,
				routes = {
					{
						routeName = "first",
						key = "foo-1",
					},
				},
			}, {
				routeName = "second",
				key = "foo-2",
			})

			expect(newState.index).to.equal(2)
			expect(#newState.routes).to.equal(2)
			expect(newState.routes[newState.index].key).to.equal("foo-2")
			expect(newState.routes[newState.index].routeName).to.equal("second")
		end)
	end)

	describe("StateUtils.pop tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.pop(nil)
			end).to.throw()
		end)

		it("should return existing state if routes is empty", function()
			local initialState = {
				index = 0,
				routes = {},
			}

			local newState = StateUtils.pop(initialState)
			expect(newState).to.equal(initialState)
		end)

		it("should return empty state if popping one route", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "route-1", },
				},
			}

			local newState = StateUtils.pop(initialState)
			expect(newState.index).to.equal(0)
			expect(#newState.routes).to.equal(0)
		end)

		it("should remove top route if popping with more than one route", function()
			local initialState = {
				index = 2,
				routes = {
					{ routeName = "route", key = "route-1", },
					{ routeName = "route", key = "route-2", },
				},
			}

			local newState = StateUtils.pop(initialState)
			expect(newState.index).to.equal(1)
			expect(#newState.routes).to.equal(1)
			expect(newState.routes[1].key).to.equal("route-1")
		end)
	end)

	describe("StateUtils.jumpToIndex tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.jumpToIndex(nil, 0)
			end).to.throw()
		end)

		it("should assert if index is not a number", function()
			expect(function()
				StateUtils.jumpToIndex({}, "foo")
			end).to.throw()
		end)

		it("should assert if index does not match a route", function()
			expect(function()
				StateUtils.jumpToIndex({
					index = 1,
					routes = { { routeName = "first", key = "first-1" } }
				}, 5)
			end).to.throw()
		end)

		it("should return original state if index matches current", function()
			local initialState = {
				index = 1,
				routes = { { routeName = "one", key = "1" } }
			}

			local newState = StateUtils.jumpToIndex(initialState, 1)
			expect(newState).to.equal(initialState)
		end)

		it("should return updated state if index differs", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "route-1" },
					{ routeName = "route", key = "route-2" },
				},
			}

			local newState = StateUtils.jumpToIndex(initialState, 2)
			expect(newState.index).to.equal(2)
		end)
	end)

	describe("StateUtils.jumpTo tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.jumpTo(nil, "key")
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.jumpTo({}, 0)
			end).to.throw()
		end)

		it("should return original state if key is already active route", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.jumpTo(initialState, "key-1")
			expect(newState).to.equal(initialState)
		end)

		it("should return state with new active route if key is not active", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.jumpTo(initialState, "key-2")
			expect(newState.index).to.equal(2)
		end)
	end)

	describe("StateUtils.back tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.back(nil)
			end).to.throw()
		end)

		it("should return original state if route for new index does not exist", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "key-1" },
				}
			}

			local newState = StateUtils.back(initialState)
			expect(newState).to.equal(initialState)
		end)

		it("should remove top state if there is somewhere to go", function()
			local initialState = {
				index = 2,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.back(initialState)
			expect(newState.index).to.equal(1)
		end)
	end)

	describe("StateUtils.forward tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.forward(nil)
			end).to.throw()
		end)

		it("should not walk off the end of the route list", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "key-1" },
				}
			}

			local newState = StateUtils.forward(initialState)
			expect(newState).to.equal(initialState)
		end)

		it("should move to next route if available", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.forward(initialState)
			expect(newState.index).to.equal(2)
		end)
	end)

	describe("StateUtils.replaceAndPrune tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.replaceAndPrune(nil, "key", {})
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.replaceAndPrune({}, 0, {})
			end).to.throw()
		end)

		it("should assert if route is not a table", function()
			expect(function()
				StateUtils.replaceAndPrune({}, "key", 0)
			end).to.throw()
		end)

		it("should replace matching route and prune following routes", function()
			local initialState = {
				index = 2,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.replaceAndPrune(initialState, "key-1", {
				routeName = "newRoute", key = "key-3"
			})

			expect(newState.index).to.equal(1)
			expect(#newState.routes).to.equal(1)
			expect(newState.routes[1].routeName).to.equal("newRoute")
			expect(newState.routes[1].key).to.equal("key-3")
		end)
	end)

	describe("StateUtils.replaceAt tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.replaceAt(nil, "key", {}, false)
			end).to.throw()
		end)

		it("should assert if key is not a string", function()
			expect(function()
				StateUtils.replaceAt({}, 0, {}, false)
			end).to.throw()
		end)

		it("should assert if route is not a table", function()
			expect(function()
				StateUtils.replaceAt({}, "key", 0, false)
			end).to.throw()
		end)

		it("should assert if preserveIndex is not a boolean", function()
			expect(function()
				StateUtils.replaceAt({}, "key", {}, 0)
			end).to.throw()
		end)

		it("should replace matching route, not prune, and update index", function()
			local initialState = {
				index = 2,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.replaceAt(initialState, "key-1", {
				routeName = "newRoute", key = "key-3"
			}, false)

			expect(newState.index).to.equal(1)
			expect(#newState.routes).to.equal(2)
			expect(newState.routes[1].routeName).to.equal("newRoute")
			expect(newState.routes[1].key).to.equal("key-3")
		end)

		it("should replace matching route, not prune, and preserve existing index", function()
			local initialState = {
				index = 2,
				routes = {
					{ routeName = "route", key = "key-1" },
					{ routeName = "route", key = "key-2" },
				}
			}

			local newState = StateUtils.replaceAt(initialState, "key-1", {
				routeName = "newRoute", key = "key-3"
			}, true)

			expect(newState.index).to.equal(2)
			expect(#newState.routes).to.equal(2)
			expect(newState.routes[1].routeName).to.equal("newRoute")
			expect(newState.routes[1].key).to.equal("key-3")
		end)
	end)

	describe("StateUtils.replaceAtIndex tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.replaceAtIndex(nil, 0, {})
			end).to.throw()
		end)

		it("should assert if index is not a number", function()
			expect(function()
				StateUtils.replaceAtIndex({}, nil, {})
			end).to.throw()
		end)

		it("should assert if route is not a table", function()
			expect(function()
				StateUtils.replaceAtIndex({}, 5, nil)
			end).to.throw()
		end)

		it("should assert if index does not exist", function()
			expect(function()
				StateUtils.replaceAtIndex({
					index = 0,
					routes = {}
				}, 5, { routeName = "name", key = "key" })
			end).to.throw()
		end)

		it("should return original state if inputs are same", function()
			local testRoute = { routeName = "name", key = "key" }
			local initialState = {
				index = 1,
				routes = { testRoute },
			}

			local newState = StateUtils.replaceAtIndex(initialState, 1, testRoute)
			expect(newState).to.equal(initialState)
		end)

		it("should replace route at index if route is not equal", function()
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "name", key = "key" }
				},
			}

			local newState = StateUtils.replaceAtIndex(initialState, 1, {
				routeName = "newName",
				key = "key",
			})

			expect(newState.index).to.equal(1)
			expect(#newState.routes).to.equal(1)
			expect(newState.routes[1].routeName).to.equal("newName")
			expect(newState.routes[1].key).to.equal("key")
		end)

		it("should update index, if new index differs but route does not", function()
			local testRoute = { routeName = "name", key = "key-2" }
			local initialState = {
				index = 1,
				routes = {
					{ routeName = "name", key = "key-1" },
					testRoute,
				}
			}

			local newState = StateUtils.replaceAtIndex(initialState, 2, testRoute)
			expect(newState).never.to.equal(initialState)
			expect(newState.index).to.equal(2)
		end)
	end)

	describe("StateUtils.reset tests", function()
		it("should assert if state is not a table", function()
			expect(function()
				StateUtils.reset(nil, {}, 0)
			end).to.throw()
		end)

		it("should assert if routes is not a table", function()
			expect(function()
				StateUtils.reset({}, nil, 0)
			end).to.throw()
		end)

		it("should assert if index is not a number", function()
			expect(function()
				StateUtils.reset({}, {}, "foo")
			end).to.throw()
		end)

		it("should NOT assert if index is nil", function()
			expect(function()
				StateUtils.reset({}, {})
			end).to.throw()
		end)

		it("should return original state if index matches and all routes are same objects", function()
			local route1 = { routeName = "route1", key = "route-1" }
			local route2 = { routeName = "route2", key = "route-2" }

			local initialState = {
				index = 2,
				routes = { route1, route2 },
			}

			local newState = StateUtils.reset(initialState, {
				route1,
				route2,
			}, 2)

			expect(newState).to.equal(initialState)
		end)

		it("should update state if index is not specified and old index is not last route", function()
			local route1 = { routeName = "route1", key = "route-1" }
			local route2 = { routeName = "route2", key = "route-2" }

			local initialState = {
				index = 1,
				routes = { route1, route2 },
			}

			local newState = StateUtils.reset(initialState, {
				route1,
				route2,
			})

			expect(newState).never.to.equal(initialState)
			expect(newState.index).to.equal(2)
		end)

		it("should update state if index matches but routes differ", function()
			local route1 = { routeName = "route1", key = "route-1" }
			local route2 = { routeName = "route2", key = "route-2" }

			local initialState = {
				index = 1,
				routes = { route1, route2 },
			}

			local newState = StateUtils.reset(initialState, {
				route1,
				{ routeName = "route3", key = "route-3" },
			}, 1)

			expect(newState).never.to.equal(initialState)
			expect(#newState.routes).to.equal(2)
			expect(newState.index).to.equal(1)
			expect(newState.routes[2].routeName).to.equal("route3")
			expect(newState.routes[2].key).to.equal("route-3")
		end)
	end)
end
