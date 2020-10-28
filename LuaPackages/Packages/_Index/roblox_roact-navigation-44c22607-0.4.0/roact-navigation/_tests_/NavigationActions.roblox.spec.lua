return function()
	local NavigationActions = require(script.Parent.Parent.NavigationActions)

	it("throws when indexing an unknown field", function()
		expect(function()
			return NavigationActions.foo
		end).to.throw("\"foo\" is not a valid member of NavigationActions")
	end)

	describe("NavigationActions token tests", function()
		it("should return same object for each token for multiple calls", function()
			expect(NavigationActions.Back).to.equal(NavigationActions.Back)
			expect(NavigationActions.Init).to.equal(NavigationActions.Init)
			expect(NavigationActions.Navigate).to.equal(NavigationActions.Navigate)
			expect(NavigationActions.SetParams).to.equal(NavigationActions.SetParams)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(NavigationActions.Back)).to.equal("BACK")
			expect(tostring(NavigationActions.Init)).to.equal("INIT")
			expect(tostring(NavigationActions.Navigate)).to.equal("NAVIGATE")
			expect(tostring(NavigationActions.SetParams)).to.equal("SET_PARAMS")
		end)
	end)

	describe("NavigationActions function tests", function()
		it("should return a back action with matching data for a call to back()", function()
			local backTable = NavigationActions.back({
				key = "the_key",
				immediate = true,
			})

			expect(backTable.type).to.equal(NavigationActions.Back)
			expect(backTable.key).to.equal("the_key")
			expect(backTable.immediate).to.equal(true)
		end)

		it("should return an init action with matching data for call to init()", function()
			local initTable = NavigationActions.init({
				params = "foo",
			})

			expect(initTable.type).to.equal(NavigationActions.Init)
			expect(initTable.params).to.equal("foo")
		end)

		it("should return a navigate action with matching data for call to navigate()", function()
			local navigateTable = NavigationActions.navigate({
				routeName = "routeName",
				params = "foo",
				action = "action",
				key = "key",
			})

			expect(navigateTable.type).to.equal(NavigationActions.Navigate)
			expect(navigateTable.routeName).to.equal("routeName")
			expect(navigateTable.params).to.equal("foo")
			expect(navigateTable.action).to.equal("action")
			expect(navigateTable.key).to.equal("key")
		end)

		it("should return a set params action with matching data for call to setParams()", function()
			local setParamsTable = NavigationActions.setParams({
				key = "key",
				params = "foo",
			})

			expect(setParamsTable.type).to.equal(NavigationActions.SetParams)
			expect(setParamsTable.key).to.equal("key")
			expect(setParamsTable.params).to.equal("foo")
		end)
	end)
end
