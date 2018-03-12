--	// FileName: ExtraDataInitializer.lua
--	// Written by: Xsitsu
--	// Description: Module that sets some basic ExtraData such as name color, and chat color.

local SpecialChatColors = {
	Groups = {
		{
			--- ROBLOX Interns group
			GroupId = 2868472,
			Rank = 100,
			ChatColor = Color3.new(175/255, 221/255, 1),
		},
		{
			--- ROBLOX Admins group
			GroupId = 1200769,
			ChatColor = Color3.new(1, 215/255, 0),
		},
	},
	Players = {
		{
			--- Left as an example
			--  UserId = 2231221,
			--  ChatColor = Color3.new(205/255, 0, 0)
		}
	}
}

local function MakeIsInGroup(groupId, requiredRank)
	assert(type(requiredRank) == "nil" or type(requiredRank) == "number", "requiredRank must be a number or nil")

	return function(player)
		if player and player.UserId then
			local userId = player.UserId

			local inGroup = false
			local success, err = pcall(function() -- Many things can error is the IsInGroup check
				if requiredRank then
					inGroup = player:GetRankInGroup(groupId) > requiredRank
				else
					inGroup = player:IsInGroup(groupId)
				end
			end)
			if not success and err then
				print("Error checking in group: " ..err)
			end

			return inGroup
		end

		return false
	end
end

local function ConstructIsInGroups()
	if SpecialChatColors.Groups then
		for _, group in pairs(SpecialChatColors.Groups) do
			group.IsInGroup = MakeIsInGroup(group.GroupId, group.Rank)
		end
	end
end
ConstructIsInGroups()

local Players = game:GetService("Players")

local function GetSpecialChatColor(speakerName)
	if SpecialChatColors.Players then
		local playerFromSpeaker = Players:FindFirstChild(speakerName)
		if playerFromSpeaker then
			for _, player in pairs(SpecialChatColors.Players) do
				if playerFromSpeaker.UserId == player.UserId then
					return player.ChatColor
				end
			end
		end
	end
	if SpecialChatColors.Groups then
		for _, group in pairs(SpecialChatColors.Groups) do
			if group.IsInGroup(Players:FindFirstChild(speakerName)) then
				return group.ChatColor
			end
		end
	end
end

local function Run(ChatService)
	local NAME_COLORS =
	{
		Color3.new(253/255, 41/255, 67/255), -- BrickColor.new("Bright red").Color,
		Color3.new(1/255, 162/255, 255/255), -- BrickColor.new("Bright blue").Color,
		Color3.new(2/255, 184/255, 87/255), -- BrickColor.new("Earth green").Color,
		BrickColor.new("Bright violet").Color,
		BrickColor.new("Bright orange").Color,
		BrickColor.new("Bright yellow").Color,
		BrickColor.new("Light reddish violet").Color,
		BrickColor.new("Brick yellow").Color,
	}

	local function GetNameValue(pName)
		local value = 0
		for index = 1, #pName do
			local cValue = string.byte(string.sub(pName, index, index))
			local reverseIndex = #pName - index + 1
			if #pName%2 == 1 then
				reverseIndex = reverseIndex - 1
			end
			if reverseIndex%4 >= 2 then
				cValue = -cValue
			end
			value = value + cValue
		end
		return value
	end

	local color_offset = 0
	local function ComputeNameColor(pName)
		return NAME_COLORS[((GetNameValue(pName) + color_offset) % #NAME_COLORS) + 1]
	end

	local function GetNameColor(speaker)
		local player = speaker:GetPlayer()
		if player then
			if player.Team ~= nil then
				return player.TeamColor.Color
			end
		end
		return ComputeNameColor(speaker.Name)
	end

	local function onNewSpeaker(speakerName)
		local speaker = ChatService:GetSpeaker(speakerName)
		if not speaker:GetExtraData("NameColor") then
			speaker:SetExtraData("NameColor", GetNameColor(speaker))
		end
		if not speaker:GetExtraData("ChatColor") then
			local specialChatColor = GetSpecialChatColor(speakerName)
			if specialChatColor then
				speaker:SetExtraData("ChatColor", specialChatColor)
			end
		end
		if not speaker:GetExtraData("Tags") then
			--// Example of how you would set tags
			--[[
			local tags = {
				{
					TagText = "VIP",
					TagColor = Color3.new(1, 215/255, 0)
				},
				{
					TagText = "Alpha Tester",
					TagColor = Color3.new(205/255, 0, 0)
				}
			}
			speaker:SetExtraData("Tags", tags)
			]]
			speaker:SetExtraData("Tags", {})
		end
	end

	ChatService.SpeakerAdded:connect(onNewSpeaker)

	for _, speakerName in pairs(ChatService:GetSpeakerList()) do
		onNewSpeaker(speakerName)
	end

	local PlayerChangedConnections = {}
	Players.PlayerAdded:connect(function(player)
		local changedConn = player.Changed:connect(function(property)
			local speaker = ChatService:GetSpeaker(player.Name)
			if speaker then
				if property == "TeamColor" or property == "Neutral" or property == "Team" then
					speaker:SetExtraData("NameColor", GetNameColor(speaker))
				end
			end
		end)
		PlayerChangedConnections[player] = changedConn
	end)

	Players.PlayerRemoving:connect(function(player)
		local changedConn = PlayerChangedConnections[player]
		if changedConn then
			changedConn:Disconnect()
		end
		PlayerChangedConnections[player] = nil
	end)
end

return Run
