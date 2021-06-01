--!nocheck
-- We're not checking this file because luau currently doesn't know about Enum.VoiceChatState
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local MIN_VOICE_CHAT_API_VERSION = 3
local VOICE_CHAT_AVAILABILITY = {
	PlaceNotAvailable = -1,
	UserNotAvailable = 0,
	Checking = 1,
	Available = 2,
}
local VoiceChatServiceManager = {
	available = nil,
	version = nil,
	participants = nil,
	participantJoined = Instance.new("BindableEvent"),
	participantLeft = Instance.new("BindableEvent"),
	participantsUpdate = Instance.new("BindableEvent"),
	service = nil
}

local VCSManagerNamespace = '[corescripts VCS Manager] '

function VoiceChatServiceManager:init()
	if not self.service and self:canUseService() then
		local success = pcall(function()
			self.service = game:GetService("VoiceChatService")
		end)
		if not success then
			warn(VCSManagerNamespace, 'EnableVoiceChat flag is enabled but GetService panicked')
		end
		return success
	end
	return false
end

function VoiceChatServiceManager:getService()
	return self.service
end

-- We only use the following two methods for unit testing
function VoiceChatServiceManager:setService(service)
	self.service = service
	return self.service
end

function VoiceChatServiceManager:canUseService()
	if self.available ~= nil or not game:GetEngineFeature("VoiceChatSupported") then
		return false
	end
	local success, result = pcall(function()
		local request = HttpRbxApiService:GetAsyncFullUrl("https://voice.roblox.com/v1/settings",
			Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Players)
		return HttpService:JSONDecode(request)
	end)
	local canUseService = success and result.isVoiceEnabled
	-- Make sure we only call this once
	if not canUseService then
		self.available = VOICE_CHAT_AVAILABILITY.UserNotAvailable
	end
	return canUseService
end

function VoiceChatServiceManager:clear()
	self.available = nil
	self.version = nil
	self.participants = nil
	self.participantJoined:Destroy()
	self.participantsUpdate:Destroy()
	self.participantLeft:Destroy()
	self.participantJoined = Instance.new("BindableEvent")
	self.participantLeft = Instance.new("BindableEvent")
	self.participantsUpdate = Instance.new("BindableEvent")
	self.service = nil
end

function VoiceChatServiceManager:ToggleMutePlayer(userId)
	local requestedMuteStatus = not self.service:IsSubscribePaused(userId)
	self.service:SubscribePause(
		userId,
		requestedMuteStatus
	)
	-- We need to update the state and fire the event locally because toggling local muting doesn't trigger
	-- a participantStateChange for some reason.
	for _, player in pairs(self.participants) do
		if player.userId == userId then
			player.isMutedLocally = requestedMuteStatus
			self.participantsUpdate:Fire(self.participants)
		end
	end
end

function VoiceChatServiceManager:SetupParticipantListeners()
	if not self.participants then
		self.participants = {}
		-- TODO: Init the participants list with the "Initial" state when API is ready
		self.service.ParticipantsStateChanged:Connect(function(participantLeft, participantJoined, updatedStates)
			for _, userId in ipairs(participantLeft) do
				self.participants[tostring(userId)] = nil
				self.participantLeft:Fire(self.participants)
			end
			for _ in ipairs(participantJoined) do
				self.participantJoined:Fire(self.participants)
			end
			for _, state in pairs(updatedStates) do
				local userId = state["userId"]
				self.participants[tostring(userId)] = state
			end
			if #updatedStates > 0 then
				self.participantsUpdate:Fire(self.participants)
			end
		end)

		self.service.StateChanged:Connect(function(oldState, newState)
			if newState == Enum.VoiceChatState.Ended or newState == Enum.VoiceChatState.Failed then
				self.participants = {}
				self.participantsUpdate:Fire(self.participants)
			end
		end)
	end
end

function VoiceChatServiceManager:VoiceChatAvailable()
	local service = self.service
	if self.available == nil then
		if service then
			self.version = service:GetVoiceChatApiVersion()
			if self.version >= MIN_VOICE_CHAT_API_VERSION then
				self.available = service:GetVoiceChatAvailable()
				while self.available == VOICE_CHAT_AVAILABILITY.Checking do
					wait(1)
					self.available = service:GetVoiceChatAvailable()
				end
			end
		end
	end
	-- Ternary is for type coersion, that way we never return nil
	return (service and true or false)
		and self.version >= MIN_VOICE_CHAT_API_VERSION
		and self.available == VOICE_CHAT_AVAILABILITY.Available
end


return VoiceChatServiceManager
