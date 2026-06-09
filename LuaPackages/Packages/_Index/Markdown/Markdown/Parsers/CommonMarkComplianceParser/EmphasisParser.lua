--!strict
--[[
	EmphasisParser - Implements CommonMark emphasis parsing algorithm
	See https://spec.commonmark.org/0.31.2/#emphasis-and-strong-emphasis
]]
local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)
type Token = Types.Token
type DelimiterInfo = Types.DelimiterInfo
type DelimiterChar = Types.DelimiterChar
type Delimiter = Types.Delimiter
type DelimiterRun = Types.DelimiterRun
type DelimiterToken = Types.DelimiterToken

local Utils = require(script.Parent.Utils)

local module = {}

function module.collectDelimiterRun(tokens: { Token }, delimiterInfo: DelimiterInfo, startIdx: number): DelimiterRun
	local length = delimiterInfo.length
	local i = startIdx + 1

	-- Collect consecutive delimiters of same type
	while i <= #tokens do
		local nextInfo = Utils.getDelimiterInfo(tokens[i].name)
		if nextInfo and nextInfo.char == delimiterInfo.char then
			length = length + nextInfo.length
			i += 1
		else
			break
		end
	end

	-- Determine if can open/close
	local prevChar: string? = nil
	local nextChar: string? = nil

	-- Get prevChar from before the entire delimiter run
	local runStartToken = tokens[startIdx]
	if runStartToken and runStartToken.context then
		prevChar = runStartToken.context.prevChar
	end

	-- Get nextChar from after the entire delimiter run
	local runEndToken = tokens[i - 1]
	if runEndToken and runEndToken.context then
		nextChar = runEndToken.context.nextChar
	end

	return {
		char = delimiterInfo.char,
		prevChar = prevChar,
		nextChar = nextChar,
		length = length,
		startIdx = startIdx,
		endIdx = i - 1,
	}
end

