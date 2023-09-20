local CorePackages = game:GetService("CorePackages")

local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local noop = function() end
local stub = function(val)
	return function()
		return val
	end
end

local ParticipantsStateChangedMock = Instance.new("BindableEvent")
local LocalPlayerModeratedMock = Instance.new("BindableEvent")
local StateChangedMock = Instance.new("BindableEvent")
local VoiceChatServiceStub = {
	ParticipantsStateChanged = ParticipantsStateChangedMock.Event,
	StateChanged = StateChangedMock.Event,
	LocalPlayerModerated = LocalPlayerModeratedMock.Event,
	GetVoiceChatApiVersionCB = stub(0),
	GetVoiceChatAvailableCB = noop,
	IsSubscribePausedCB = noop,
	SubscribePauseCB = noop,
	SubscribeBlockCB = noop,
	SubscribeUnblockCB = noop,
	SubscribePauseAllCB = noop,
	groupId = 10000,
	publishPaused = false,
	available = true,
	joinCalled = false,
	policyMapper = nil,
}

local function makeMockUser(userId, isMutedLocally)
	return { userId = tostring(userId), UserId = tostring(userId), isMuted = false, isMutedLocally = not not isMutedLocally }
end

function VoiceChatServiceStub:Disconnect()
	-- Note: This currently doesn't work due to Enum.VoiceChatState not being available in the test runner
	-- StateChangedMock:Fire(Enum.VoiceChatState.Ended)
end

function VoiceChatServiceStub:Leave()
	-- Note: This currently doesn't work due to Enum.VoiceChatState not being available in the test runner
	-- StateChangedMock:Fire(Enum.VoiceChatState.Ended)
end
function VoiceChatServiceStub:GetGroupId()
	return self.groupId
end
function VoiceChatServiceStub:IsPublishPaused()
	return self.publishPaused
end
function VoiceChatServiceStub:JoinByGroupIdToken()
	self.joinCalled = true
	return true
end

function VoiceChatServiceStub:IsSubscribePaused()
	return self.IsSubscribePausedCB()
end
function VoiceChatServiceStub:SubscribePause(userId)
	return self.SubscribePauseCB(userId)
end

function VoiceChatServiceStub:GetVoiceChatApiVersion()
	return self.GetVoiceChatApiVersionCB()
end
function VoiceChatServiceStub:GetVoiceChatAvailable()
	return self.GetVoiceChatAvailableCB()
end
function VoiceChatServiceStub:SubscribeBlock()
	return self.SubscribeBlockCB()
end

function VoiceChatServiceStub:SubscribePauseAll()
	return self.SubscribePauseAllCB()
end
function VoiceChatServiceStub:SubscribeUnblock()
	return self.SubscribeUnblockCB()
end

function VoiceChatServiceStub:kickUsers(users)
	ParticipantsStateChangedMock:Fire(users, {}, {})
	waitForEvents()
end

function VoiceChatServiceStub:ModerateLocalPlayer()
	LocalPlayerModeratedMock:Fire()
	waitForEvents()
end

function VoiceChatServiceStub:addUsers(userStates)
	ParticipantsStateChangedMock:Fire({}, {}, userStates)
	waitForEvents()
end

function VoiceChatServiceStub:setUserStates(userStates)
	ParticipantsStateChangedMock:Fire({}, {}, userStates)
	waitForEvents()
end

function VoiceChatServiceStub:resetMocks()
	ParticipantsStateChangedMock = Instance.new("BindableEvent")
	StateChangedMock = Instance.new("BindableEvent")
	LocalPlayerModeratedMock = Instance.new("BindableEvent")
	self.LocalPlayerModerated = LocalPlayerModeratedMock.Event
	self.ParticipantsStateChanged = ParticipantsStateChangedMock.Event
	self.StateChanged = StateChangedMock.Event

	self.joinCalled = false
end

return {
	ParticipantsStateChangedMock = ParticipantsStateChangedMock,
	StateChangedMock = StateChangedMock,
	VoiceChatServiceStub = VoiceChatServiceStub,
	makeMockUser = makeMockUser,
}
