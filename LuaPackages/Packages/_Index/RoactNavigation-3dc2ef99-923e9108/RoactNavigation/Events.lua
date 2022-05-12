local NavigationSymbol = require(script.Parent.NavigationSymbol)

local WILL_FOCUS_TOKEN = NavigationSymbol("WILL_FOCUS")
local DID_FOCUS_TOKEN = NavigationSymbol("DID_FOCUS")
local WILL_BLUR_TOKEN = NavigationSymbol("WILL_BLUR")
local DID_BLUR_TOKEN = NavigationSymbol("DID_BLUR")
local ACTION_TOKEN = NavigationSymbol("ACTION")
local REFOCUS_TOKEN = NavigationSymbol("REFOCUS")

--[[
	Events provides shared constants that are used to register
	listeners for different RoactNavigation UI state changes.
]]
return {
	WillFocus = WILL_FOCUS_TOKEN,
	DidFocus = DID_FOCUS_TOKEN,
	WillBlur = WILL_BLUR_TOKEN,
	DidBlur = DID_BLUR_TOKEN,
	Action = ACTION_TOKEN,
	Refocus = REFOCUS_TOKEN,
}
