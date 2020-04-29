local Networking = require(script.Parent.Networking)

local function createFakeHttpService(fakeResponseFunc, onRequestAsync, onRequestInteral)
	if not fakeResponseFunc then
		fakeResponseFunc = function()
			return {
				Body = "{}",
				Success = true,
				StatusMessage = "OK",
				StatusCode = 200,
			}
		end
	end

	local function createRequestInternalObj(response)
		local requestObj = {
			response = response
		}
		function requestObj:Start(callback)
			callback(true, self.response)
		end

		return requestObj
	end

	local httpImpl = {
		fakeResponseFunc = fakeResponseFunc,
		ClassName = "FakeHttpService",
	}
	function httpImpl:RequestAsync(options)
		-- RequestAsync makes the call and returns the result
		if onRequestAsync then
			onRequestAsync(options)
		end

		return self.fakeResponseFunc()
	end
	function httpImpl:RequestInternal(options)
		-- RequestInternal returns an object that you must call Start on to execute the request
		if onRequestInteral then
			onRequestInteral(options)
		end

		return createRequestInternalObj(self.fakeResponseFunc())
	end

	return httpImpl
end

return function()

	describe("new()", function()
		it("should construct with no params", function()
			local n = Networking.new()
			expect(n).to.be.ok()
		end)
	end)


	describe("mock()", function()
		it("should construct with no params", function()
			local n = Networking.mock()
			expect(n).to.be.ok()
		end)

		it("should allow you to supply a list of predefined responses", function()
			local n = Networking.mock({
				["https://www.test.com/fakeApi?a=1&b=2"] = {
					Body = "{ message=\"no way dude\" }",
					Success = false,
					StatusMessage = "Forbidden",
					StatusCode = 403,
				}
			})

			expect(n).to.be.ok()

			local didError = false
			n:get("https://www.test.com/fakeApi?a=1&b=2"):catch(function(errResponse)
				didError = true
				expect(errResponse.responseBody).to.equal("{ message=\"no way dude\" }")
				expect(errResponse.responseCode).to.equal(403)
			end)

			expect(didError).to.equal(true)
		end)

		it("should fallback to more simple urls if the target url is too specific", function()
			local n = Networking.mock({
				["https://www.test.com/fakeApi"] = {
					Body = "{ message=\"success\" }",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				},
			})

			local didError = false
			n:get("https://www.test.com/fakeApi?a=1&b=2"):andThen(function(response)
				expect(response.responseBody).to.equal("{ message=\"success\" }")
				expect(response.responseCode).to.equal(200)
			end, function()
				didError = true
			end)

			expect(didError).to.equal(false)
		end)
	end)

	describe("_isLoggingEnabled()", function()
		it("should log nothing when set to NONE", function()
			local n = Networking.mock(nil, 0) -- LOGGING_CHANNELS.NONE
			expect(n._isLoggingEnabled(1)).to.equal(false)
			expect(n._isLoggingEnabled(2)).to.equal(false)
			expect(n._isLoggingEnabled(3)).to.equal(false)
			expect(n._isLoggingEnabled(4)).to.equal(false)
			expect(n._isLoggingEnabled(5)).to.equal(false)
			expect(n._isLoggingEnabled(6)).to.equal(false)
			expect(n._isLoggingEnabled(7)).to.equal(false)
		end)

		it("should log information for REQUEST channels", function()
			local n = Networking.mock(nil, 1) -- LOGGING_CHANNELS.REQUESTS
			expect(n._isLoggingEnabled(1)).to.equal(true)
			expect(n._isLoggingEnabled(2)).to.equal(false)
			expect(n._isLoggingEnabled(3)).to.equal(true)
			expect(n._isLoggingEnabled(4)).to.equal(false)
			expect(n._isLoggingEnabled(5)).to.equal(true)
			expect(n._isLoggingEnabled(6)).to.equal(false)
			expect(n._isLoggingEnabled(7)).to.equal(true)
		end)

		it("should log information for RESPONSES channels", function()
			local n = Networking.mock(nil, 2) -- LOGGING_CHANNELS.RESPONSES
			expect(n._isLoggingEnabled(1)).to.equal(false)
			expect(n._isLoggingEnabled(2)).to.equal(true)
			expect(n._isLoggingEnabled(3)).to.equal(true)
			expect(n._isLoggingEnabled(4)).to.equal(false)
			expect(n._isLoggingEnabled(5)).to.equal(false)
			expect(n._isLoggingEnabled(6)).to.equal(true)
			expect(n._isLoggingEnabled(7)).to.equal(true)
		end)

		it("should log information for DEBUG channels", function()
			local n = Networking.mock(nil, 4) -- LOGGING_CHANNELS.DEBUG
			expect(n._isLoggingEnabled(1)).to.equal(false)
			expect(n._isLoggingEnabled(2)).to.equal(false)
			expect(n._isLoggingEnabled(3)).to.equal(false)
			expect(n._isLoggingEnabled(4)).to.equal(true)
			expect(n._isLoggingEnabled(5)).to.equal(true)
			expect(n._isLoggingEnabled(6)).to.equal(true)
			expect(n._isLoggingEnabled(7)).to.equal(true)
		end)

		it("should log everything when set to VERBOSE", function()
			local n = Networking.mock(nil, 7) -- LOGGING_CHANNELS.VERBOSE
			expect(n._isLoggingEnabled(1)).to.equal(true)
			expect(n._isLoggingEnabled(2)).to.equal(true)
			expect(n._isLoggingEnabled(3)).to.equal(true)
			expect(n._isLoggingEnabled(4)).to.equal(true)
			expect(n._isLoggingEnabled(5)).to.equal(true)
			expect(n._isLoggingEnabled(6)).to.equal(true)
			expect(n._isLoggingEnabled(7)).to.equal(true)
		end)
	end)


	describe("parseJson()", function()
		it("should take a successful HttpResponse and parse the body", function()
			local n = Networking.mock({
				["https://www.test.com"] = {
					Body = "{ \"message\":{ \"a\":{ \"b\":\"foo\" } } }",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				}
			})

			local didError = false
			local httpPromise = n:get("https://www.test.com")
			Networking.parseJson(httpPromise):andThen(function(json)
				local body = json.responseBody
				expect(body.message.a.b).to.equal("foo")
			end, function()
				didError = true
			end)

			expect(didError).to.equal(false)
		end)
	end)


	describe("handleRetry()", function()
		it("should retry only if the request fails", function()
			local callCount = 0
			local function getResponseFunc()
				callCount = callCount + 1

				return {
					Body = "foo",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				}
			end
			local httpImpl = createFakeHttpService(getResponseFunc)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			local didError = false
			local httpPromise = n:get("https://www.test.com")
			n:handleRetry(httpPromise, 3, true):andThen(function(response)
				expect(response.responseBody).to.equal("foo")
			end, function()
				didError = true
			end)

			expect(didError).to.equal(false)
			expect(callCount).to.equal(1)
		end)

		it("should retry up to 3 times if a request fails", function()
			local callCount = 0
			local function getResponseFunc()
				callCount = callCount + 1

				return {
				Body = "{ \"message\":\"foo\" }",
				Success = false,
				StatusMessage = "Server Error",
				StatusCode = 500,
			}
			end
			local httpImpl = createFakeHttpService(getResponseFunc)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			local didError = false
			local httpPromise = n:get("https://www.test.com")
			n:handleRetry(httpPromise, 3, true):catch(function()
				didError = true
			end)

			expect(didError).to.equal(true)
			expect(callCount).to.equal(4) -- 1 original + 3 retries
		end)

		it("should on retry only as many times as it needs to succeed", function()
			local callCount = 0
			local function getResponseFunc()
				callCount = callCount + 1

				-- after a few retries, return a success
				if callCount == 2 then
					return {
						Body = "foo",
						Success = true,
						StatusMessage = "OK",
						StatusCode = 200,
					}
				end

				return {
						Body = "bad",
						Success = false,
						StatusMessage = "Server Error",
						StatusCode = 500,
					}
			end
			local httpImpl = createFakeHttpService(getResponseFunc)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			local didError = false
			local httpPromise = n:get("https://www.test.com")
			n:handleRetry(httpPromise, 3, true):andThen(function(response)
				expect(response.responseBody).to.equal("foo")
			end, function()
				didError = true
			end)

			expect(didError).to.equal(false)
			expect(callCount).to.equal(2) -- 1 original + 1 retries
		end)
	end)

	describe("request()", function()
		it("should validate its inputs", function()
			local n = Networking.new()
			expect(function()
				-- missing method
				n:request({
					Url = "http://www.test.com"
				})
			end).to.throw()

			expect(function()
				-- missing url
				n:request({
					Method = "GET"
				})
			end).to.throw()
		end)

		it("should return a Promise that resolves to an HttpResponse object", function()
			local n = Networking.mock({
				["https://www.test.com"] = {
					Body = "{ message=\"success\" }",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				}
			})

			local httpPromise = n:request({ Method = "GET", Url = "https://www.test.com" })
			expect(httpPromise).to.be.ok()

			local didError = false
			httpPromise:andThen(function(response)
				expect(response.responseBody).to.equal("{ message=\"success\" }")
				expect(response.responseCode).to.equal(200)
				expect(response.requestOptions.Method).to.equal("GET")
				expect(response.requestOptions.Url).to.equal("https://www.test.com")
				expect(response.responseTimeMs > 0).to.equal(true)
			end, function()
				didError = true
			end)

			expect(didError).to.equal(false)
		end)

		it("should call RequestAsync by default", function()
			local asyncCallCount = 0
			local internalCallCount = 0
			local httpImpl = createFakeHttpService(nil, function()
				asyncCallCount = asyncCallCount + 1
			end, function()
				internalCallCount = internalCallCount + 1
			end)

			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			n:request({ Url = "http://www.test.com/", Method = "GET", })

			expect(asyncCallCount).to.equal(1)
			expect(internalCallCount).to.equal(0)
		end)

		it("should call RequestInternal if marked as 'isInternal'", function()
			local asyncCallCount = 0
			local internalCallCount = 0
			local httpImpl = createFakeHttpService(nil, function()
				asyncCallCount = asyncCallCount + 1
			end, function()
				internalCallCount = internalCallCount + 1
			end)

			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
				isInternal = true
			})
			n:request({ Url = "http://www.test.com/", Method = "GET", })

			expect(asyncCallCount).to.equal(0)
			expect(internalCallCount).to.equal(1)
		end)
	end)

	describe("get()", function()
		it("should act as a preformatted version of Request", function()
			local callCount = 0

			local httpImpl = createFakeHttpService(nil, function(options)
				callCount = callCount + 1
				expect(options.Method).to.equal("GET")
			end)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			n:get("http://www.test.com")

			expect(callCount).to.equal(1)
		end)
	end)

	describe("post()", function()
		it("should act as a preformatted version of Request", function()
			local callCount = 0

			local httpImpl = createFakeHttpService(nil, function(options)
				callCount = callCount + 1
				expect(options.Method).to.equal("POST")
			end)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			n:post("http://www.test.com")

			expect(callCount).to.equal(1)
		end)
	end)

	describe("delete()", function()
		it("should act as a preformatted version of Request", function()
			local callCount = 0

			local httpImpl = createFakeHttpService(nil, function(options)
				callCount = callCount + 1
				expect(options.Method).to.equal("DELETE")
			end)
			local n = Networking.new({
				httpImpl = httpImpl,
				allowYielding = false,
			})

			n:delete("http://www.test.com")

			expect(callCount).to.equal(1)
		end)
	end)
end