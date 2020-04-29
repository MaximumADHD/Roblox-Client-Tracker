return function()
	local getChildRouter = require(script.Parent.Parent.getChildRouter)

	it("should throw if router is not a table", function()
		local status, err = pcall(function()
			getChildRouter(5, "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "router must be a table")).to.never.equal(nil)
	end)

	it("should throw if routeName is not a string", function()
		local status, err = pcall(function()
			getChildRouter({}, 5)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "routeName must be a string")).to.never.equal(nil)
	end)

	it("should return child router if found", function()
		local childRouter = {}
		local result = getChildRouter({
			childRouters = {
				myRoute = childRouter,
			}
		}, "myRoute")

		expect(result).to.equal(childRouter)
	end)

	it("should look up component router if no child router is found", function()
		local component = { router = {} }

		local result = getChildRouter({
			getComponentForRouteName = function(routeName)
				if routeName == "myRoute" then
					return component
				else
					return nil
				end
			end
		}, "myRoute")

		expect(result).to.equal(component.router)
	end)

	it("should throw if no child routers are specified and getComponentForRouteName is not a function", function()
		local status, err = pcall(function()
			getChildRouter({
				getComponentForRouteName = 5
			}, "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "router.getComponentForRouteName must be a function if no child routers are specified")
			).to.never.equal(nil)
	end)
end
