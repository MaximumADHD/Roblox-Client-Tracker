local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local Mock = LuaSocialLibrariesDeps.Mock
local ReportAbuseAnalytics = require(script.Parent.ReportAbuseAnalytics)
local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

return function()
	beforeAll(function(c)
		c.Mock = Mock

		c.localUserId = "localUserId"
		c.analytics = {
			EventStream = Mock.MagicMock.new({ name = "EventStream" }),
		}
		c.reportAbuseAnalytics = ReportAbuseAnalytics.new(c.localUserId, c.analytics)
	end)

	it("SHOULD return a valid object", function(c)
		expect(ReportAbuseAnalytics).to.be.ok()
	end)

	describe("GIVEN context and test event", function()
		beforeAll(function(c)
			c.eventContext = Constants.NewAnalyticsReportMenu
			c.actionName = "testEvent"

			c.predicates = {
				isEventStream = function(x)
					return x == c.analytics.EventStream
				end,

				isTarget = function(x)
					return x == Constants.AnalyticsTargetName
				end,

				isTestContext = function(x)
					return x == c.eventContext
				end,

				isActionName = function(x)
					return x == c.actionName
				end,
			}
		end)

		describe("GIVEN additionalArgs as nil", function()
			beforeAll(function(c)
				c.additionalArgs = nil
			end)

			describe("WHEN action is called", function()
				beforeAll(function(c)
					c.Mock.resetMock(c.analytics.EventStream)
					c.reportAbuseAnalytics:action(c.actionName, c.additionalArgs)
				end)

				it("SHOULD report the event properly", function(c)
					local function isAdditionalArgs(x)
						return type(x) == "table"
					end

					assert(
						c.Mock.AnyCallMatches.predicates(
							c.analytics.EventStream.SendEventDeferred,
							c.predicates.isEventStream,
							c.predicates.isTarget,
							c.predicates.isTestContext,
							c.predicates.isActionName,
							isAdditionalArgs
						)
					)
				end)

				it("SHOULD only fire eventStream once", function(c)
					local mock = c.analytics.EventStream.SendEventDeferred
					local calls = c.Mock.getCalls(mock)
					expect(#calls).to.equal(1)
				end)
			end)
		end)

		describe("GIVEN additionalArgs as { muteeUserId = 123 }", function()
			beforeAll(function(c)
				c.additionalArgs = { muteeUserId = 123 }
			end)

			describe("WHEN action is called", function()
				beforeAll(function(c)
					c.Mock.resetMock(c.analytics.EventStream)
					c.reportAbuseAnalytics:action(c.actionName, c.additionalArgs)
				end)

				it("SHOULD report the event properly", function(c)
					local function isAdditionalArgs(x)
						return type(x) == "table" and x.muteeUserId == 123
					end

					assert(
						c.Mock.AnyCallMatches.predicates(
							c.analytics.EventStream.SendEventDeferred,
							c.predicates.isEventStream,
							c.predicates.isTarget,
							c.predicates.isTestContext,
							c.predicates.isActionName,
							isAdditionalArgs
						)
					)
				end)

				it("SHOULD only fire eventStream once", function(c)
					local mock = c.analytics.EventStream.SendEventDeferred
					local calls = c.Mock.getCalls(mock)
					expect(#calls).to.equal(1)
				end)
			end)
		end)
	end)
end
