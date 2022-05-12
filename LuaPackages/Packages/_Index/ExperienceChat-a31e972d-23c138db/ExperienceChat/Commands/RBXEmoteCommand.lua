--!strict
local CommandTypes = require(script.Parent.types)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/Command/Emote")

local LegacyEmotes = {
	wave = true,
	point = true,
	dance = true,
	dance2 = true,
	dance3 = true,
	laugh = true,
	cheer = true,
}

local function handleLegacyEmote(emote: string, character: Model)
	local success, didPlay = pcall(function()
		local Animate = character:FindFirstChild("Animate")
		if Animate then
			local PlayEmote = Animate:FindFirstChild("PlayEmote")
			if PlayEmote and PlayEmote:IsA("BindableFunction") then
				PlayEmote:Invoke(emote)
				return true
			end
		end

		return false
	end)

	if success and didPlay then
		Logger:debug("Playing legacy emote successfully")
		return
	else
		Logger:debug("Could not play legacy emote: {}", tostring(didPlay))
		return {
			key = "InGame.EmotesMenu.ErrorMessageNotSupported",
			metadata = "Roblox.Emote.Error.NotSupported",
		}
	end
end

local function isValidEmote(humanoidDescription: HumanoidDescription, emote: string): string?
	local slotIndex = tonumber(emote, 10)
	if slotIndex then
		-- Should support emote wheel slots if given a number as argument
		local equippedEmotesList: { { Slot: number, Name: string } } = humanoidDescription:GetEquippedEmotes()
		if equippedEmotesList[slotIndex] then
			return equippedEmotesList[slotIndex]["Name"]
		end
	end

	local enabledEmotes = humanoidDescription:GetEmotes()
	for enabledEmote, _ in pairs(enabledEmotes) do
		if string.lower(enabledEmote) == emote then
			return enabledEmote
		end
	end

	return nil
end

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/emote", "/e" },
	clientRun = function(store, _, rawString)
		local emote = string.split(rawString, " ")[2]

		if not emote then
			Logger:debug("No emote string given")
			return {
				key = "InGame.EmotesMenu.ErrorMessageNoMatchingEmote",
				metadata = "Roblox.Emote.Error.NotFound",
			}
		end
		emote = string.lower(emote)

		local character = store:getState().LocalCharacter
		if LegacyEmotes[emote] then
			Logger:trace("Legacy emote found")
			return handleLegacyEmote(emote, character)
		end

		if not character then
			Logger:debug("No character loaded")
			return {
				key = "InGame.EmotesMenu.ErrorMessageTemporarilyUnavailable",
				metadata = "Roblox.Emote.Error.TemporarilyUnavailable",
			}
		end

		local animate = character:FindFirstChild("Animate")
		if not animate then
			Logger:debug("Animate script missing")
			return {
				key = "InGame.EmotesMenu.ErrorMessageNotSupported",
				metadata = "Roblox.Emote.Error.NotSupported",
			}
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid then
			Logger:debug("Humanoid missing")
			return {
				key = "InGame.EmotesMenu.ErrorMessageTemporarilyUnavailable",
				metadata = "Roblox.Emote.Error.TemporarilyUnavailable",
			}
		end
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			Logger:debug("Humanoid.RigType is not R15")
			return {
				key = "InGame.EmotesMenu.ErrorMessageSwitchToR15",
				metadata = "Roblox.Emote.Error.SwitchToR15",
			}
		end

		local humanoidDescription = humanoid:FindFirstChildOfClass("HumanoidDescription")
		if not humanoidDescription then
			Logger:debug("HumanoidDescription missing")
			return {
				key = "InGame.EmotesMenu.ErrorMessageNotSupported",
				metadata = "Roblox.Emote.Error.NotSupported",
			}
		end

		local validEmote: string? = isValidEmote(humanoidDescription, emote)
		if not validEmote then
			Logger:debug("Could not find a valid emote within HumanoidDescription")
			return {
				key = "InGame.EmotesMenu.ErrorMessageNotSupported",
				metadata = "Roblox.Emote.Error.NotSupported",
			}
		end

		local success, didPlay = pcall(function()
			return humanoid:PlayEmote(validEmote)
		end)
		if not (success and didPlay) then
			Logger:debug("Humanoid:PlayEmote encountered an error: {}", didPlay)
			return {
				key = "InGame.EmotesMenu.ErrorMessageAnimationPlaying",
				metadata = "Roblox.Emote.Error.AnimationPlaying",
			}
		end

		Logger:debug("Playing emote: {}", tostring(validEmote))

		return nil
	end,
}

return command
