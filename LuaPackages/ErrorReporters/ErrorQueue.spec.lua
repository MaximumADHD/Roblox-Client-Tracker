--!nonstrict
return function()
	local ErrorQueue = require(script.Parent.ErrorQueue)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local errorsToAdd = {
		[1] = {
			key = "test",
			value = 2.33,
		},
		[2] = {
			key = "test",
			value = 2,
		},
		[3] = {
			key = "test",
			value = 3.14,
		},
		[4] = {
			key = "test2",
			value = 123,
		},
		[5] = {
			key = "test2",
			value = 456,
		},
		[6] = {
			key = "test3",
			value = "something",
		},
	}

	describe("queueErrorLimit", function()
		it("should report errors correctly when the total error limit is reached", function()
			local expectedErrorsReported = {
				["test"] = {
					data = 2.33,
					count = 3,
				},
				["test2"] = {
					data = 123,
					count = 2,
				},
				["test3"] = {
					data = "something",
					count = 1,
				},
			}

			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueErrorLimit = 6,
			})

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			expect(mock).toHaveBeenCalledTimes(3)
			expect(errorsReported).toEqual(expectedErrorsReported)
		end)

		it("should not report errors before the total error limit is reached", function()
			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueErrorLimit = 6,
			})

			for index = 1, 5 do
				local error = errorsToAdd[index]
				errorQueue:addError(error.key, error.value)
			end

			expect(mock).never.toHaveBeenCalled()
			expect(errorsReported).toEqual({})
		end)
	end)

	describe("queueKeyLimit", function()
		it("should report errors correctly when the total key limit is reached", function()
			local expectedErrorsReported = {
				["test"] = {
					data = 2.33,
					count = 3,
				},
				["test2"] = {
					data = 123,
					count = 2,
				},
				["test3"] = {
					data = "something",
					count = 1,
				},
			}

			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueKeyLimit = 3,
				queueErrorLimit = 100,
			})

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			expect(mock).toHaveBeenCalledTimes(3)
			expect(errorsReported).toEqual(expectedErrorsReported)
		end)

		it("should not report errors before the total key limit is reached", function()
			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueKeyLimit = 4,
				queueErrorLimit = 100,
			})

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			expect(mock).never.toHaveBeenCalled()
			expect(errorsReported).toEqual({})
		end)
	end)

	describe("queueTimeLimit", function()
		it("should report errors correctly when the total time limit is reached", function()
			local expectedErrorsReported = {
				["test"] = {
					data = 2.33,
					count = 3,
				},
				["test2"] = {
					data = 123,
					count = 2,
				},
				["test3"] = {
					data = "something",
					count = 1,
				},
			}

			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueTimeLimit = 0.5,
				queueErrorLimit = 100,
				queueKeyLimit = 100,
			})

			errorQueue:startTimer()

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			errorQueue:_onRenderStep(0.5)

			expect(mock).toHaveBeenCalledTimes(3)
			expect(errorsReported).toEqual(expectedErrorsReported)

			errorQueue:stopTimer()
		end)

		it("should not report errors before the total time limit is reached", function()
			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueTimeLimit = 2,
				queueErrorLimit = 100,
				queueKeyLimit = 100,
			})

			errorQueue:startTimer()

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			errorQueue:_onRenderStep(1)

			expect(mock).never.toHaveBeenCalled()
			expect(errorsReported).toEqual({})

			errorQueue:stopTimer()
		end)
	end)

	describe("reportAllErrors", function()
		it("should report all errors correctly when called", function()
			local expectedErrorsReported = {
				["test"] = {
					data = 2.33,
					count = 3,
				},
				["test2"] = {
					data = 123,
					count = 2,
				},
				["test3"] = {
					data = "something",
					count = 1,
				},
			}

			local errorsReported = {}
			local mock, mockMethod = jest.fn(
				function(errorKey, errorData, errorCount)
					errorsReported[errorKey] = {
						data = errorData,
						count = errorCount,
					}
				end
			)

			local errorQueue = ErrorQueue.new(mockMethod, {
				queueTimeLimit = 100,
				queueErrorLimit = 100,
				queueKeyLimit = 100,
			})

			errorQueue:startTimer()

			for _, error in ipairs(errorsToAdd) do
				errorQueue:addError(error.key, error.value)
			end

			expect(mock).never.toHaveBeenCalled()

			errorQueue:reportAllErrors()

			expect(mock).toHaveBeenCalledTimes(3)
			expect(errorsReported).toEqual(expectedErrorsReported)

			errorQueue:stopTimer()
		end)
	end)
end
