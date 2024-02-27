--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

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
		local httpRequestAny = httpRequest :: any
		expect(httpRequestAny()).toEqual(expect.any("function"))
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
		expect(testParams(nil, validMethod, validArgs)).toThrow("Expected url to be a string")
		expect(testParams(123, validMethod, validArgs)).toThrow("Expected url to be a string")
		expect(testParams({}, validMethod, validArgs)).toThrow("Expected url to be a string")
		expect(testParams(true, validMethod, validArgs)).toThrow("Expected url to be a string")
		expect(testParams(function() end, validMethod, validArgs)).toThrow("Expected url to be a string")

		-- request method checks
		expect(testParams(validUrl, nil, validArgs)).toThrow("Expected requestMethod to be a string")
		expect(testParams(validUrl, 123, validArgs)).toThrow("Expected requestMethod to be a string")
		expect(testParams(validUrl, {}, validArgs)).toThrow("Expected requestMethod to be a string")
		expect(testParams(validUrl, true, validArgs)).toThrow("Expected requestMethod to be a string")
		expect(testParams(validUrl, function() end, validArgs)).toThrow("Expected requestMethod to be a string")

		-- args checks
		expect(testParams(validUrl, validMethod, 123)).toThrow("Expected options to be a table")
		expect(testParams(validUrl, validMethod, "Test")).toThrow("Expected options to be a table")
		expect(testParams(validUrl, validMethod, true)).toThrow("Expected options to be a table")
		expect(testParams(validUrl, validMethod, function() end)).toThrow("Expected options to be a table")
	end)

	it("should throw an error if the requestMethod isn't supported", function()
		local testRequest = createTestRequestFunc("foo")

		expect(function()
			testRequest("testUrl", "GIVEANDTAKE")
		end).toThrow("Unsupported requestMethod : GIVEANDTAKE")
	end)
end