-- Process emphasis according to CommonMark algorithm
function module.processEmphasisRun(tokens: { Token }, startIndex: number, endIndex: number): { Token }
	local processedTokens: { Token } = {}
	local i = startIndex

	-- First pass: collect delimiter runs and other tokens
	local delimiters: { Delimiter } = {}
	local lineBreakTokenIndexes: { number } = {}
	local outputIndex = 1

	while i <= endIndex do
		local token = tokens[i]
		local delimiterInfo = Utils.getDelimiterInfo(token.name)

		if not delimiterInfo then
			-- Regular token, not a delimiter
			processedTokens[outputIndex] = token

			if Utils.causesLineBreak(token) then
				table.insert(lineBreakTokenIndexes, i)
			end

			outputIndex += 1
			i += 1
			continue
		end

		-- Collect consecutive delimiters of the same type
		local delimiterRun = module.collectDelimiterRun(tokens, delimiterInfo, i)

		-- Determine if can open/close
		local canOpen = Utils.canOpenEmphasis(delimiterRun)
		local canClose = Utils.canCloseEmphasis(delimiterRun)

		-- Store delimiter info
		table.insert(delimiters, {
			char = delimiterRun.char,
			runLength = delimiterRun.length,
			origRunLength = delimiterRun.length,
			canOpen = canOpen,
			canClose = canClose,
			startIdx = outputIndex,
			tokenStart = delimiterRun.startIdx,
		})

		-- Add processed token
		processedTokens[outputIndex] = {
			name = "DELIMITER_RUN",
			text = "",
			delimiterIndex = #delimiters,
			offset = tokens[delimiterRun.startIdx].offset,
		} :: DelimiterToken
		outputIndex += 1
		i = delimiterRun.endIdx + 1
	end

	-- Look ahead for any line breaks after our block
	local hasLineBreakAfterBlock = false
	for j = endIndex + 1, #tokens do
		if Utils.causesLineBreak(tokens[j]) then
			hasLineBreakAfterBlock = true
			break
		end
	end

	-- Second pass: process emphasis using delimiter stack algorithm
	local stack: { number } = {}

	for delimIdx, delimiter in delimiters do
		if delimiter.canClose and delimiter.runLength > 0 then
			-- Look for matching opener
			local openerIdx = #stack
			while openerIdx >= 1 do
				local opener = delimiters[stack[openerIdx]]

				if opener.char == "`" and delimiter.char ~= "`" and opener.canOpen then
					-- This closing delimiter is inside an inline code span
					-- Note that opener.canOpen is always true for backticks atm,
					-- but check it instead of assuming it to avoid breakages if that changes in the future
					break
				end

				if not (opener.char == delimiter.char and opener.canOpen and opener.runLength > 0) then
					openerIdx -= 1
					continue
				end

				-- Found potential match
				local canMatch = Utils.canDelimitersMatch(opener, delimiter)
				if not canMatch then
					-- Nevermind, keep searching
					openerIdx -= 1
					continue
				end

				-- Determine how much to use
				local matchLength = math.min(2, opener.runLength, delimiter.runLength)

				-- Create match records
				Utils.addDelimiterMatch(opener, {
					with = delimiter,
					length = matchLength,
					isOpener = true,
				})
				Utils.addDelimiterMatch(delimiter, {
					with = opener,
					length = matchLength,
					isOpener = false,
				})

				-- Update run lengths
				opener.runLength -= matchLength
				delimiter.runLength -= matchLength

				-- Remove intervening closers from stack
				for _ = #stack, openerIdx + 1, -1 do
					table.remove(stack)
				end

				-- If opener is used up, remove it from stack
				if opener.runLength == 0 then
					table.remove(stack, openerIdx)
				end

				-- Allow the same closer to match multiple openers if not used up yet
				-- This enables proper splitting of delimiter runs
				if delimiter.runLength == 0 then
					break
				end

				-- Reset search to look for more matches with remaining delimiters
				openerIdx = #stack
			end
		end

		-- Add to stack if can open
		if delimiter.canOpen and delimiter.runLength > 0 then
			table.insert(stack, delimIdx)
		end
	end

	-- Third pass: convert back to normal tokens
	local outputTokens: { Token } = {}

	for tokenIdx, token in processedTokens do
		if token.name ~= "DELIMITER_RUN" then
			-- Regular token
			table.insert(outputTokens, token)
			continue
		end
		local delimiterToken = token :: DelimiterToken
		local delimiter = delimiters[delimiterToken.delimiterIndex]

		-- Deviation: for Assistant responsiveness, we treat unclosed ` as closed if it goes to EOF
		if
			delimiter.char == "`"
			and delimiter.runLength > 0
			and delimiterToken.delimiterIndex == #delimiters
			and not hasLineBreakAfterBlock
			and tokenIdx < #processedTokens
		then
			local interruptedByLineBreak = false
			for j = #lineBreakTokenIndexes, 1, -1 do
				local lineBreakTokenIndex = lineBreakTokenIndexes[j]
				if lineBreakTokenIndex > delimiter.tokenStart then
					interruptedByLineBreak = true
					break
				elseif lineBreakTokenIndex <= delimiter.tokenStart then
					-- Further iterations will be lower so we can early exit
					break
				end
			end

			if not interruptedByLineBreak then
				table.insert(outputTokens, {
					name = "EMPHASIS_START",
					text = "INLINE_CODE",
					offset = tokens[delimiter.tokenStart].offset,
				})
				continue
			end
		end

		local delimiterMatches = delimiter.matches
		if not delimiterMatches or #delimiterMatches == 0 then
			-- Unmatched delimiter - output as text
			table.insert(outputTokens, {
				name = "TEXT",
				text = string.rep(delimiter.char, delimiter.origRunLength),
				offset = token.offset,
			})
			continue
		end

		-- Process matches
		if delimiterMatches[1].isOpener then
			-- This is an opener - output unmatched portion first
			local totalMatched = 0
			for _, match in delimiterMatches do
				totalMatched += match.length
			end

			local remaining = delimiter.origRunLength - totalMatched
			if remaining > 0 then
				table.insert(outputTokens, {
					name = "TEXT",
					text = string.rep(delimiter.char, remaining),
					offset = token.offset,
				})
			end

			-- Output opening tags
			for _, match in delimiterMatches do
				local length = match.length
				while length > 0 do
					local tagLength = math.min(length, 2)
					local tokenName = Utils.getTokenNameFromCharAndLength(delimiter.char, tagLength)

					table.insert(outputTokens, {
						name = "EMPHASIS_START",
						text = tokenName,
						offset = token.offset,
					})

					length -= tagLength
				end
			end
		else
			-- This is a closer - output closing tags first
			local closingTags = {}
			for _, match in delimiterMatches do
				local length = match.length
				while length > 0 do
					local tagLength = math.min(length, 2)

					table.insert(closingTags, {
						name = "EMPHASIS_END",
						text = "",
						offset = token.offset,
					})

					length -= tagLength
				end
			end

			-- Add in reverse order
			for j = #closingTags, 1, -1 do
				table.insert(outputTokens, closingTags[j])
			end

			-- Output remaining delimiters
			local totalMatched = 0
			for _, match in delimiterMatches do
				totalMatched += match.length
			end

			local remaining = delimiter.origRunLength - totalMatched
			if remaining > 0 then
				table.insert(outputTokens, {
					name = "TEXT",
					text = string.rep(delimiter.char, remaining),
					offset = token.offset,
				})
			end
		end
	end

	return outputTokens
end

return module
