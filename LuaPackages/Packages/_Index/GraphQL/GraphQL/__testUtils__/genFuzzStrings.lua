--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/genFuzzStrings.js

-- /**
--  * Generator that produces all possible combinations of allowed characters.
--  */
return {
	genFuzzStrings = function(options: { allowedChars: { string }, maxLength: number })
		local function getFuzzStrings()
			local allowedChars = options.allowedChars
			local maxLength = options.maxLength
			local numAllowedChars = #allowedChars

			local numCombinations = 0

			for length = 1, maxLength do
				numCombinations += numAllowedChars ^ length
			end

			coroutine.yield("") -- special case for empty string

			for combination = 0, numCombinations - 1 do
				local permutation = ""

				local leftOver = combination
				while leftOver >= 0 do
					local reminder = leftOver % numAllowedChars
					permutation = allowedChars[reminder + 1] .. permutation
					leftOver = (leftOver - reminder) / numAllowedChars - 1
				end
				coroutine.yield(permutation)
			end
		end

		return coroutine.wrap(getFuzzStrings)
	end,
}
