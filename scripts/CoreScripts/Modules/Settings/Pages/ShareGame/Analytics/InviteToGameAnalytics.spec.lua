return function()
	local CorePackages = game:GetService("CorePackages")
	local InviteToGameAnalytics = require(script.Parent.InviteToGameAnalytics)
	local Signal = require(CorePackages.AppTempCommon.Common.Signal)

	local function createMockEventStream()
		local eventStream = {
			onSetRBXEventStream = Signal.new(),
		}

		function eventStream:setRBXEventStream(...)
			self.onSetRBXEventStream:fire(...)
		end

		return eventStream
	end

	local function createMockDiag()
		local diag = {
			onReportCounter = Signal.new(),
		}

		function diag:reportCounter(...)
			self.onReportCounter:fire(...)
		end

		return diag
	end

	describe("new", function()
		it("SHOULD return an object", function()
			local analytics = InviteToGameAnalytics.new()
			expect(analytics).to.be.ok()
		end)
	end)

	describe("withEventStream", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withEventStream()

			expect(analytics).to.be.ok()
		end)
	end)

	describe("withDiag", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withDiag()

			expect(analytics).to.be.ok()
		end)
	end)

	describe("withButtonName", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withEventStream()

			expect(analytics).to.be.ok()
		end)
	end)

	describe("_getEventStream", function()
		it("SHOULD return the event stream when injected", function()
			local eventStreamMock = {}
			local analytics = InviteToGameAnalytics.new():withEventStream(eventStreamMock)

			expect(analytics).to.be.ok()
			expect(analytics:_getEventStream()).to.equal(eventStreamMock)
		end)

		it("SHOULD throw if not provided an EventStream", function()
			local analytics = InviteToGameAnalytics.new()

			expect(analytics).to.be.ok()
			expect(function()
				analytics:_getEventStream()
			end).to.throw()
		end)
	end)

	describe("_getButtonName", function()
		it("SHOULD return the context when injected", function()
			local buttonMock = "testing"
			local analytics = InviteToGameAnalytics.new():withButtonName(buttonMock)

			expect(analytics).to.be.ok()
			expect(analytics:_getButtonName()).to.equal(buttonMock)
		end)

		it("SHOULD throw if not provided a Context", function()
			local analytics = InviteToGameAnalytics.new()

			expect(analytics).to.be.ok()
			expect(function()
				analytics:_getButtonName()
			end).to.throw()
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

			local analytics = InviteToGameAnalytics.new()
				:withButtonName(mockButtonName)
				:withEventStream(mockEventStream)
				:withDiag(createMockDiag())

			analytics:inputShareGameEntryPoint()

			expect(lastEventContext).to.equal(mockButtonName)
			expect(lastEventName).to.equal(InviteToGameAnalytics.EventName.EntryPoint)
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

			local analytics = InviteToGameAnalytics.new()
				:withButtonName(mockButtonName)
				:withEventStream(mockEventStream)
				:withDiag(createMockDiag())

			analytics:onActivatedInviteSent("senderId", "conversationId", {})

			expect(lastEventContext).to.equal(mockButtonName)
			expect(lastEventName).to.equal(InviteToGameAnalytics.EventName.InviteSent)
		end)

		it("SHOULD fire a diag counter", function()
			local mockDiag = createMockDiag()

			local diagSum = 0
			mockDiag.onReportCounter:connect(function()
				diagSum = diagSum + 1
			end)

			local analytics = InviteToGameAnalytics.new()
				:withButtonName(InviteToGameAnalytics.ButtonName.SettingsHub)
				:withEventStream(createMockEventStream())
				:withDiag(mockDiag)

			analytics:onActivatedInviteSent("senderId", "conversationId", {"recipientId"})

			expect(diagSum).to.equal(1)
		end)
	end)
end