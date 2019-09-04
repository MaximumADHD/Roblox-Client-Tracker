local NavigationSymbol = require(script.Parent.Parent.Parent.NavigationSymbol)

local DEFAULT_SYMBOL = NavigationSymbol("DEFAULT")
local MODAL_SYMBOL = NavigationSymbol("MODAL")
local OVERLAY_SYMBOL = NavigationSymbol("OVERLAY")

--[[
	StackPresentationStyle is used with stack navigators/views to determine
	the behavior of a given screen when it is pushed/popped from the stack, as
	well as the visual effects/transitions applied while the view is on screen.
]]
return {
	--[[
		The Default presentation style draws stack cards so that they will
		slide in and out from the right side of the screen one at a time. No
		special visual effects are applied, and cards always fill the entire space
		available. Your screen content is rendered over an opaque background color
		by default, but you have the option to draw the cards with a semi- or fully
		transparent background via navigationOptions. Cards always prevent
		tap-through of the content underneath them (in case your navigation
		container is transparent).
	]]
	Default = DEFAULT_SYMBOL,

	--[[
		The Modal presentation style causes screens to animate up/down from the
		bottom of the navigation container and visually stack on top of each
		other. Cards are opaque by default, but you may set navigationOptions
		to make them semi- or fully transparent so that you can see the underlying
		cards. Modal cards always prevent tap-through of any underlying UI, including
		other cards in the same stack.
	]]
	Modal = MODAL_SYMBOL,

	--[[
		The Overlay presentation style causes screens to pop in (later they will fade in)
		on top of the underlying screens. Like modals, they visually stack on top of each
		other. Cards are opaque by default, but you may set navigationOptions to make
		them semi- or fully transparent. Overlay cards always prevent tap-through of any
		underlying UI, including other cards in the same stack.
	]]
	Overlay = OVERLAY_SYMBOL
}
