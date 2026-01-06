local Utils = script:FindFirstAncestor("Utils")
local Root = Utils.Parent

local TextSplitByEnum = require(Root.Enums.TextSplitBy)
type TextSplitBy = TextSplitByEnum.TextSplitBy

local whitespacePattern = "%s"

local function isWhitespace(symbol: string): boolean
	return symbol:match(whitespacePattern) ~= nil
end

-- Returns index of the last byte of a codepointIndex-th codepoint
local function codepointEnd(str: string, codepointIndex: number): number
	local nextOffset = utf8.offset(str, codepointIndex + 1)

	return if nextOffset ~= nil then nextOffset - 1 else #str
end

local UP = 1
local DOWN = -1

-- codepointsNumber is used as a silly optimization to avoid calculating utf8.len twice
type SplitStrategy = {
	new: (text: string, codepointsNumber: number, currentWidth: number, desiredWidth: number) -> SplitStrategy,
	findPossibleBreak: () -> number,
}

local SplitByWord = {}
SplitByWord.__index = SplitByWord

function SplitByWord.new(text: string, codepointsNumber: number, currentWidth: number, desiredWidth: number)
	local instance = setmetatable({}, SplitByWord)
	instance._text = text
	instance._initialGuess = instance:_guessInitialBreak(codepointsNumber, currentWidth, desiredWidth)
	instance._index = instance._initialGuess
	-- Unlike split by symbol we must have a direction, here because the first gap may not be the valid break
	-- TODO (AleksandrSl 07/02/2025): Consider making _guessInitialBreak to return a valid break.
	instance:setDirection(UP)
	return instance
end

-- Since we are searching for space symbols that fit one char, we can take guess from usual text length
function SplitByWord:_guessInitialBreak(_codepointsNumber: number, currentWidth: number, desiredWidth: number)
	return math.max(math.floor(#self._text * desiredWidth / currentWidth), 1)
end

function SplitByWord:findPossibleBreak(): number
	local index = self._index
	while (self.direction == UP and index <= #self._text) or (self.direction == DOWN and index > 0) do
		local char = self._text:sub(index, index)
		if isWhitespace(char) then
			-- To skip the same space the next time
			self._index = index + self._step
			-- Always leave the space for the tail text.
			return index - 1
		end
		index += self._step
	end
	return index
end

function SplitByWord:setDirection(direction: number)
	self.direction = direction
	-- Silly optimization to avoid going back through the part of string we already traveled in the wrong direction.
	if direction ~= UP then
		self._index = self._initialGuess
	end
	self._step = if direction == UP then 1 else -1
end

local SplitBySymbol = {}
SplitBySymbol.__index = SplitBySymbol

function SplitBySymbol.new(text: string, codepointsNumber: number, currentWidth: number, desiredWidth: number)
	local instance = setmetatable({}, SplitBySymbol)
	instance._text = text
	instance._initialGuess = instance:_guessInitialBreak(codepointsNumber, currentWidth, desiredWidth)
	instance._codepointIndex = instance._initialGuess
	instance._step = 0
	return instance
end

function SplitBySymbol:_guessInitialBreak(codepointsNumber: number, currentWidth: number, desiredWidth: number)
	return math.max(math.floor(codepointsNumber * desiredWidth / currentWidth), 1)
end

function SplitBySymbol:findPossibleBreak(): number
	self._codepointIndex += self._step
	return codepointEnd(self._text, self._codepointIndex)
end

function SplitBySymbol:setDirection(direction)
	self.direction = direction
	self._step = if direction == UP then 1 else -1
end

local function splitWith(
	strategy: SplitStrategy,
	getWidth: (text: string) -> number,
	text: string,
	length: number,
	currentWidth: number,
	desiredWidth: number
): (string?, number?)
	local instance = strategy.new(text, length, currentWidth, desiredWidth)
	local headText, headEndOffset
	local direction, nextDirection = nil, nil
	local lastHeadEndOffset = nil

	-- 1. Guess the first break and check size of the resulting string
	headEndOffset = instance:findPossibleBreak()
	headText = text:sub(1, headEndOffset)
	local headTextWidth = getWidth(headText)
	direction = if headTextWidth > desiredWidth then DOWN else UP
	-- Required to rollback on step 4
	lastHeadEndOffset = headEndOffset

	instance:setDirection(direction)

	local breakWhile = 0
	-- Naive way to prevent possible infinite cycles. Length of the string should be enough to find a splitting point,
	--  if it is either the string is weird or algorithm is shitty. Anyway it's better to stop.
	-- Usually spliting point is found in less than 10 steps.
	-- TODO (AleksandrSl 12/02/2025): Find a good way to warn us about such errors.
	while breakWhile < length do
		-- 2. Travel in the chosen direction the direction has changed.
		--    If the text was initially longer than needed, stop when it's no longer longer.
		--    Getting exact the same length is almost impossible.
		--    Thus, finish when the direction has changed, not when the actual width is equal to the desired one
		headEndOffset = instance:findPossibleBreak()
		-- Take symbols from the start up to the splitBy index including it
		headText = text:sub(1, headEndOffset)
		headTextWidth = getWidth(headText)
		nextDirection = if headTextWidth > desiredWidth then DOWN else UP

		-- 3. Change of direction means that we crossed the point of ideal break
		if direction ~= nextDirection then
			-- 4. If we were travelling up, to the end of the string, rollback last step
			--    so we always have the resulting text less or equal to the desired width
			if direction == UP then
				headEndOffset = lastHeadEndOffset
				headText = text:sub(1, headEndOffset)
			end
			break
		end
		direction = nextDirection
		lastHeadEndOffset = headEndOffset
		breakWhile += 1
	end
	return headText, headEndOffset
end

--[[
Split the text into two part such that frist part is not wider than the desiredWidth.
All the text is preserved, no spaces or other signes are removed. It's user's task to get of them if needed.
If text fits the width or can't be split, it is returned as is, second return value is nil.
Supports UTF8 and checks that the string is correct. Malformed strings are returned as is. Since splitting it may result in undefined behavior

There are two strategies available
- TextSplitByEnum.Word
- TextSplitByEnum.Symbol

### TextSplitByEnum.Word

Splits by the whitespace symbols (%s regex group). It's guaranteed that the separator goes to the tail.


### TextSplitByEnum.Symbol

Splits text by any symbol trying to keep UTF symbols even those consisting of several codepoints intact.

]]
local function split(
	splitBy: TextSplitBy,
	getWidth: (text: string) -> number,
	text: string,
	desiredWidth: number
): (string, string?)
	local codepointsNumber = utf8.len(text)
	if codepointsNumber == nil then
		warn("Failed to get string length, it is probably malformed or non utf8")
		return text
	end

	local currentWidth = getWidth(text)
	-- To skip a pair of condtions splitWith works only on the strins with width > than desired.
	-- Do not modify this condition alone
	if currentWidth <= desiredWidth then
		return text
	end

	local strategy
	if splitBy == TextSplitByEnum.Word then
		strategy = SplitByWord
	else
		strategy = SplitBySymbol
	end

	local headText, headEndOffset = splitWith(strategy, getWidth, text, codepointsNumber, currentWidth, desiredWidth)

	if headEndOffset == 0 or headEndOffset == #text then
		return text
	end

	local tailText = text:sub(headEndOffset + 1)

	return headText, tailText
end

return split
