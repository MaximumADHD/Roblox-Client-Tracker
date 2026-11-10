--[[
	ServerRoCaptchaHandler — Server CoreScript for the rocaptcha challenge place.

	Gated by FString universe allowlist. Reads LaunchData on join, validates the
	player owns a Pending rocaptcha session, and exposes a BindableFunction in
	ServerStorage for the experience's ServerScripts to call once the player has
	solved the captcha. Handles verify → continue → teleport.

	End-to-end flow:
	  1. User joins game → GCS challenges with rocaptcha → rocaptcha-service init
	     stores a Pending session with the challenged user's key
	  2. Client redirects user to captcha place with
	     LaunchData { challengeId, desiredPlaceId, serverInstanceId? }
	  3. On join, this script calls rocaptcha-service validate (session exists,
	     belongs to this user, still Pending). Kick on a definitive failure, or, with
	     FFlagRoCaptchaExperienceKick, reject the player and leave the kick and its
	     message to the experience. The experience can invoke
	     ServerStorage.RoCaptchaValidate to wait for this result before showing the captcha.
	  4. User solves captcha → experience ServerScript invokes ServerStorage.RoCaptchaVerify
	  5. This script calls rocaptcha-service verify (user check, Pending → Passed).
	     A failure is handled like a validate failure in step 3.
	  6. This script calls GCS continue (GCS redeems with rocaptcha-service)
	  7. This script teleports the player back to desiredPlaceId (targeting
	     serverInstanceId when present), retrying retryable TeleportInitFailed results.
	     If the target server is gone or full, it falls back to any server. If that
	     fails the player stays in the place; invoking RoCaptchaVerify again retries
	     the teleport.
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
local Promise = require(CorePackages.Packages.Promise)
local RoCaptchaUtils = require(RobloxGui.Modules.Server.RoCaptcha.RoCaptchaUtils)
local FStringRoCaptchaUniverseIds = require(RobloxGui.Modules.Common.Flags.FStringRoCaptchaUniverseIds)
local FFlagRoCaptchaExperienceValidate = game:DefineFastFlag("RoCaptchaExperienceValidate", false)
-- Requires RoCaptchaValidate: without it the experience can't learn a player was rejected.
local FFlagRoCaptchaExperienceKick = game:DefineFastFlag("RoCaptchaExperienceKick", false)
	and FFlagRoCaptchaExperienceValidate

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

-- Results that may succeed on retry; anything else (GameNotFound, Unauthorized) won't
-- change for the same place. GameEnded and GameFull are only recoverable via
-- SERVER_INSTANCE_FALLBACK_RESULTS.
local RETRYABLE_TELEPORT_RESULTS = {
	[Enum.TeleportResult.Failure] = true,
	[Enum.TeleportResult.Flooded] = true,
	[Enum.TeleportResult.IsTeleporting] = true,
}

-- Results caused by the targeted server instance; retrying without it can succeed.
local SERVER_INSTANCE_FALLBACK_RESULTS = {
	[Enum.TeleportResult.GameEnded] = true,
	[Enum.TeleportResult.GameFull] = true,
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
	-- Cleared once the targeted server is unavailable so later teleports go to any server.
	serverInstanceId: string?,
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
		serverInstanceId = launchData.serverInstanceId,
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

type Rejection = {
	reason: string,
	detail: any,
}

local rejections: { [Player]: Rejection } = {}

-- The experience shows the failure message and kicks. A rejected player can't progress:
-- clearing the session makes RoCaptchaVerify refuse them.
local function reject(player: Player, reason: string, detail: any)
	warn("[RoCaptcha] Rejecting player, reason:", reason, detail)
	sessions[player] = nil
	-- Callers may resume after PlayerRemoving already ran; recording then would leak the entry.
	if not player.Parent then
		return
	end
	rejections[player] = { reason = reason, detail = detail }
end

local function onPlayerAdded(player: Player)
	local session = createSession(player)
	if not session then
		if FFlagRoCaptchaExperienceKick then
			reject(player, "invalid_launch_data", nil)
		else
			kick(player, "invalid_launch_data")
		end
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
		if FFlagRoCaptchaExperienceKick then
			reject(player, "validate_failed", result.failureReason)
		else
			kick(player, "validate_failed:" .. tostring(result.failureReason))
		end
		return
	end

	session.state = State.Ready
end

-- Shared by PlayerAdded and RoCaptchaValidate: the experience's PlayerAdded may run
-- before ours, so whichever asks first starts validation and both observe one result.
-- Resolves with the RoCaptchaValidate result once validation settles.
local validations: { [Player]: any } = {}

local function startValidation(player: Player)
	local validation = validations[player]
	if not validation then
		validation = Promise.new(function(resolve)
			onPlayerAdded(player)
			local session = sessions[player]
			local rejection = rejections[player]
			if session and session.state == State.Ready then
				resolve({ valid = true })
			elseif rejection then
				resolve({ valid = false, reason = rejection.reason, detail = rejection.detail })
			else
				resolve({ valid = false, reason = "no_session" })
			end
		end)
		validations[player] = validation
	end
	return validation
end

local function onPlayerJoined(player: Player)
	if FFlagRoCaptchaExperienceValidate then
		startValidation(player)
	else
		onPlayerAdded(player)
	end
end

Players.PlayerAdded:Connect(onPlayerJoined)
for _, player in Players:GetPlayers() do
	task.spawn(onPlayerJoined, player)
end

Players.PlayerRemoving:Connect(function(player: Player)
	sessions[player] = nil
	validations[player] = nil
	rejections[player] = nil
end)

--------------------------------------------------------------------------------
-- Teleport
--------------------------------------------------------------------------------

-- Single attempt. TeleportAsync can return successfully and still fail later via
-- TeleportInitFailed, so automatic retries live only in that handler.
local function teleportBack(player: Player, session: Session): boolean
	session.teleportStartedAt = os.clock()
	local teleportOptions: TeleportOptions? = nil
	local serverInstanceId = session.serverInstanceId
	if serverInstanceId then
		local options = Instance.new("TeleportOptions")
		options.ServerInstanceId = serverInstanceId
		teleportOptions = options
	end
	local ok, err = pcall(function()
		TeleportService:TeleportAsync(session.desiredPlaceId, { player }, teleportOptions)
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

		local fallBackToAnyServer = session.serverInstanceId ~= nil and SERVER_INSTANCE_FALLBACK_RESULTS[result] == true
		if fallBackToAnyServer then
			warn("[RoCaptcha] Target server unavailable - falling back to any server:", result)
			session.serverInstanceId = nil
		end

		if not RETRYABLE_TELEPORT_RESULTS[result] and not fallBackToAnyServer then
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
		if FFlagRoCaptchaExperienceKick then
			reject(player, "verify_failed", verifyResult.failureReason)
		else
			kick(player, "verify_failed:" .. tostring(verifyResult.failureReason))
		end
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

-- Lets the experience hold the captcha UI until validation settles, so a player who is
-- about to be kicked never sees it.
if FFlagRoCaptchaExperienceValidate then
	local RoCaptchaValidate = Instance.new("BindableFunction")
	RoCaptchaValidate.Name = "RoCaptchaValidate"

	RoCaptchaValidate.OnInvoke = function(arg: any)
		if typeof(arg) ~= "Instance" or not arg:IsA("Player") then
			return { valid = false, reason = "invalid_player" }
		end
		local player = arg :: Player
		if not player.Parent then
			return { valid = false, reason = "no_session" }
		end

		local ok, result = startValidation(player):await()
		if not ok then
			return { valid = false, reason = "no_session" }
		end
		return result
	end

	RoCaptchaValidate.Parent = ServerStorage
end
