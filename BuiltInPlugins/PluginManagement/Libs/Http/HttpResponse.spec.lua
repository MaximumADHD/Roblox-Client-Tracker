return function()
	local HttpResponse = require(script.Parent.HttpResponse)
	local StatusCode = require(script.Parent.StatusCodes)

	describe(".new()", function()
		it("should construct without a problem", function()
			expect(function()
				local _ = HttpResponse.new("", 0, StatusCode.OK)
			end).never.to.throw()
		end)

		it("should just pass data through", function()
			local testBody = ""
			local testTime = 203
			local testCode = StatusCode.OK

			local response = HttpResponse.new(testBody, testTime, testCode)

			expect(response.responseBody).to.equal(testBody)
			expect(response.responseTimeMs).to.equal(testTime)
			expect(response.responseCode).to.equal(testCode)
		end)
	end)
end