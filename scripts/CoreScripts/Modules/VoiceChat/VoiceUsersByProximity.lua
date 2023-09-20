--!nonstrict
local VCSM = require(script.Parent.VoiceChatServiceManager)

local function getPlayerPrimaryPart(player: Player)
	return player and player.Character and player.Character.PrimaryPart
end

local function getPlayerDistanceFrom(player: Player, position: Vector3): number
	local primaryPart = getPlayerPrimaryPart(player)
	local distance

	if primaryPart then
		distance = (primaryPart.Position - position).Magnitude
	end

	return distance
end

local function getComparator(originPosition: Vector3)
	return function(playerA: Player, playerB: Player)
		local playerAPart = getPlayerPrimaryPart(playerA)
		local playerBPart = getPlayerPrimaryPart(playerB)

		--no characters, sort alphabetically
		if not playerAPart and not playerBPart then
			return playerA.Name:lower() < playerB.Name:lower()
		elseif playerAPart and not playerBPart then
			return true
		elseif not playerAPart and playerBPart then
			return false
		end

		--local character and both other characters exist, sort by distance
		local characterDistA = getPlayerDistanceFrom(playerA, originPosition)
		local characterDistB = getPlayerDistanceFrom(playerB, originPosition)

		return characterDistA < characterDistB
	end
end

local function getSortedPlayers(
	PlayersService: Players,
	VoiceChatServiceManager: VCSM.VoiceChatServiceManager,
	originPosition: Vector3,
	maxRadius: number | nil,
	interactedWithLocalPlayer: boolean | nil, --only include players who have interacted with this client
	excludedPlayer: Player | nil,
	keepPlayersWithNoCharacter: boolean | nil --players with no character will be sorted last, alphabetically
): { [number]: Player }
	--filter by radius, interactions, exclusion
	local filteredParticipants = {}
	local proximityComparator = getComparator(originPosition)

	for userId, participant in pairs(VoiceChatServiceManager.participants) do
		local participantPlayer = PlayersService:GetPlayerByUserId(userId)

		if
			not participantPlayer
			or excludedPlayer == participantPlayer
			or (not keepPlayersWithNoCharacter and not getPlayerPrimaryPart(participantPlayer))
		then
			continue
		end

		if maxRadius and participantPlayer then
			local distance = getPlayerDistanceFrom(participantPlayer, originPosition)

			if distance > maxRadius then
				continue
			end
		end

		if interactedWithLocalPlayer then
			local interactionData = VoiceChatServiceManager:getRecentUsersInteractionData()

			if not interactionData[tostring(participantPlayer.UserId)] then
				continue
			end
		end

		table.insert(filteredParticipants, participantPlayer)
	end

	table.sort(filteredParticipants, proximityComparator)

	return filteredParticipants
end

return {
	getComparator = getComparator,
	getSortedPlayers = getSortedPlayers,
}
