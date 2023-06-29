local StarterPlayer = game:GetService("StarterPlayer")

local CommandTypes = require(script.Parent.types)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/Command/Emote")

local LegacyEmotes = {
	wave = true,
	point = true,
	dance = true,
	dance1 = true,
	dance2 = true,
	dance3 = true,
	laugh = true,
	cheer = true,
}
local function getDanceBasedOnRigType(character: Model)
	local dance = nil
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		if humanoid.RigType == Enum.HumanoidRigType.R15 then
			dance = "dance"
		elseif humanoid.RigType == Enum.HumanoidRigType.R6 then
			-- For R6 rigs, dance is a random choice between dance1, dance2, dance3
			dance = "dance" .. math.random(1, 3)
		end
	end

	return dance
end

local function handleLegacyEmote(emote: string, character: Model)
	local success, didPlay = pcall(function()
		local Animate = character:FindFirstChild("Animate")
		if Animate then
			local PlayEmote = Animate:FindFirstChild("PlayEmote")
			if PlayEmote and PlayEmote:IsA("BindableFunction") then
				if emote == "dance" then
					emote = getDanceBasedOnRigType(character)
				end
				PlayEmote:Invoke(emote)
				return true
			else
				Logger:debug("PlayEmote BindableFunction does not exist.")
			end
		end

		return false
	end)

	if success and didPlay then
		Logger:debug("Playing legacy emote successfully")
		return
	else
		return {
			key = "InGame.EmotesMenu.ErrorMessageNotSupported",
			metadata = "Roblox.Emote.Error.NotSupported",
		}
	end
end

local function getValidEmoteOrResponse(humanoidDescription: HumanoidDescription, emote: string)
	local slotIndex = tonumber(emote, 10)
	if slotIndex then
		-- Should support emote wheel slots if given a number as argument
		local equippedEmotesList: { { Slot: number, Name: string } } = humanoidDescription:GetEquippedEmotes()
		if equippedEmotesList[slotIndex] then
			return equippedEmotesList[slotIndex]["Name"], nil
		end

		if not (slotIndex >= 1 and slotIndex <= 8) then
			-- Slot indicies can only be from 1 to 8 inclusive
			return nil,
				{
					key = "CoreScripts.TextChat.Emote.Error.DoesNotExist",
					metadata = "Roblox.Emote.Error.DoesNotExist",
				}
		end

		return nil,
			{
				key = "CoreScripts.TextChat.Emote.Error.NotEquipped",
				metadata = "Roblox.Emote.Error.EmoteNotEquipped",
			}
	end

	local enabledEmotes = humanoidDescription:GetEmotes()
	for enabledEmote, _ in pairs(enabledEmotes) do
		if string.lower(enabledEmote) == emote then
			return enabledEmote, nil
		end
	end

	return nil,
		{
			key = "CoreScripts.TextChat.Emote.Error.NotOwnedGeneric",
			metadata = "Roblox.Emote.Error.NotOwnedGeneric",
		}
end

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/emote", "/e" },
	clientRun = function(store, _, rawString)
		local emote
		if string.sub(rawString, 1, 3):lower() == "/e " then
			emote = string.sub(rawString, 4)
		elseif string.sub(rawString, 1, 7):lower() == "/emote " then
			emote = string.sub(rawString, 8)
		end

		if not emote then
			Logger:debug("No emote string given")
			return {
				key = "CoreScripts.TextChat.Emote.Error.DoesNotExist",
				metadata = "Roblox.Emote.Error.DoesNotExist",
			}
		end
		emote = string.lower(emote)

		local character = store:getState().LocalCharacter
		if LegacyEmotes[emote] then
			Logger:trace("Legacy emote found")
			return handleLegacyEmote(emote, character)
		end

		if not StarterPlayer.UserEmotesEnabled then
			Logger:debug("Experience does not have emotes enabled")
			return {
				key = "CoreScripts.TextChat.Emote.Error.NotEnabled",
				metadata = "Roblox.Emote.Error.UserEmotesNotEnabled",
			}
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

		type systemMessageResponse = {
			key: string | { string },
			args: any?,
			metadata: string,
		}

		local validEmote: string?, response: systemMessageResponse? =
			getValidEmoteOrResponse(humanoidDescription, emote)

		if not validEmote then
			Logger:debug("Could not find a valid emote within HumanoidDescription")
			return response
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
