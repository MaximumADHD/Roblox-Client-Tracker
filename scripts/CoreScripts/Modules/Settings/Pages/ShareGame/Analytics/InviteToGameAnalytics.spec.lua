return function()
	local CorePackages = game:GetService("CorePackages")
	local InviteToGameAnalytics = require(script.Parent.InviteToGameAnalytics)
	local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local getFFlagShareLinkFixAnalytics = require(RobloxGui.Modules.Settings.Flags.getFFlagShareLinkFixAnalytics)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

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
			jestExpect(analytics).never.toBeNil()
		end)
	end)

	describe("withEventStream", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withEventStream()

			jestExpect(analytics).never.toBeNil()
		end)
	end)

	describe("withDiag", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withDiag()

			jestExpect(analytics).never.toBeNil()
		end)
	end)

	describe("withButtonName", function()
		it("SHOULD return the original object", function()
			local analytics = InviteToGameAnalytics.new():withEventStream()

			jestExpect(analytics).never.toBeNil()
		end)
	end)

	describe("_getEventStream", function()
		it("SHOULD return the event stream when injected", function()
			local eventStreamMock = {}
			local analytics = InviteToGameAnalytics.new():withEventStream(eventStreamMock)

			jestExpect(analytics).never.toBeNil()
			jestExpect(analytics:_getEventStream()).toBe(eventStreamMock)
		end)

		it("SHOULD throw if not provided an EventStream", function()
			local analytics = InviteToGameAnalytics.new()

			jestExpect(analytics).never.toBeNil()
			jestExpect(function()
				analytics:_getEventStream()
			end).toThrow()
		end)
	end)

	describe("_getButtonName", function()
		it("SHOULD return the context when injected", function()
			local buttonMock = "testing"
			local analytics = InviteToGameAnalytics.new():withButtonName(buttonMock)

			jestExpect(analytics).never.toBeNil()
			jestExpect(analytics:_getButtonName()).toBe(buttonMock)
		end)

		it("SHOULD throw if not provided a Context", function()
			local analytics = InviteToGameAnalytics.new()

			jestExpect(analytics).never.toBeNil()
			jestExpect(function()
				analytics:_getButtonName()
			end).toThrow()
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

			jestExpect(lastEventContext).toBe(mockButtonName)
			jestExpect(lastEventName).toBe(InviteToGameAnalytics.EventName.EntryPoint)
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

			jestExpect(lastEventContext).toBe(mockButtonName)
			jestExpect(lastEventName).toBe(InviteToGameAnalytics.EventName.InviteSent)
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

			jestExpect(diagSum).toBe(1)
		end)
	end)

	describe("onLinkGenerated", function()
		it("SHOULD fire `EventName.LinkGenerated` event", function()
			local mockEventStream = createMockEventStream()

			local lastEventContext = nil
			local lastEventName = nil

			mockEventStream.onSetRBXEventStream:connect(function(_, eventName, additionalArgs)
				lastEventContext = "testing123"
				lastEventName = eventName
			end)

			local analytics = InviteToGameAnalytics.new()
				:withEventStream(mockEventStream)
			if getFFlagShareLinkFixAnalytics() then
				jestExpect(function()
					analytics:onLinkGenerated("", "123456")
				end).toThrow()
			else
				analytics:onLinkGenerated("", "123456")

				jestExpect(lastEventContext).toBe("testing123")
				jestExpect(lastEventName).toBe(InviteToGameAnalytics.EventName.LinkGenerated)
			end
		end)
	end)


	describe("linkGenerated", function()
		it("SHOULD fire `EventName.LinkGenerated` event", function()
			local eventStreamMock = {
				setRBXEventStream = jest.fn()
			}

			local analytics = InviteToGameAnalytics.new()
				:withEventStream(eventStreamMock)
				analytics:linkGenerated({ linkId = "123", linkType = "Profile" })

				if getFFlagShareLinkFixAnalytics() then
					jestExpect(eventStreamMock.setRBXEventStream).toHaveBeenCalledWith(eventStreamMock, "shareLinks", InviteToGameAnalytics.EventName.LinkGenerated, {
						linkId = "123",
						linkType = "Profile",
						page = "inGameMenu",
						subpage = "inviteFriendsPage",
					})
				else
					jestExpect(eventStreamMock.setRBXEventStream).never.toHaveBeenCalled()
				end
		end)
	end)

	describe("onShareButtonClick", function()
		it("SHOULD fire `EventName.ShareButtonClick` event", function()
			local mockEventStream = createMockEventStream()

			local lastEventContext = nil
			local lastEventName = nil

			mockEventStream.onSetRBXEventStream:connect(function(_, eventName, additionalArgs)
				lastEventContext = 'testing123'
				lastEventName = eventName
			end)

			local analytics = InviteToGameAnalytics.new()
				:withEventStream(mockEventStream)

			analytics:onShareButtonClick()

			jestExpect(lastEventContext).toBe('testing123')
			jestExpect(lastEventName).toBe(InviteToGameAnalytics.EventName.ShareButtonClick)
		end)
	end)
end
