--!nonstrict
local function defaultLessThan(a, b)
	return a < b
end

local function defaultKeyof(value)
	return value
end

local function keyCmp(left, right)
	local statL = left.stat
	local statR = right.stat

	if statL == statR then
		return left.name < right.name
	elseif statL == nil then
		return false
	elseif statR == nil then
		return true
	end

	if type(statL) ~= type(statR) then
		statL = tostring(statL)
		statR = tostring(statR)
	end

	if statL == statR then
		return left.name < right.name
	end

	return statL > statR
end

-- Join two sorted lists in linear time.
local function joinSorted(left, right, lessThan, keyof)
	lessThan = lessThan or defaultLessThan
	keyof = keyof or defaultKeyof

	local idxL, idxR = 1, 1
	local lenL = #left
	local lenR = #right

	-- Fast path if one of the arrays is empty.
	if lenL == 0 then
		return right
	elseif lenR == 0 then
		return left
	end

	local result = table.create(lenL + lenR, nil)
	local eltL = left[idxL]
	local eltR = right[idxR]
	local keyL = keyof(eltL)
	local keyR = keyof(eltR)
	local resultLen = 0

	while keyL ~= nil and keyR ~= nil do
		if lessThan(keyL, keyR) then
			resultLen += 1
			result[resultLen] = eltL
			idxL += 1
			eltL = left[idxL]
			keyL = eltL and keyof(eltL) or nil
		else
			resultLen += 1
			result[resultLen] = eltR
			idxR += 1
			eltR = right[idxR]
			keyR = eltR and keyof(eltR) or nil
		end
	end

	if keyL ~= nil then
		-- There's no more elements in the right array, so bulk copy everything
		-- remaining in the left array.
		table.move(left, idxL, lenL, resultLen + 1, result)
	elseif keyR ~= nil then
		table.move(right, idxR, lenR, resultLen + 1, result)
	end

	return result
end

local function getDerivedStateFromProps(props, oldState)
	oldState = oldState or {}

	if props.playerKeys.keys == oldState.playerKeys then
		-- Nothing has changed, early out.
		return oldState
	end

	local oldPlayers = oldState.sortedPlayers or {}

	local keys = props.playerKeys.keys
	-- Create the table with a hint the length will be the same as last time.
	local playersToKeep = table.create(#oldPlayers, nil)
	local playersToInsert = table.create(5, nil)
	local keepLen = 0
	local insertLen = 0

	-- Re-add players to the list, but only if they haven't left and their stats
	-- have not changed. This should ensure playersToKeep is sorted.
	local oldKeys = oldState.playerKeys or {}
	for _, player in pairs(oldPlayers) do
		local key = keys[player]
		-- If key is nil then the player left.
		if key then
			if key ~= oldKeys[player] then
				-- Player's stats changed, redo sorting.
				insertLen += 1
				playersToInsert[insertLen] = player
			else
				keepLen += 1
				playersToKeep[keepLen] = player
			end
		end
	end

	-- Add newly joined players to playersToInsert
	for player in pairs(keys) do
		if not oldKeys[player] then
			insertLen += 1
			playersToInsert[insertLen] = player
		end
	end

	local function keyof(player)
		return keys[player]
	end

	table.sort(playersToInsert, function(a, b)
		return keyCmp(keys[a], keys[b])
	end)

	local sortedPlayers = joinSorted(playersToKeep, playersToInsert, keyCmp, keyof)

	return {
		sortedPlayers = sortedPlayers,
		playerKeys = keys,
	}
end

return {
	keyCmp = keyCmp,
	joinSorted = joinSorted,
	getDerivedStateFromProps = getDerivedStateFromProps,
}
