--!nonstrict
local module = {}

-- Holds the current history of all initialized focus areas
local history = {}
local historyLength = 0

-- Maps each mounted focus area tag to their current index in the history
local currentIndex = {}

--[[
    Get the ref at the top of history
    @return The reference for the item at the top of the Focus History
]]
--
local getCurrentlyFocused = function()
	-- Nothing in focus area
	if historyLength == 0 or history[historyLength] == nil then
		return nil
	end

	return history[historyLength]
end

--[[
    -- Focuses the Focus Area on the top of history
	@return true if the focus succeeds, false otherwise
]]
--
local function focusCurrent()
	local ref = getCurrentlyFocused()

	if ref then
		ref.handleFocus()
		return true
	end

	return false
end

--[[
    -- Blurs the Focus Area on the top of history
	@return true if the blur succeeds, false otherwise
]]
--
local function blurCurrent()
	local ref = getCurrentlyFocused()

	if ref then
		ref.handleBlur()
		return true
	end

	return false
end

--[[
    Pop the topmost FocusArea off the focus history stack
    @param shouldBlur {boolean} true if the element should store its selection state 
           before popping off the focus history
]]
--
local function pop(shouldBlur)
	if shouldBlur then
		blurCurrent()
	end

	local topTag = table.remove(history, historyLength)
	historyLength = historyLength - 1

	if topTag then
		currentIndex[topTag] = nil
	end
end

--[[
    Push the new focus area onto the focus history
    @param focusAreaTag {number} the randomly generatedTag of the focus area
	@param shouldBlur {boolean} true if the element should store its selection state 
           before popping off the focus history
]]
--
local function push(focusAreaTag, shouldBlur)
	if shouldBlur then
		blurCurrent()
	end

	-- If the most recent item in the history was another focus area, push onto the top
	if historyLength == 0 or history[historyLength] then
		table.insert(history, focusAreaTag)
		historyLength = historyLength + 1
	else
		-- If the most recent item in the history was a nil value, replace the nil value
		history[historyLength] = focusAreaTag
	end

	if focusAreaTag then
		currentIndex[focusAreaTag] = historyLength
	end
end

--[[
    Request focus from the focus history
    @param focusAreaTag {number} the tag the focus area got when registering with focus history
]]
--
module.requestFocus = function(focusAreaTag)
	if history[historyLength] == focusAreaTag then
		return
	end

	-- If focus area is already in history, pop off items,
	-- blurring as you go, until you get to it
	if currentIndex[focusAreaTag] then
		while historyLength > currentIndex[focusAreaTag] do
			pop(true)
		end
	else
		push(focusAreaTag, true)
	end

	focusCurrent()

	return true
end

--[[
	Ask to be removed from the top of the focus history stack
	@param focusAreaTag {number} the tag the focus area got when registering with focus history
]]
--
module.yieldFocus = function(focusAreaTag, keepCurrentFocus)
	if history[historyLength] ~= focusAreaTag then
		return
	end

	-- Pop this element off the focus history
	local shouldBlurCurrentSelection = not keepCurrentFocus
	pop(shouldBlurCurrentSelection)

	-- Don't move focus to a different focus area
	if keepCurrentFocus then
		return
	end

	-- Backtrack through history until you successfully find a
	-- focusable focus area
	local success = false
	while historyLength > 0 and not success do
		success = focusCurrent()

		if not success then
			pop(false)
		end
	end

	return true
end

module.pauseControllerMode = function()
	push(nil, true)
end

--[[
	Resets the history
]]
--
module.reset = function()
	history = {}
	historyLength = 0

	currentIndex = {}
end

return module
