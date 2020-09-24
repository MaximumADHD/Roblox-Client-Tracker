return function()
	local HttpService = game:GetService("HttpService")

	local Framework = script.Parent.Parent
	local MockPlugin = require(Framework.TestHelpers.Instances.MockPlugin)
	local Networking = require(Framework.Http.Networking)
	local Signal = require(Framework.Util.Signal)
	local StudioPluginErrorReporter = require(script.Parent.StudioPluginErrorReporter)

	local DUMMY_STUDIO_VERSION = "1.2.3.4"

	it("should construct properly with only the minimum set of arguments", function()
		local reporter = StudioPluginErrorReporter.new({
			expectedPrefix = "builtin",
			expectedSecurityLevel = 6,
		})
		reporter:stop()
		expect(reporter).to.be.ok()
	end)

	it("should configure its attributes from the appropriate services", function()
		local testingSecurityLevel = 6
		local testPlugin = MockPlugin.new()
		testPlugin.Name = "builtin_Test.rbxm"

		local testError = {
			msg = "This is a test",
			stack = testPlugin.Name .. ".Test.Foo:1: function testError\n" .. testPlugin.Name .. ".Test.Bar:3",
			src = "",
			details = nil,
		}
		local errSignal = Signal.new()
		local numCalls = 0
		local analyticsCalls = 0
		local function verifyUpload(postBody)
			local sourceCode = postBody.sourceCode
			expect(sourceCode["1"]["path"]).to.equal("builtin_Test.rbxm.Test.Foo")
			expect(sourceCode["2"]["path"]).to.equal("builtin_Test.rbxm.Test.Bar")

			local attributes = postBody.attributes
			expect(attributes.StudioVersion).to.equal(DUMMY_STUDIO_VERSION)
			expect(attributes.PluginName).to.equal(testPlugin.Name)
			expect(attributes.ErrorCount).to.equal(1)
			expect(attributes.UserAgent).to.equal("RobloxStudio/WinInet")
			expect(attributes.BaseUrl).to.equal("https://www.roblox.com")
			expect(attributes["error.message"]).to.equal(testError.msg)

			local lang = postBody.lang
			expect(lang).to.equal("lua")

			numCalls = numCalls + 1
		end

		local reporter = StudioPluginErrorReporter.new({
			expectedPrefix = "builtin",
			expectedSecurityLevel = testingSecurityLevel,

			networking = Networking.mock({
				onRequest = function(requestOptions)
					verifyUpload(HttpService:JSONDecode(requestOptions.Body))
					return {
						Body = "{}",
						Success = true,
						StatusMessage = "OK",
						StatusCode = 200,
					}
				end,
			}),
			errorSignal = errSignal,
			services = {
				RunService = {
					GetRobloxVersion = function()
						return DUMMY_STUDIO_VERSION
					end,
				},
				HttpService = {
					GetUserAgent = function()
						return "RobloxStudio/WinInet"
					end,
				},
				ContentProvider = {
					BaseUrl = "https://www.roblox.com",
				},
				AnalyticsService = {
					ReportCounter = function()
						analyticsCalls = analyticsCalls + 1
					end,
				},
			},
		})

		-- fire a test error
		errSignal:Fire(testError.msg, testError.stack, testError.src, testError.details, testingSecurityLevel)

		-- verify that the error looks right
		reporter:stop()
		expect(numCalls).to.equal(1)
		expect(analyticsCalls).to.equal(1)
	end)

	it("should allow you to manually report a one-off error", function()
		local numCalls = 0
		local analyticsCalls = 0

		local reporter = StudioPluginErrorReporter.new({
			expectedPrefix = "builtin",
			expectedSecurityLevel = 6,
			networking = Networking.mock({
				onRequest = function(requestOptions)
					numCalls = numCalls + 1
					return {
						Body = "{}",
						Success = true,
						StatusMessage = "OK",
						StatusCode = 200,
					}
				end,
			}),

			-- this is normally optional and ignored, but it's important that event listeners are
			-- not connected in tests
			services = {
				RunService = {
					GetRobloxVersion = function()
						return DUMMY_STUDIO_VERSION
					end,
				},
				AnalyticsService = {
					ReportCounter = function()
						analyticsCalls = analyticsCalls + 1
					end,
				},
			},
		})

		reporter:report("This is an error", "builtin_test.rbxm")
		reporter:stop()

		expect(numCalls).to.equal(1)
		expect(analyticsCalls).to.equal(1)
	end)

	it("should disregard errors thrown in other plugin contexts", function()
		local numCalls = 0
		local analyticsCalls = 0
		local networkingImpl = Networking.mock({
			onRequest = function(requestOptions)
				numCalls = numCalls + 1
				return {
					Body = "{}",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				}
			end,
		})
		local mockServices = {
			RunService = {
				GetRobloxVersion = function()
					return DUMMY_STUDIO_VERSION
				end,
			},
			AnalyticsService = {
				ReportCounter = function()
					analyticsCalls = analyticsCalls + 1
				end,
			},
		}
		local errorSignal = Signal.new()

		local pluginA = MockPlugin.new()
		pluginA.Name = "builtin_TestA.rbxm"

		local pluginB = MockPlugin.new()
		pluginB.Name = "builtin_TestB.rbxm"

		local reporterA = StudioPluginErrorReporter.new({
			expectedPrefix = "builtin",
			expectedSecurityLevel = 6, -- builtin
			services = mockServices,
			networking = networkingImpl,
			errorSignal = errorSignal,
		})
		local reporterB = StudioPluginErrorReporter.new({
			expectedPrefix = "sabuiltin",
			expectedSecurityLevel = 6, -- builtin
			services = mockServices,
			networking = networkingImpl,
			errorSignal = errorSignal,
		})

		local errMsg = "This is an error"
		local errStack = pluginA.Name .. ".Blah.Foo Line 15 - " .. errMsg
		errorSignal:Fire(errMsg, errStack, "", "", 6)
		reporterA:stop()
		reporterB:stop()
		expect(numCalls).to.equal(1)
		expect(analyticsCalls).to.equal(1)
	end)
end
