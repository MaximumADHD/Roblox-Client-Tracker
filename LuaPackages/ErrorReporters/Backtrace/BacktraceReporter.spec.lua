return function()
	local BacktraceReporter = require(script.Parent.BacktraceReporter)
	local BacktraceReport = require(script.Parent.BacktraceReport)

	local CorePackages = game:GetService("CorePackages")
	local Cryo = require(CorePackages.Cryo)
	local tutils = require(CorePackages.tutils)

	local requestsSent = 0
	local requestBody = nil

	local mockHttpRequestObj = {}
	function mockHttpRequestObj:Start(onComplete)
		requestsSent = requestsSent + 1
		onComplete(true, {
			StatusCode = 200,
			Body = {
				_rxid = 12345,
			}
		})
	end

	local mockHttpService = {}
	function mockHttpService:RequestInternal(options)
		requestBody = options.Body
		return mockHttpRequestObj
	end
	function mockHttpService:JSONEncode(data)
		return data
	end
	function mockHttpService:JSONDecode(data)
		return data
	end

	local mockErrorMessage = "index nil"
	local mockErrorStack = "Script 'Workspace.Script', Line 3"

	describe(".new", function()
		it("should error if no httpService or token is passed in", function()
			expect(function()
				BacktraceReporter.new({})
			end).to.throw()

			expect(function()
				BacktraceReporter.new({
					httpService = mockHttpService,
					token = nil,
				})
			end).to.throw()

			expect(function()
				local reporter = BacktraceReporter.new({
					httpService = mockHttpService,
					token = "",
				})
				reporter:stop()
			end).to.never.throw()
		end)
	end)

	describe(":sendErrorReport", function()
		it("should send error report through provided httpService", function()
			requestsSent = 0
			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})
			local report = BacktraceReport.new()

			reporter:sendErrorReport(report)

			expect(requestsSent).to.equal(1)

			reporter:sendErrorReport(report)

			expect(requestsSent).to.equal(2)

			reporter:stop()
		end)

		it("should assert if the error report is not valid", function()
			requestsSent = 0
			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})
			local errorReport = {
				error = "random",
			}

			expect(function()
				reporter:sendErrorReport(errorReport)
			end).to.throw()

			expect(requestsSent).to.equal(0)

			reporter:stop()
		end)
	end)

	describe(":reportErrorImmediately", function()
		it("should send error report through provided httpService", function()
			requestsSent = 0

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(2)

			reporter:stop()
		end)

		it("should set details in the report if it's not nil", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack, "SomeDetails")

			expect(requestsSent).to.equal(1)

			expect(requestBody.annotations.stackDetails).to.equal("SomeDetails")

			reporter:stop()
		end)
	end)

	describe(":reportErrorDeferred", function()
		it("should put error to a queue and send later", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				queueOptions = {
					-- The queue should flush when there are 2 or more than 2 errors.
					queueErrorLimit = 2,
				},
			})

			reporter:reportErrorDeferred(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(0)

			reporter:reportErrorDeferred(mockErrorMessage, mockErrorStack)

			-- These 2 errors would be squashed together
			expect(requestsSent).to.equal(1)
			expect(requestBody.attributes.ErrorCount).to.equal(2)

			reporter:stop()
		end)

		it("should set details in the report if it's not nil", function()
			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				queueOptions = {
					-- The queue should flush when there are 2 or more than 2 errors.
					queueErrorLimit = 2,
				},
			})

			requestsSent = 0
			requestBody = nil
			reporter:reportErrorDeferred(mockErrorMessage, mockErrorStack, "SomeDetails")
			reporter:reportErrorDeferred(mockErrorMessage, mockErrorStack, "SomeDetails")

			expect(requestsSent).to.equal(1)

			expect(requestBody.annotations.stackDetails).to.equal("SomeDetails")

			reporter:stop()
		end)
	end)

	describe("arguments.processErrorReportMethod", function()
		it("should modify the error reports if passed in - reportErrorImmediately", function()
			requestsSent = 0
			requestBody = nil

			local processErrorReport = function(report)
				report.uuid = "id"
				report.timestamp = 1
				report:addAttributes({
					["Message"] = "test",
				})
				return report
			end

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				processErrorReportMethod = processErrorReport,
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(requestBody.uuid).to.equal("id")
			expect(requestBody.timestamp).to.equal(1)
			expect(requestBody.attributes["Message"]).to.equal("test")

			reporter:stop()
		end)

		it("should modify the error reports if passed in - reportErrorDeferred", function()
			requestsSent = 0
			requestBody = nil

			local processErrorReport = function(report)
				report.uuid = "id"
				report.timestamp = 1
				report:addAttributes({
					["Message"] = "test",
				})
				return report
			end

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				processErrorReportMethod = processErrorReport,
				queueOptions = {
					-- The queue should flush when there are 1 or more than 1 errors.
					queueErrorLimit = 1,
				},
			})

			reporter:reportErrorDeferred(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(requestBody.uuid).to.equal("id")
			expect(requestBody.timestamp).to.equal(1)
			expect(requestBody.attributes["Message"]).to.equal("test")

			reporter:stop()
		end)
	end)

	describe(":updateSharedAttributes", function()
		it("should put the same attributes to all error reports", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			reporter:updateSharedAttributes({
				["Message"] = "test",
				["Locale"] = "en-us",
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(requestBody.attributes["Message"]).to.equal("test")
			expect(requestBody.attributes["Locale"]).to.equal("en-us")

			requestBody = nil
			reporter:reportErrorImmediately("some other message", mockErrorStack)

			expect(requestsSent).to.equal(2)
			expect(requestBody.attributes["Message"]).to.equal("test")
			expect(requestBody.attributes["Locale"]).to.equal("en-us")

			reporter:stop()
		end)

		it("should merge attributes if called more than once", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			reporter:updateSharedAttributes({
				["Message"] = "test",
				["Locale"] = "en-us",
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(requestBody.attributes["Message"]).to.equal("test")
			expect(requestBody.attributes["Locale"]).to.equal("en-us")

			reporter:updateSharedAttributes({
				["Message"] = Cryo.None,
				["Locale"] = "zh-cn",
				["Theme"] = "light",
			})

			requestBody = nil
			reporter:reportErrorImmediately("some other message", mockErrorStack)

			expect(requestsSent).to.equal(2)
			expect(requestBody.attributes["Message"]).to.equal(nil)
			expect(requestBody.attributes["Locale"]).to.equal("zh-cn")
			expect(requestBody.attributes["Theme"]).to.equal("light")

			reporter:stop()
		end)

		it("should throw if new attributes are ill-formatted", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			expect(function()
				reporter:updateSharedAttributes({
					["Message"] = Cryo.None,
					["Locale"] = "zh-cn",
					["Theme"] = function() end, -- callbacks are not allowed
				})
			end).to.throw()

			reporter:stop()
		end)
	end)

	describe(":updateSharedAnnotations", function()
		it("should put the same annotations to all error reports", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			local annotations = {
				["Message"] = "test",
				["AppInfo"] = {
					["Locale"] = "en-us",
					["Theme"] = "light",
				},
			}
			reporter:updateSharedAnnotations(annotations)

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(tutils.deepEqual(annotations, requestBody.annotations, true)).to.equal(true)

			requestBody = nil
			reporter:reportErrorImmediately("some other message", mockErrorStack)

			expect(requestsSent).to.equal(2)
			expect(tutils.deepEqual(annotations, requestBody.annotations, true)).to.equal(true)

			reporter:stop()
		end)

		it("should merge annotations if called more than once", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			local annotations = {
				["Message"] = "test",
				["AppInfo"] = {
					["Locale"] = "en-us",
					["Theme"] = "light",
				},
				["AppVersion"] = "1.0",
			}
			reporter:updateSharedAnnotations(annotations)

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)
			expect(tutils.deepEqual(annotations, requestBody.annotations, true)).to.equal(true)

			reporter:updateSharedAnnotations({
				["Message"] = Cryo.None,
				["AppInfo"] = {
					["Theme"] = "dark",
				},
			})

			requestBody = nil
			reporter:reportErrorImmediately("some other message", mockErrorStack)

			local expectedAnnotations = {
				["AppInfo"] = {
					["Theme"] = "dark",
				},
				["AppVersion"] = "1.0",
			}
			expect(requestsSent).to.equal(2)
			expect(tutils.deepEqual(expectedAnnotations, requestBody.annotations, true)).to.equal(true)

			reporter:stop()
		end)

		it("should throw if new annotations are ill-formatted", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
			})

			expect(function()
				reporter:updateSharedAnnotations({
					["Message"] = Cryo.None,
					["AppInfo"] = {
						["Locale"] = "en-us",
						["Theme"] = function() end, -- callbacks are not allowed
					},
				})
			end).to.throw()

			reporter:stop()
		end)
	end)

	describe("Logging", function()
		it("should send logs if provided generateLogMethod and error report is successful", function()
			requestsSent = 0
			requestBody = nil

			local logText = "test log text"

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				generateLogMethod = function()
					return logText
				end,
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(2) -- one for error, one for log
			expect(requestBody).to.equal(logText)

			reporter:stop()
		end)

		it("should not send log if generateLogMethod did not return a string", function()
			requestsSent = 0
			requestBody = nil

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				generateLogMethod = function()
					return 123
				end,
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(1)

			reporter:stop()
		end)

		it("should not send more than 1 log in logIntervalInSeconds provided", function()
			requestsSent = 0
			requestBody = nil

			local logText = "test log text"

			local reporter = BacktraceReporter.new({
				httpService = mockHttpService,
				token = "12345",
				generateLogMethod = function()
					return logText
				end,
				logIntervalInSeconds = 2,
			})

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)

			expect(requestsSent).to.equal(2) -- one for error, one for log
			expect(requestBody).to.equal(logText)

			reporter:reportErrorImmediately(mockErrorMessage, mockErrorStack)
			expect(requestsSent).to.equal(3) -- only one more, the error report

			reporter:stop()
		end)
	end)
end