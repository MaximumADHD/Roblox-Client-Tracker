return function()
	local HttpResponse = require(script.Parent.HttpResponse)
	local StatusCode = require(script.Parent.StatusCodes)

	describe(".new()", function()
		it("should construct without a problem", function()
			expect(function()
				local _ = HttpResponse.new("", 0, StatusCode.OK, {
					Url = "https://www.roblox.com/",
					Method = "GET"
				})
			end).never.to.throw()
		end)

		it("should just pass data through", function()
			local testBody = ""
			local testTime = 203
			local testCode = StatusCode.OK
			local testOptions = {
				Url = "https://www.roblox.com/",
				Method = "GET"
			}

			local response = HttpResponse.new(testBody, testTime, testCode, testOptions)

			expect(response.responseBody).to.equal(testBody)
			expect(response.responseTimeMs).to.equal(testTime)
			expect(response.responseCode).to.equal(testCode)
			expect(response.requestOptions).to.equal(testOptions)
		end)
	end)
end