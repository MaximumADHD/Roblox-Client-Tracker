return function()
	local subscriptionWorkspace = script.Parent.Parent

	local subscriptionModule = require(subscriptionWorkspace)
	local subscribe = subscriptionModule.subscribe
	local createSourceEventStream = subscriptionModule.createSourceEventStream

	-- ROBLOX TODO: delete this and implement subscription properly (if its never needed)
	describe("subscription stub", function()
		it("errors on subscribe", function()
			local expect: any = expect
			expect(function()
				subscribe(nil :: any)
			end).toThrow()
		end)
		it("errors on createSourceEventStream", function()
			local expect: any = expect
			expect(function()
				createSourceEventStream(nil :: any, nil :: any)
			end).toThrow()
		end)
	end)
end
