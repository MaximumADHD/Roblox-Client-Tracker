--[[
	ServerRoCaptchaHandler — Server CoreScript for the rocaptcha challenge place.

	Gated by FString universe allowlist. Reads LaunchData on join, validates the
	player owns a Pending rocaptcha session, and exposes a BindableFunction in
	ServerStorage for the experience's ServerScripts to call once the player has
	solved the captcha. Handles verify → continue → teleport.

	End-to-end flow:
	  1. User joins game → GCS challenges with rocaptcha → rocaptcha-service init
	     stores a Pending session with the challenged user's key
	  2. Client redirects user to captcha place with LaunchData { challengeId, desiredPlaceId }
	  3. On join, this script calls rocaptcha-service validate (session exists,
	     belongs to this user, still Pending). Kick on a definitive failure.
	  4. User solves captcha → experience ServerScript invokes ServerStorage.RoCaptchaVerify
	  5. This script calls rocaptcha-service verify (user check, Pending → Passed)
	  6. This script calls GCS continue (GCS redeems with rocaptcha-service)
	  7. This script teleports the player back to desiredPlaceId, retrying retryable
	     TeleportInitFailed results. If that fails the player stays in the place;
	     invoking RoCaptchaVerify again retries the teleport.
]]

local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ServerStorage = game:GetService("ServerStorage")
local TeleportService = game:GetService("TeleportService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local RoCaptchaUtils = require(RobloxGui.Modules.Server.RoCaptcha.RoCaptchaUtils)
local FStringRoCaptchaUniverseIds = require(RobloxGui.Modules.Common.Flags.FStringRoCaptchaUniverseIds)

--------------------------------------------------------------------------------
-- Gates
--------------------------------------------------------------------------------

-- No LaunchData in Studio, and rocaptcha endpoints are GameServerOnly.
if RunService:IsStudio() then
	return
end

if not RoCaptchaUtils.isUniverseAllowed(FStringRoCaptchaUniverseIds, game.GameId) then
	return
end

--------------------------------------------------------------------------------
-- Constants
--------------------------------------------------------------------------------

local ROCAPTCHA_BASE = Url.APIS_URL .. "rocaptcha-service/v1/challenge/"
local GCS_CONTINUE_URL = Url.APIS_URL .. "challenge/v1/continue"

local MAX_ATTEMPTS = 3
local BASE_BACKOFF_SECONDS = 0.5

local MAX_TELEPORT_INIT_RETRIES = 3
-- A teleport that neither leaves nor fires TeleportInitFailed within this window is
-- treated as dead so the experience can retry it.
local TELEPORT_STALE_SECONDS = 30

-- Results that may succeed on retry; anything else (GameNotFound, Unauthorized,
-- GameEnded, GameFull) won't change for the same place.
local RETRYABLE_TELEPORT_RESULTS = {
	[Enum.TeleportResult.Failure] = true,
	[Enum.TeleportResult.Flooded] = true,
	[Enum.TeleportResult.IsTeleporting] = true,
}

local State = {
	Validating = "Validating",
	Ready = "Ready",
	Verifying = "Verifying",
	Done = "Done",
}

--------------------------------------------------------------------------------
-- HTTP helpers
--------------------------------------------------------------------------------

-- PostAsyncFullUrl throws on transport errors and non-2xx responses.
local function postJson(url, payload)
	local response = HttpRbxApiService:PostAsyncFullUrl(
		url,
		HttpService:JSONEncode(payload),
		Enum.ThrottlingPriority.Default,
		Enum.HttpContentType.ApplicationJson
	)
	local decoded = HttpService:JSONDecode(response)
	if type(decoded) ~= "table" then
		error("unexpected response body")
	end
	return decoded
end

local function withRetry(label, fn)
	local lastErr
	for attempt = 1, MAX_ATTEMPTS do
		local ok, result = pcall(fn)
		if ok then
			return true, result
		end
		lastErr = result
		warn(string.format("[RoCaptcha] %s failed (attempt %d/%d): %s", label, attempt, MAX_ATTEMPTS, tostring(result)))
		if attempt < MAX_ATTEMPTS then
			task.wait(BASE_BACKOFF_SECONDS * 2 ^ (attempt - 1))
		end
	end
	return false, lastErr
end

local function callValidate(challengeId, userId)
	return withRetry("validate", function()
		return postJson(ROCAPTCHA_BASE .. "validate", {
			challengeId = challengeId,
			userId = userId,
			placeId = game.PlaceId,
		})
	end)
end

local function callVerify(challengeId, solvingUserId)
	return withRetry("verify", function()
		return postJson(ROCAPTCHA_BASE .. "verify", {
			challengeId = challengeId,
			solvingUserId = solvingUserId,
			placeId = game.PlaceId,
		})
	end)
end

local function callGcsContinue(challengeId)
	return withRetry("continue", function()
		return postJson(GCS_CONTINUE_URL, {
			challengeId = challengeId,
			challengeType = "rocaptcha",
			challengeMetadata = "",
		})
	end)
end

--------------------------------------------------------------------------------
-- Session state (keyed by Player)
--------------------------------------------------------------------------------

type Session = {
	challengeId: string,
	desiredPlaceId: number,
	state: string,
	teleportInitRetries: number,
	-- Set from a TeleportAsync call until TeleportInitFailed resolves it (retry or give up).
	teleportStartedAt: number?,
	retryPending: boolean,
}

local sessions: { [Player]: Session } = {}

local function createSession(player: Player): Session?
	local joinData = player:GetJoinData()
	local launchData = RoCaptchaUtils.parseLaunchData(joinData and joinData.LaunchData)
	if not launchData then
		return nil
	end

	return {
		challengeId = launchData.challengeId,
		desiredPlaceId = launchData.desiredPlaceId,
		state = State.Validating,
		teleportInitRetries = 0,
		teleportStartedAt = nil,
		retryPending = false,
	}
end

-- No custom message: the client renders any kick text under a localized
-- "kicked by this experience or its moderators" prompt, which is already translated.
local function kick(player: Player, reason: string)
	warn("[RoCaptcha] Kicking player, reason:", reason)
	sessions[player] = nil
	if player.Parent then
		player:Kick()
	end
end

local function onPlayerAdded(player: Player)
	local session = createSession(player)
	if not session then
		kick(player, "invalid_launch_data")
		return
	end
	sessions[player] = session

	local ok, result = callValidate(session.challengeId, player.UserId)

	-- Player may have left while we were validating.
	if sessions[player] ~= session then
		return
	end

	if not ok then
		-- Transient failure: verify re-checks ownership, so let the player continue.
		warn("[RoCaptcha] validate unavailable - deferring to verify")
		session.state = State.Ready
		return
	end

	if result.valid ~= true then
		kick(player, "validate_failed:" .. tostring(result.failureReason))
		return
	end

	session.state = State.Ready
end

Players.PlayerAdded:Connect(onPlayerAdded)
for _, player in Players:GetPlayers() do
	task.spawn(onPlayerAdded, player)
end

Players.PlayerRemoving:Connect(function(player: Player)
	sessions[player] = nil
end)

--------------------------------------------------------------------------------
-- Teleport
--------------------------------------------------------------------------------

-- Single attempt. TeleportAsync can return successfully and still fail later via
-- TeleportInitFailed, so automatic retries live only in that handler.
local function teleportBack(player: Player, session: Session): boolean
	session.teleportStartedAt = os.clock()
	local ok, err = pcall(function()
		TeleportService:TeleportAsync(session.desiredPlaceId, { player })
	end)
	if not ok then
		session.teleportStartedAt = nil
		warn("[RoCaptcha] TeleportAsync failed:", err)
	end
	return ok
end

local function isTeleporting(session: Session): boolean
	local startedAt = session.teleportStartedAt
	return startedAt ~= nil and os.clock() - startedAt < TELEPORT_STALE_SECONDS
end

-- The challenge is already redeemed by the time we teleport, so the player stays in
-- the place and the experience can retry by invoking RoCaptchaVerify again.
local function giveUpTeleport(session: Session, reason: string)
	session.teleportStartedAt = nil
	warn("[RoCaptcha] Teleport back failed, reason:", reason)
end

TeleportService.TeleportInitFailed:Connect(
	function(instance: Instance, result: Enum.TeleportResult, errorMessage: string)
		if not instance:IsA("Player") then
			return
		end
		local player = instance :: Player
		local session = sessions[player]
		-- Only handle failures of our own attempt; teleports started by the experience,
		-- and repeat events while a retry is already scheduled, are ignored.
		if not session or session.state ~= State.Done or not isTeleporting(session) or session.retryPending then
			return
		end

		warn("[RoCaptcha] TeleportInitFailed:", result, errorMessage)

		if not RETRYABLE_TELEPORT_RESULTS[result] then
			giveUpTeleport(session, "teleport_failed:" .. tostring(result))
			return
		end
		if session.teleportInitRetries >= MAX_TELEPORT_INIT_RETRIES then
			giveUpTeleport(session, "teleport_retries_exhausted:" .. tostring(result))
			return
		end

		session.teleportInitRetries += 1
		session.retryPending = true
		task.wait(BASE_BACKOFF_SECONDS * 2 ^ (session.teleportInitRetries - 1))
		session.retryPending = false
		if player.Parent and sessions[player] == session then
			teleportBack(player, session)
		end
	end
)

--------------------------------------------------------------------------------
-- BindableFunction for experience ServerScripts
--------------------------------------------------------------------------------

local RoCaptchaVerify = Instance.new("BindableFunction")
RoCaptchaVerify.Name = "RoCaptchaVerify"

RoCaptchaVerify.OnInvoke = function(arg: any)
	if typeof(arg) ~= "Instance" or not arg:IsA("Player") then
		return { success = false, reason = "invalid_player" }
	end
	local player = arg :: Player

	local session = sessions[player]
	if not session then
		return { success = false, reason = "no_session" }
	end
	if session.state == State.Validating then
		return { success = false, reason = "not_validated" }
	end
	if session.state == State.Done then
		if isTeleporting(session) then
			return { success = false, reason = "teleport_in_progress" }
		end
		if not teleportBack(player, session) then
			return { success = false, reason = "teleport_error" }
		end
		return { success = true }
	end
	if session.state ~= State.Ready then
		return { success = false, reason = "already_in_progress" }
	end

	session.state = State.Verifying
	-- Capture locals: `session` may be cleared by PlayerRemoving mid-flight.
	local challengeId = session.challengeId

	local verifyOk, verifyResult = callVerify(challengeId, player.UserId)
	if not verifyOk then
		session.state = State.Ready
		return { success = false, reason = "verify_error" }
	end
	if verifyResult.verified ~= true then
		kick(player, "verify_failed:" .. tostring(verifyResult.failureReason))
		return { success = false, reason = "verify_failed", detail = verifyResult.failureReason }
	end

	-- Teleport even if continue fails: GCS rejects a repeat continue once the first one
	-- redeemed (so retrying can't succeed), and an unredeemed challenge just means the
	-- player is challenged again on join.
	local continueOk = callGcsContinue(challengeId)
	if not continueOk then
		warn("[RoCaptcha] continue failed - teleporting anyway")
	end

	session.state = State.Done

	if not player.Parent then
		return { success = true }
	end

	if not teleportBack(player, session) then
		return { success = false, reason = "teleport_error" }
	end

	return { success = true }
end

-- Parent last so ServerScripts never observe it without a handler.
RoCaptchaVerify.Parent = ServerStorage
