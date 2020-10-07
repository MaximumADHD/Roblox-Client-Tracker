local HttpRequests = require(script.Parent.HttpRequests)

function createMockHttpService(success, statusCode, errorCode, instructions)
	local testBody = "test-body"
	return {
		RequestInternal = function(self, params)
			return {
				Start = function(self, callback)
					local response = {
						Body = testBody,
						StatusCode = statusCode,
					}
					callback(success, response)
				end
			}
		end,
		JSONDecode = function(self, body)
			assert(body == testBody)
			return {
				errorCode = errorCode,
				instructions = instructions,
			}
		end,
		JSONEncode = function(self, param)
			return testBody
		end,
	}
end

return function()
	local testInstructions = {{
		type = 3,
		instructionName = "name",
		serialId = "id",
		title = "title",
		message = "message",
		url = "url",
		modalType = 0,
		data = "",
	}}

	describe("getInstructions()", function()
		it("should correctly callback when succeeded", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 0, testInstructions))
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(true)
				expect(unauthorized).to.equal(false)
				expect(instructions).to.equal(testInstructions)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should throw when callback is nil", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			success, err = pcall(function()
				httpRequests:getInstructions()
			end)
			expect(success).to.equal(false)
		end)
		
		it("should throw when not get from new", function()
			called = false
			function callback(success, unauthorized, instructions)
				called = true;
			end
			success, err = pcall(function()
				HttpRequests:getInstructions(callback)
			end)
			expect(success).to.equal(false)
			expect(called).to.equal(false)
		end)

		it("should correctly callback when connection error", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when 401", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 401))
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				expect(unauthorized).to.equal(true)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when 412", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 412))
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				expect(unauthorized).to.equal(false)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when errorCode", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 1))
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				expect(unauthorized).to.equal(false)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when decoding failed", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				assert(false)
			end
			local httpRequests = HttpRequests:new(httpService)
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				expect(unauthorized).to.equal(false)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when wrong response json format", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				return {
					errorCode = 0,
				}
			end
			local httpRequests = HttpRequests:new(httpService)
			local called = false
			function callback(success, unauthorized, instructions)
				expect(success).to.equal(false)
				expect(unauthorized).to.equal(false)
				called = true;
			end
			httpRequests:getInstructions(callback)
			expect(called).to.equal(true)
		end)
	end)

	describe("reportExecution()", function()
		it("should correctly callback when succeeded", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 0))
			local called = false
			function callback(success)
				expect(success).to.equal(true)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)

		it("should throw when not get from new", function()
			called = false
			function callback(success)
				called = true;
			end
			success, err = pcall(function()
				HttpRequests:reportExecution("a", "b", callback)
			end)
			expect(success).to.equal(false)
			expect(called).to.equal(false)
		end)

		it("should be ok with nil callback when succeeded", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 0))
			httpRequests:reportExecution("a", "b", nil)
		end)

		it("should correctly callback when connection error", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			local called = false
			function callback(success)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when 401", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 401))
			local called = false
			function callback(success)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when errorCode", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 1))
			local called = false
			function callback(success)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when decoding failed", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				assert(false)
			end
			local httpRequests = HttpRequests:new(httpService)
			local called = false
			function callback(success)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)

		it("should correctly callback when wrong response json format", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				return { }
			end
			local httpRequests = HttpRequests:new(httpService)
			local called = false
			function callback(success)
				expect(success).to.equal(false)
				called = true;
			end
			httpRequests:reportExecution("a", "b", callback)
			expect(called).to.equal(true)
		end)
	end)
end
