--[[
	Calculates DamerauLevenshtein distance between 2 strings including:
	- deletion
	- insertion
	- substitution
	- transposition
]]

return function(token1: string, token2: string)
	
	local lenToken1 = utf8.len(token1)
	local lenToken2 = utf8.len(token2)
	local distances = {}
	
	for i = 1, lenToken1 + 1 do
		distances[i] = table.create(lenToken2 + 1, 0)
	end
	
	for i = 1, lenToken1 + 1 do
		distances[i][1] = i - 1
	end
	for j = 1, lenToken2 + 1 do
		distances[1][j] = j - 1
	end
	
	local cost
	local token1Table = {}
	local token2Table = {}

	for first1, last1 in utf8.graphemes(token1) do
		table.insert(token1Table, token1:sub(first1, last1))
	end

	for first2, last2 in utf8.graphemes(token2) do
		table.insert(token2Table, token2:sub(first2, last2))
	end

	for i = 2, #token1Table + 1 do
		for j = 2, #token2Table + 1 do
			if token1Table[i - 1] == token2Table[j - 1] then
				cost = 0
			else
				cost = 1
			end
			
			distances[i][j] = math.min(
				distances[i - 1][j] + 1, -- deletion
				distances[i][j - 1] + 1, -- insertion
				distances[i - 1][j - 1] + cost -- substitution
			)

			if i > 2 and j > 2 and token1Table[i - 1] == token2Table[j - 2] and token1Table[i - 2] == token2Table[j - 1] then
				distances[i][j] = math.min(
					distances[i][j],
					distances[i - 2][j - 2] + 1
				) -- transposition
			end
		end
	end

	return distances[lenToken1 + 1][lenToken2 + 1]
end