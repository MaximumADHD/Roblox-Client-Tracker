--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local Mock = LuaSocialLibrariesDeps.Mock
local BlockingAnalytics = require(script.Parent.BlockingAnalytics)

return function()
	beforeAll(function(c)
		c.Mock = Mock

		c.localUserId = "localUserId"
		c.analytics = {
			EventStream = Mock.MagicMock.new({ name = "EventStream" }),
		}
		c.blockingAnalytics = BlockingAnalytics.new(c.localUserId, c.analytics)
	end)

	it("SHOULD return a valid object", function(c)
		expect(BlockingAnalytics).never.toBeNil()
	end)

	describe("GIVEN context and test event", function()
		beforeAll(function(c)
			c.eventContext = "testContext"
			c.actionName = "testEvent"

			c.predicates = {
				isEventStream = function(x)
					return x == c.analytics.EventStream
				end,

				isTarget = function(x)
					return x == "AccountSettingsApi"
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

			describe("WHEN buttonClick is called", function()
				beforeAll(function(c)
					c.Mock.resetMock(c.analytics.EventStream)
					c.blockingAnalytics:action(c.eventContext, c.actionName, c.additionalArgs)
				end)

				it("SHOULD report the event properly", function(c)
					local function isAdditionalArgs(x)
						return type(x) == "table" and x.blockerUserId == c.localUserId
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
					expect(#calls).toBe(1)
				end)
			end)
		end)

		describe("GIVEN additionalArgs as { blockeeId = 123 }", function()
			beforeAll(function(c)
				c.additionalArgs = { blockeeId = 123 }
			end)

			describe("WHEN action is called", function()
				beforeAll(function(c)
					c.Mock.resetMock(c.analytics.EventStream)
					c.blockingAnalytics:action(c.eventContext, c.actionName, c.additionalArgs)
				end)

				it("SHOULD report the event properly", function(c)
					local function isAdditionalArgs(x)
						return type(x) == "table" and x.blockerUserId == c.localUserId and x.blockeeId == 123
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
					expect(#calls).toBe(1)
				end)
			end)
		end)
	end)
end
