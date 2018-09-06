return function()
	local httpRequest = require(script.Parent.httpRequest)

	local function createTestRequestFunc(testResponse)
		local requestService = {}
		function requestService:GetAsyncFullUrl()
			return testResponse
		end
		function requestService:PostAsyncFullUrl()
			return testResponse
		end

		return httpRequest(requestService)
	end

	it("should return a function", function()
		expect(httpRequest()).to.be.ok()
		expect(type(httpRequest())).to.equal("function")
	end)

	it("should validate its inputs", function()
		local testRequest = createTestRequestFunc()
		local function testParams(url, requestMethod, args)
			return function()
				testRequest(url, requestMethod, args)
			end
		end

		local validUrl = "friends.roblox.com"
		local validMethod = "GET"
		local validArgs = {}

		-- url checks
		expect(testParams(nil, validMethod, validArgs)).to.throw()
		expect(testParams(123, validMethod, validArgs)).to.throw()
		expect(testParams({}, validMethod, validArgs)).to.throw()
		expect(testParams(true, validMethod, validArgs)).to.throw()
		expect(testParams(function() end, validMethod, validArgs)).to.throw()

		-- request method checks
		expect(testParams(validUrl, nil, validArgs)).to.throw()
		expect(testParams(validUrl, 123, validArgs)).to.throw()
		expect(testParams(validUrl, {}, validArgs)).to.throw()
		expect(testParams(validUrl, true, validArgs)).to.throw()
		expect(testParams(validUrl, function() end, validArgs)).to.throw()

		-- args checks
		expect(testParams(validUrl, validMethod, 123)).to.throw()
		expect(testParams(validUrl, validMethod, "Test")).to.throw()
		expect(testParams(validUrl, validMethod, true)).to.throw()
		expect(testParams(validUrl, validMethod, function() end)).to.throw()
	end)

	it("should throw an error if the requestMethod isn't supported", function()
		local testRequest = createTestRequestFunc("foo")

		expect(function()
			testRequest("testUrl", "GIVEANDTAKE")
		end).to.throw()
	end)
end