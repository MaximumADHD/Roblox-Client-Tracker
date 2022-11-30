local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Mock = dependencies.Mock
local tutils = dependencies.tutils

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local SocialTabAnalytics = require(script.Parent.SocialTabAnalytics)

local localUserId = "localUserId"
local analytics = {
	EventStream = Mock.MagicMock.new({ name = "EventStream" }),
	Diag = Mock.MagicMock.new({ name = "Diag" }),
}
local mySocialTabAnalytics = SocialTabAnalytics.new(analytics, localUserId)

local diagCounter = "SocialTabUserLoadedPage"

it("SHOULD return a valid object", function()
	expect(mySocialTabAnalytics).toEqual(expect.any("table"))
end)

describe("WITH FStringSocialTabUserLoadedPageCounter set", function()
	local oldFStringSocialTabUserLoadedPageCounter
	beforeAll(function()
		oldFStringSocialTabUserLoadedPageCounter =
			game:SetFastStringForTesting("SocialTabUserLoadedPageCounter", diagCounter)
	end)
	afterAll(function()
		game:SetFastStringForTesting("SocialTabUserLoadedPageCounter", oldFStringSocialTabUserLoadedPageCounter)
	end)

	describe("WHEN pageLoaded is called", function()
		beforeAll(function()
			mySocialTabAnalytics:pageLoaded()
		end)

		it("SHOULD report to the correct diag counter", function()
			local mock = analytics.Diag.reportCounter
			assert(Mock.AnyCallMatches.literals(mock, analytics.Diag, diagCounter, 1))
		end)

		it("SHOULD only fire diag once", function()
			local mock = analytics.Diag.reportCounter
			local calls = Mock.getCalls(mock)
			expect(#calls).toBe(1)
		end)
	end)
end)

describe("GIVEN buttonName as testButton", function()
	local buttonName = "testButton"
	local predicates = {
		isEventStream = function(x)
			return x == analytics.EventStream
		end,

		isSocialTab = function(x)
			return x == "SocialTab"
		end,

		isButtonClick = function(x)
			return x == "buttonClick"
		end,
	}

	describe("GIVEN additionalArgs as nil", function()
		local additionalArgs = nil

		describe("WHEN buttonClick is called", function()
			beforeAll(function()
				Mock.resetMock(analytics.EventStream)
				mySocialTabAnalytics:buttonClick(buttonName, additionalArgs)
			end)

			it("SHOULD report the event properly", function()
				local mock = analytics.EventStream.setRBXEventStream

				local function isAdditionalArgs(x)
					return type(x) == "table"
						and tutils.shallowEqual(x, {
							btn = buttonName,
							uid = localUserId,
						})
				end

				assert(
					Mock.AnyCallMatches.predicates(
						mock,
						predicates.isEventStream,
						predicates.isSocialTab,
						predicates.isButtonClick,
						isAdditionalArgs
					)
				)
			end)

			it("SHOULD only fire eventStream once", function()
				local mock = analytics.EventStream.setRBXEventStream
				local calls = Mock.getCalls(mock)
				expect(#calls).toBe(1)
			end)
		end)
	end)

	describe("GIVEN additionalArgs as { foo = bar }", function()
		local additionalArgs = { foo = "bar" }

		describe("WHEN buttonClick is called", function()
			beforeAll(function()
				Mock.resetMock(analytics.EventStream)
				mySocialTabAnalytics:buttonClick(buttonName, additionalArgs)
			end)

			it("SHOULD report the event properly", function()
				local mock = analytics.EventStream.setRBXEventStream

				local function isAdditionalArgs(x)
					return type(x) == "table"
						and tutils.shallowEqual(x, {
							btn = buttonName,
							uid = localUserId,
							foo = "bar",
						})
				end

				assert(
					Mock.AnyCallMatches.predicates(
						mock,
						predicates.isEventStream,
						predicates.isSocialTab,
						predicates.isButtonClick,
						isAdditionalArgs
					)
				)
			end)

			it("SHOULD only fire eventStream once", function()
				local mock = analytics.EventStream.setRBXEventStream
				local calls = Mock.getCalls(mock)
				expect(#calls).toBe(1)
			end)
		end)
	end)
end)
