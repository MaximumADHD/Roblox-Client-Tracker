return function()
	local jsutils = script.Parent.Parent
	local graphql = jsutils.Parent
	local Packages = graphql.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	type Promise<T> = LuauPolyfill.Promise<T>
	local Promise = require(Packages.Promise)
	local promiseReduce = require(jsutils.promiseReduce).promiseReduce

	describe("promiseReduce", function()
		it("should return the initial value when the list is empty", function()
			local initialValue = {}
			local result = promiseReduce({}, function()
				error("should not be called")
			end, initialValue)
			expect(result).to.equal(initialValue)
		end)

		it("should fold the list if the reducer never returns promises", function()
			-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
			local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
				return acc + element
			end, 0)
			expect(sum).to.equal(6)
		end)

		it(
			"should fold the list into a promise if the reducer returns at least a promise",
			function()
				-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
				local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
					if element == 2 then
						return Promise.resolve(acc + element)
					else
						return acc + element
					end
				end, 0)
				expect(Promise.is(sum)).to.equal(true)
				expect((sum :: Promise<number>):getStatus()).to.equal(Promise.Status.Resolved)
				expect((sum :: Promise<number>):expect()).to.equal(6)
			end
		)

		it("should return the first rejected promise", function()
			local errorMessage = "foo"
			-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
			local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
				if element == 2 then
					return Promise.reject(errorMessage)
				else
					return acc + element
				end
			end, 0)
			expect(Promise.is(sum)).to.equal(true)
			local status, rejection = (sum :: Promise<number>):awaitStatus()
			expect(status).to.equal(Promise.Status.Rejected)
			expect(rejection).to.equal(errorMessage)
		end)
	end)
end
