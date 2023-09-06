--!nonstrict
local HttpRequests = require(script.Parent.HttpRequests)
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest

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
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(true)
				expect(unauthorized).toBe(false)
				expect(instructions).toBe(testInstructions)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should throw when callback is nil", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			local success, err = pcall(function()
				httpRequests:getInstructions()
			end)
			expect(success).toBe(false)
		end)

		it("should throw when not get from new", function()
			local mock, mockFn = jest.fn()
			local success, err = pcall(function()
				HttpRequests:getInstructions(mockFn)
			end)
			expect(success).toBe(false)
			expect(mock).never.toHaveBeenCalled()
		end)

		it("should correctly callback when connection error", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when 401", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 401))
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
				expect(unauthorized).toBe(true)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when 412", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 412))
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
				expect(unauthorized).toBe(false)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when errorCode", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 1))
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
				expect(unauthorized).toBe(false)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when decoding failed", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				assert(false)
			end
			local httpRequests = HttpRequests:new(httpService)
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
				expect(unauthorized).toBe(false)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when wrong response json format", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				return {
					errorCode = 0,
				}
			end
			local httpRequests = HttpRequests:new(httpService)
			local mock, mockFn = jest.fn(function (success, unauthorized, instructions)
				expect(success).toBe(false)
				expect(unauthorized).toBe(false)
			end)
			httpRequests:getInstructions(mockFn)
			expect(mock).toHaveBeenCalled()
		end)
	end)

	describe("reportExecution()", function()
		it("should correctly callback when succeeded", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 0))
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(true)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should throw when not get from new", function()
			local mock, mockFn = jest.fn()
			local success, err = pcall(function()
				HttpRequests:reportExecution("a", "b", mockFn)
			end)
			expect(success).toBe(false)
			expect(mock).never.toHaveBeenCalled()
		end)

		it("should be ok with nil callback when succeeded", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 0))
			httpRequests:reportExecution("a", "b", nil)
		end)

		it("should correctly callback when connection error", function()
			local httpRequests = HttpRequests:new(createMockHttpService(false))
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(false)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when 401", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 401))
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(false)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when errorCode", function()
			local httpRequests = HttpRequests:new(createMockHttpService(true, 200, 1))
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(false)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when decoding failed", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				assert(false)
			end
			local httpRequests = HttpRequests:new(httpService)
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(false)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)

		it("should correctly callback when wrong response json format", function()
			local httpService = createMockHttpService(true, 200, 0)
			httpService.JSONDecode = function(self, body)
				return { }
			end
			local httpRequests = HttpRequests:new(httpService)
			local mock, mockFn = jest.fn(function (success)
				expect(success).toBe(false)
			end)
			httpRequests:reportExecution("a", "b", mockFn)
			expect(mock).toHaveBeenCalled()
		end)
	end)
end
