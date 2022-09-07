local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local CoreGui = game:GetService("CoreGui")

local EmotesConstants = require(CoreGui.RobloxGui.Modules.EmotesMenu.Constants)
local MaybeSendEmoteFailureAnalyticsFromPlayer =
	require(CoreGui.RobloxGui.Modules.EmotesMenu.Utility.MaybeSendEmoteFailureAnalyticsFromPlayer)

type EquippedEmote = {
	Name: string,
	Slot: number,
}

type Emote = {
	Name: string,
	Slot: number?,
	AssetId: number?,
}

type EmoteAsset = { number }

while Players.LocalPlayer == nil do
	wait()
end

local LocalPlayer = Players.LocalPlayer :: Player

local function reportEmoteUsed(emote: Emote)
	AnalyticsService:SetRBXEventStream("client", "chat", "emoteTriggered", {
		pid = tostring(game.PlaceId),
		uid = tostring(LocalPlayer.UserId),
		btid = Stats:GetBrowserTrackerId(),
		assetID = if emote.AssetId then tostring(emote.AssetId) else nil,
		slotNumber = if emote.Slot then tostring(emote.Slot) else nil,
	})
end

local function reportEmoteFailed(errorType: string, emote: Emote?)
	AnalyticsService:SendEventDeferred("client", "chat", "emoteTriggerFailed", {
		pid = tostring(game.PlaceId),
		uid = tostring(LocalPlayer.UserId),
		btid = Stats:GetBrowserTrackerId(),
		assetID = if emote and emote.AssetId then tostring(emote.AssetId) else nil,
		slotNumber = if emote and emote.Slot then tostring(emote.Slot) else nil,
		errorType = errorType,
		invokedByCoreGui = false,
	})
end

local function getHumanoidFromPlayer(player: Player): Humanoid?
	local character = player.Character
	if character then
		return character:FindFirstChildOfClass("Humanoid")
	end

	return nil
end

local function getHumanoidDescriptionFromPlayer(player: Player): HumanoidDescription?
	local humanoid = getHumanoidFromPlayer(player)
	if humanoid then
		return humanoid:FindFirstChildOfClass("HumanoidDescription")
	end

	return nil
end

local function getEmoteFromMessage(message: string): string?
	if string.sub(message, 1, 3) == "/e " then
		return string.sub(message, 4):lower()
	elseif string.sub(message, 1, 7) == "/emote " then
		return string.sub(message, 8):lower()
	end

	return nil
end

local function getEquippedEmoteFromSlot(humanoidDescription: HumanoidDescription, slot: number): EquippedEmote?
	local list = humanoidDescription:GetEquippedEmotes() :: { EquippedEmote }
	for _, equippedEmote in ipairs(list) do
		if equippedEmote.Slot == slot then
			return equippedEmote
		end
	end

	return nil
end

local function getEmoteFromEquippedEmote(humanoidDescription: HumanoidDescription, equippedEmote: EquippedEmote): Emote?
	local list = humanoidDescription:GetEmotes() :: { string: EmoteAsset }
	for emoteName, emoteAsset in pairs(list) do
		if string.lower(equippedEmote.Name) == string.lower(emoteName) then
			return {
				Name = emoteName,
				Slot = equippedEmote.Slot,
				AssetId = emoteAsset[1],
			}
		end
	end

	return nil
end

local function getEmoteFromName(humanoidDescription: HumanoidDescription, givenName: string): Emote?
	local list = humanoidDescription:GetEmotes() :: { string: EmoteAsset }
	for emoteName, emoteAsset in pairs(list) do
		if string.lower(givenName) == string.lower(emoteName) then
			return {
			Name = emoteName,
			Slot = nil,
			AssetId = emoteAsset[1],
		}
		end
	end

	return nil
end

local function getEmoteUsed(humanoidDescription: HumanoidDescription, emoteFromMessage: string): Emote?
	local slotNumber = tonumber(emoteFromMessage) :: number?
	if slotNumber then
		local equippedEmote = getEquippedEmoteFromSlot(humanoidDescription, slotNumber)
		if equippedEmote then
			return getEmoteFromEquippedEmote(humanoidDescription, equippedEmote)
		end
	else
		return getEmoteFromName(humanoidDescription, emoteFromMessage)
	end

	return nil
end

local LegacyDefaultEmotes = {
	wave = {
		R6 = 128777973,
		R15 = 507770239,
	},
	point = {
		R6 = 128853357,
		R15 = 507770453,
	},
	dance = {
		R6 = 182435998,
		R15 = 507771019,
	},
	dance2 = {
		R6 = 182436842,
		R15 = 507776043,
	},
	dance3 = {
		R6 = 182436935,
		R15 = 507777268,
	},
	laugh = {
		R6 = 129423131,
		R15 = 507770818,
	},
	cheer = {
		R6 = 129423030,
		R15 = 507770677,
	},
}

local function getLegacyEmoteUsed(humanoid: Humanoid, emoteName: string, legacyEmoteAssets: { R6: number, R15: number }): Emote
	local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15
	return {
		Name = emoteName,
		Slot = nil,
		AssetId = if isR15 then legacyEmoteAssets.R15 else legacyEmoteAssets.R6,
	}
end

LocalPlayer.Chatted:Connect(function(message: string, _recipient: Player?)
	local emoteFromMessage = getEmoteFromMessage(message)
	if emoteFromMessage then
		local emoteUsed: Emote?

		local legacyEmoteAssets = LegacyDefaultEmotes[emoteFromMessage]
		if legacyEmoteAssets then
			local humanoid = getHumanoidFromPlayer(LocalPlayer)
			if humanoid then
				emoteUsed = getLegacyEmoteUsed(humanoid, emoteFromMessage, legacyEmoteAssets)
			end
		else
			local humanoidDescription = getHumanoidDescriptionFromPlayer(LocalPlayer)
			if humanoidDescription then
				emoteUsed = getEmoteUsed(humanoidDescription, emoteFromMessage)
			end
		end

		if emoteUsed then
			reportEmoteUsed(emoteUsed)
			MaybeSendEmoteFailureAnalyticsFromPlayer(LocalPlayer, function(errorType)
				reportEmoteFailed(errorType, emoteUsed)
			end)
		else
			reportEmoteFailed(EmotesConstants.ErrorTypes.NoMatchingEmote)
		end
	end
end)
