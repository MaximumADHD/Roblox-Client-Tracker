return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local ShareGameAnalytics = require(script.Parent.ShareGameAnalytics)

	local createMockSignal = function()
		local MockSignal = {}
		MockSignal.__index = MockSignal

		function MockSignal.new()
			local self = {
				_callback = nil,
			}
			setmetatable(self, MockSignal)

			return self
		end

		function MockSignal:connect(callback)
			self._callback = callback
			return self
		end

		function MockSignal:disconnect()
			self._callback = nil
		end

		function MockSignal:fire(...)
			if self._callback then
				self._callback(...)
			end
		end

		return MockSignal
	end

	local function createMockEventStream()
		local mockSignal = createMockSignal()

		local eventStream = {
			onSetRBXEventStream = mockSignal.new(),
		}

		function eventStream:setRBXEventStream(...)
			self.onSetRBXEventStream:fire(...)
		end

		return eventStream
	end

	local function createMockDiag()
		local mockSignal = createMockSignal()

		local diag = {
			onReportCounter = mockSignal.new(),
		}

		function diag:reportCounter(...)
			self.onReportCounter:fire(...)
		end

		return diag
	end

	describe("new", function()
		it("SHOULD return an object", function()
			local analytics = ShareGameAnalytics.new({}, {}, "")
			jestExpect(analytics).never.toBeNil()
		end)

		it("SHOULD throw if not provided an EventStream", function()
			jestExpect(function()
				ShareGameAnalytics.new(nil, {}, "")
			end).toThrow()
		end)

		it("SHOULD throw if not provided a Diag", function()
			jestExpect(function()
				ShareGameAnalytics.new({}, nil, "")
			end).toThrow()
		end)

		it("SHOULD throw if not provided a ButtonName", function()
			jestExpect(function()
				ShareGameAnalytics.new({}, {}, nil)
			end).toThrow()
		end)
	end)

	describe("_getEventStream", function()
		it("SHOULD return the event stream when injected", function()
			local eventStreamMock = {}
			local analytics = ShareGameAnalytics.new(eventStreamMock, {}, "")

			jestExpect(analytics).never.toBeNil()
			jestExpect(analytics:_getEventStream()).toBe(eventStreamMock)
		end)
	end)

	describe("_getButtonName", function()
		it("SHOULD return the buttonName when injected", function()
			local buttonMock = "testing"
			local analytics = ShareGameAnalytics.new({}, {}, buttonMock)

			jestExpect(analytics).never.toBeNil()
			jestExpect(analytics:_getButtonName()).toBe(buttonMock)
		end)
	end)

	describe("inputShareGameEntryPoint", function()
		it("SHOULD fire `EventName.EntryPoint` event", function()
			local mockButtonName = "testing123"
			local mockEventStream = createMockEventStream()

			local lastEventContext = nil
			local lastEventName = nil

			mockEventStream.onSetRBXEventStream:connect(function(_, eventName, additionalArgs)
				lastEventContext = additionalArgs.btn
				lastEventName = eventName
			end)

			local analytics = ShareGameAnalytics.new(mockEventStream, createMockDiag(), mockButtonName)

			analytics:inputShareGameEntryPoint()

			jestExpect(lastEventContext).toBe(mockButtonName)
			jestExpect(lastEventName).toBe(ShareGameAnalytics.EventName.EntryPoint)
		end)
	end)

	describe("onActivatedInviteSent", function()
		it("SHOULD fire `EventName.InviteSent` event", function()
			local mockButtonName = "testing123"
			local mockEventStream = createMockEventStream()

			local lastEventContext = nil
			local lastEventName = nil

			mockEventStream.onSetRBXEventStream:connect(function(_, eventName, additionalArgs)
				lastEventContext = additionalArgs.btn
				lastEventName = eventName
			end)

			local analytics = ShareGameAnalytics.new(mockEventStream, createMockDiag(), mockButtonName)

			analytics:onActivatedInviteSent("placeId", "gameId", "senderId", "conversationId", {})

			jestExpect(lastEventContext).toBe(mockButtonName)
			jestExpect(lastEventName).toBe(ShareGameAnalytics.EventName.InviteSent)
		end)

		it("SHOULD fire a diag counter", function()
			local mockDiag = createMockDiag()

			local diagSum = 0
			mockDiag.onReportCounter:connect(function()
				diagSum = diagSum + 1
			end)

			local analytics = ShareGameAnalytics.new(
				createMockEventStream(), mockDiag, ShareGameAnalytics.ButtonName.LuaChatInputBar
			)

			analytics:onActivatedInviteSent("placeId", "gameId", "senderId", "conversationId", {"recipientId"})

			jestExpect(diagSum).toBe(1)
		end)
	end)
end
