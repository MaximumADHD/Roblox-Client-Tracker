--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local Mock = LuaSocialLibrariesDeps.Mock
local ReportAbuseAnalytics = require(script.Parent.ReportAbuseAnalytics)

return function()
	beforeAll(function(c)
		c.Mock = Mock
		c.menuContext = ReportAbuseAnalytics.MenuContexts.LegacyMenu
		c.analytics = {
			EventStream = Mock.MagicMock.new({ name = "EventStream" }),
			Diag = Mock.MagicMock.new({ name = "Diag" }),
		}
		c.reportAbuseAnalytics = ReportAbuseAnalytics.new(
			c.analytics.EventStream,
			c.analytics.Diag,
			c.menuContext
		)
	end)

	it("SHOULD return a valid object", function(c)
		expect(c.reportAbuseAnalytics).never.toBeNil()
	end)

	describe("ReportAbuseAnalytics", function(c)
		beforeAll(function(c)
			c.predicates = {
				isEventStream = function(x)
					return x == c.analytics.EventStream
				end,

				isDiag = function(x)
					return x == c.analytics.Diag
				end,

				isTestContext = function(x)
					return x == c.menuContext
				end,
			}

			c.Mock.resetMock(c.analytics.EventStream)
		end)

		describe("reportFormSubmitted", function(c)
			beforeAll(function(c)
				c.actionName = ReportAbuseAnalytics.ActionNames.FormSubmitted
				c.timeToComplete = 1
				c.methodOfAbuse = "Voice"

				c.predicates.isCategory = function(x)
					return type(x) == "string"
				end

				c.predicates.isActionName = function(x)
					return x == c.actionName
				end
			end)

			it("SHOULD fire Diag stats with the correct time", function(c)
				local function isTimeToComplete(x)
					return x == c.timeToComplete
				end

				c.reportAbuseAnalytics:reportFormSubmitted(c.timeToComplete, c.methodOfAbuse)

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.Diag.reportStats,
						c.predicates.isDiag,
						c.predicates.isCategory,
						isTimeToComplete
					)
				)

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.Diag.reportCounter,
						c.predicates.isDiag,
						c.predicates.isCategory,
						function(x)
							return x == 1
						end
					)
				)
			end)

			it("SHOULD fire with the correct additional args", function(c)
				local additionalArgs = {
					MyArg = "TestArg",
				}

				c.reportAbuseAnalytics:reportFormSubmitted(c.timeToComplete, c.methodOfAbuse, additionalArgs)

				local function isAdditionalArgs(x)
					return type(x) == "table" and x.timeToComplete == c.timeToComplete and x.methodOfAbuse == c.methodOfAbuse
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)
		end)

		describe("reportFormAbandoned", function(c)
			beforeAll(function(c)
				c.actionName = ReportAbuseAnalytics.ActionNames.FormAbandoned
				c.timeToExit = 1

				c.predicates.isCategory = function(x)
					return type(x) == "string"
				end

				c.predicates.isActionName = function(x)
					return x == c.actionName
				end
			end)

			it("SHOULD fire Diag stats with the correct time", function(c)
				local function isTimeToExit(x)
					return x == c.timeToExit
				end

				c.reportAbuseAnalytics:reportFormAbandoned(c.timeToExit)

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.Diag.reportStats,
						c.predicates.isDiag,
						c.predicates.isCategory,
						isTimeToExit
					)
				)
			end)

			it("SHOULD fire with the correct additional args", function(c)
				local additionalArgs = {
					MyArg = "TestArg",
				}

				c.reportAbuseAnalytics:reportFormAbandoned(c.timeToExit, additionalArgs)

				local function isAdditionalArgs(x)
					return type(x) == "table" and x.timeToExit == c.timeToExit
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)
		end)

		describe("reportAnalyticsFieldChanged", function(c)
			beforeAll(function(c)
				c.actionName = ReportAbuseAnalytics.ActionNames.FieldChanged
				c.predicates.isActionName = function(x)
					return x == c.actionName
				end
			end)

			it("SHOULD fire with the correct additional args", function(c)
				local additionalArgs = {
					MyArg = "TestArg",
				}

				c.reportAbuseAnalytics:reportAnalyticsFieldChanged(additionalArgs)

				local function isAdditionalArgs(x)
					return x == additionalArgs
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)

			it("SHOULD fire with correctly with no additional args", function(c)
				c.reportAbuseAnalytics:reportAnalyticsFieldChanged()

				local function isAdditionalArgs(x)
					return type(x) == "table"
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)
		end)

		describe("reportButtonClick", function(c)
			beforeAll(function(c)
				c.actionName = ReportAbuseAnalytics.ActionNames.ButtonActivated
				c.predicates.isActionName = function(x)
					return x == c.actionName
				end
			end)

			it("SHOULD fire with the correct additional args", function(c)
				local additionalArgs = {
					MyArg = "TestArg",
				}

				c.reportAbuseAnalytics:reportButtonClick(additionalArgs)

				local function isAdditionalArgs(x)
					return x == additionalArgs
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)

			it("SHOULD fire with correctly with no additional args", function(c)
				c.reportAbuseAnalytics:reportButtonClick()

				local function isAdditionalArgs(x)
					return type(x) == "table"
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)
		end)

		describe("reportEventAndIncrement", function(c)
			beforeAll(function(c)
				c.actionName = "TestActionName"
				c.predicates.isActionName = function(x)
					return x == c.actionName
				end

				c.predicates.isCategory = function(x)
					return type(x) == "string"
				end

				c.predicates.didIncrement = function(x)
					return x == 1
				end
			end)

			it("SHOULD increment the Diag counter", function(c)
				c.reportAbuseAnalytics:reportEventAndIncrement(c.actionName)

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.Diag.reportStats,
						c.predicates.isDiag,
						c.predicates.isCategory,
						c.predicates.didIncrement
					)
				)
			end)

			it("SHOULD fire with the correct additional args", function(c)
				local additionalArgs = {
					MyArg = "TestArg",
				}

				c.reportAbuseAnalytics:reportEventAndIncrement(c.actionName, additionalArgs)

				local function isAdditionalArgs(x)
					return x == additionalArgs
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)

			it("SHOULD fire with correctly with no additional args", function(c)
				c.reportAbuseAnalytics:reportEventAndIncrement(c.actionName)

				local function isAdditionalArgs(x)
					return type(x) == "table"
				end

				assert(
					c.Mock.AnyCallMatches.predicates(
						c.analytics.EventStream.sendEventDeferred,
						c.predicates.isEventStream,
						c.predicates.isTestContext,
						c.predicates.isActionName,
						isAdditionalArgs
					)
				)
			end)
		end)
	end)
end
