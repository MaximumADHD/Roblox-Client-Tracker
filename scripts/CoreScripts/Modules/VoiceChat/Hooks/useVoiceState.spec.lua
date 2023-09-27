local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local useVoiceState = require(script.Parent.useVoiceState)
local VoiceStateContext = require(script.Parent.Parent.VoiceStateContext)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local VoiceConstants = require(CorePackages.AppTempCommon.VoiceChat.Constants)
local VOICE_STATE = VoiceConstants.VOICE_STATE
local Players = game:GetService("Players")

-- VoiceChatServiceManager Mock
local joinEvent = Instance.new("BindableEvent")
local leaveEvent = Instance.new("BindableEvent")
local updateEvent = Instance.new("BindableEvent")

local localTalkingChanged = Instance.new("BindableEvent")
local localMuteChanged = Instance.new("BindableEvent")
local participants = {}

local function doPlayerJoin(player)
	participants[tostring(player.UserId)] = {}
	joinEvent:Fire(participants, player.UserId)
end
local function doPlayerLeave(player)
	participants[tostring(player.UserId)] = nil
	leaveEvent:Fire(participants, player.UserId)
end
local function doPlayerVoiceState(player, state)
	participants[tostring(player.UserId)] = state
	updateEvent:Fire(participants)
end

local function itSkipFlakyTest(...) end

local VoiceChatServiceManagerMock = {
	talkingChanged = localTalkingChanged,
	muteChanged = localMuteChanged,
	participantsUpdate = updateEvent,
	participantLeft = leaveEvent,
	participantJoined = joinEvent,
	participants = participants,
	localMuted = false,
	isTalking = false,
}

local function muteLocal(mute)
	VoiceChatServiceManagerMock.localMuted = mute
	localMuteChanged:Fire(mute)
end

local function talkLocal(talking)
	VoiceChatServiceManagerMock.isTalking = talking
	localTalkingChanged:Fire(talking)
end

local function VoiceStateWrapper(props: any)
	props.onVoiceState(useVoiceState(props.player.UserId, props.paused, {
		voiceChatServiceManager = VoiceChatServiceManagerMock,
	}))
end

----------------------------

local localPlayerIdx = 0

return function()
	local function createApp()
		local players = {
			{
				UserId = 121212,
			},
			{
				UserId = 232323,
			},
			{
				UserId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or 1,
			},
		}

		localPlayerIdx = #players

		local voiceEnabledContextMock = {
			voiceEnabled = true,
			voiceState = "Joined",
		}
		local voiceDisabledContextMock = {
			voiceEnabled = false,
			voiceState = "Error",
		}

		local function build(options: any?): any
			local children: any = {}
			for i, player in ipairs(players) do
				children["player" .. player.UserId] = React.createElement(VoiceStateWrapper, {
					player = player,
					paused = options and options.paused or nil,
					onVoiceState = function(voiceState)
						player.voiceState = voiceState
					end,
				})
			end

			return React.createElement(VoiceStateContext.Context.Provider, {
				value = options and options.voiceEnabled and voiceEnabledContextMock or voiceDisabledContextMock,
			}, children)
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		return {
			render = function(options)
				ReactRoblox.act(function()
					root:render(build(options))
				end)
			end,
			unmount = function()
				root:unmount()
			end,
			players = players,
		}
	end

	describe("useVoiceState", function()
		itSkipFlakyTest("state is hidden when voice is disabled", function()
			local app = createApp()
			local players = app.players
			app.render({
				voiceEnabled = false,
			})
			wait() -- need to wait for event bindings

			expect(players[1].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[2].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.HIDDEN)

			ReactRoblox.act(function()
				doPlayerJoin(players[1])
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
				})
			end)
			wait()
			expect(players[1].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[2].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.HIDDEN)

			app.unmount()
		end)

		itSkipFlakyTest("state is reset to hidden on pause and no longer updates", function()
			local app = createApp()
			local players = app.players
			app.render({
				voiceEnabled = true,
			})
			wait() -- need to wait for event bindings

			ReactRoblox.act(function()
				doPlayerJoin(players[1])
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
				})
			end)

			expect(players[1].voiceState).toBe(VOICE_STATE.INACTIVE)
			expect(players[2].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.MUTED)

			app.render({
				voiceEnabled = true,
				paused = true,
			})
			wait()
			expect(players[1].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[2].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.HIDDEN)

			app.unmount()
		end)

		-- TJeff Hampton: This test is flaky under RCC Windows (robloxdev-cli on Windows) on the develop channel.
		-- It can be reenabled once we have stabliized RCC Windows self-checks
		itSkipFlakyTest("updates state based on VoiceChatServiceManager updates", function()
			local app = createApp()
			local players = app.players

			app.render({
				voiceEnabled = true,
			})
			task.wait(0.1) -- need to wait for event bindings

			ReactRoblox.act(function()
				doPlayerJoin(players[1])
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
				})
			end)
			waitForEvents.act()
			expect(players[1].voiceState).toBe(VOICE_STATE.INACTIVE)
			expect(players[2].voiceState).toBe(VOICE_STATE.HIDDEN)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.MUTED)

			ReactRoblox.act(function()
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
					isSignalActive = true,
				})
			end)
			waitForEvents.act()
			-- This expectation is flaky under windows RCC.
			expect(players[1].voiceState).toBe(VOICE_STATE.TALKING)

			ReactRoblox.act(function()
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
					isMuted = true,
				})
			end)
			waitForEvents.act()
			expect(players[1].voiceState).toBe(VOICE_STATE.MUTED)

			ReactRoblox.act(function()
				doPlayerVoiceState(players[1], {
					subscriptionCompleted = true,
					isMutedLocally = true,
				})
			end)
			waitForEvents.act()
			expect(players[1].voiceState).toBe(VOICE_STATE.LOCAL_MUTED)

			ReactRoblox.act(function()
				talkLocal(true)
				waitForEvents()
			end)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.TALKING)

			ReactRoblox.act(function()
				talkLocal(false)
				waitForEvents()
			end)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.INACTIVE)

			ReactRoblox.act(function()
				muteLocal(true)
				waitForEvents()
			end)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.MUTED)

			ReactRoblox.act(function()
				muteLocal(false)
				waitForEvents()
			end)
			expect(players[localPlayerIdx].voiceState).toBe(VOICE_STATE.INACTIVE)

			app.unmount()
		end)
	end)
end
