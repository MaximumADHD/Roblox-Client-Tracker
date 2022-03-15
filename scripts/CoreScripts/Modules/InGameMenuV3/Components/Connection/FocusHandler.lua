--[[
	A component that evaluates focus capture and release conditions on component updates,
	and executes the respective callbacks accordingly.

	It needs to be mounted in a tree under FocusHandlerContextProvider.

	Please Note: This tool is intended for simpler use cases like the In-Game Menu it is used in,
	and it only supports one level of nested FocusHandler components.
	Its use is generally discouraged going forward, as a new game-engine gamepad API is being
	built to provide better APIs for this functionality.
]]

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo

local GetFFlagIGMGamepadSelectionHistory = require(script.Parent.Parent.Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local FocusHandlerContext = require(script.Parent.FocusHandlerUtils.FocusHandlerContext)

local nextFocusHandlerId = 1

local FocusHandler = Roact.PureComponent:extend("FocusHandler")

FocusHandler.validateProps = t.strictInterface({
	-- When this condition becomes true, the component gains focus.
	-- The component blurs when it becomes false.
	-- Make sure this is only true for one component at a time.
	isFocused = t.boolean,
	-- Callback to execute when component gains focus.
	-- It receives 1 argument with a pointer to the instance which was selected the last time this element was blurred.
	didFocus = t.optional(t.callback),
	-- Callback to execute when the element blurs.
	didBlur = t.optional(t.callback),
	-- When this condition becomes true, the component forgets what was its last highlighted element.
	shouldForgetPreviousSelection = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.boolean) or nil,
	-- Following props are passed down via context
	currentHandlerId = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
	candidateHandlerId = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
	previousSelections = GetFFlagIGMGamepadSelectionHistory() and t.table or nil,
	requestFocusForHandlerId = GetFFlagIGMGamepadSelectionHistory() and t.callback or nil,
	forgetLastSelectionForHandlerId = GetFFlagIGMGamepadSelectionHistory() and t.callback or nil,
	blurCurrentFocusHandler = GetFFlagIGMGamepadSelectionHistory() and t.callback or nil,

	[Roact.Children] = t.optional(t.table),
})

if GetFFlagIGMGamepadSelectionHistory() then
	function FocusHandler:init()
		self.id = nextFocusHandlerId
		nextFocusHandlerId = nextFocusHandlerId + 1
	end
end

function FocusHandler:render()
	return Roact.createFragment(self.props[Roact.Children])
end

if GetFFlagIGMGamepadSelectionHistory() then
	function FocusHandler:didMount()
		if self.props.isFocused then
			self.props.requestFocusForHandlerId(self.id)
		end
	end
else
	function FocusHandler:didMount()
		if self.props.isFocused then
			self.props.didFocus()
		end
	end
end

if GetFFlagIGMGamepadSelectionHistory() then
	function FocusHandler:didUpdate(oldProps)
		-- First, address forgetting the previous selection
		-- If we are also capturing focus further down, this influences that step
		local isSupposedToForgetPreviousSelection = self.props.shouldForgetPreviousSelection
			and not oldProps.shouldForgetPreviousSelection

		local previousSelection = self.props.previousSelections[self.id]
		if isSupposedToForgetPreviousSelection
			or (previousSelection ~= nil and not previousSelection:IsDescendantOf(game)) then
			-- Something happened that should cause this focus handler to forget the previous selection
			-- E.g. the dialog was closed, or the menu was closed
			self.props.forgetLastSelectionForHandlerId(self.id)
			-- Do not pass a previous selection to the didFocus callback if we call it further down
			previousSelection = nil
		end

		local isAnotherElementSupposedToBeFocused = self.props.candidateHandlerId ~= self.id
			and self.props.candidateHandlerId ~= nil
		local wasAnotherElementSupposedToBeFocused = oldProps.candidateHandlerId ~= self.id
			and oldProps.candidateHandlerId ~= nil
		local hasThisElementGainedFocus = self.props.currentHandlerId == self.id
			and oldProps.currentHandlerId ~= self.id
		local hasAnotherElementLostFocus = self.props.currentHandlerId == nil and oldProps.currentHandlerId ~= nil
			and oldProps.currentHandlerId ~= self.id

		local shouldFillFocusVoid = hasAnotherElementLostFocus and not isAnotherElementSupposedToBeFocused
			and self.props.isFocused
		local shouldAttemptStealingFocus = not oldProps.isFocused and self.props.isFocused

		local shouldBlur = (oldProps.isFocused and not self.props.isFocused)
			or (isAnotherElementSupposedToBeFocused and not wasAnotherElementSupposedToBeFocused)
		local hasThisElementLostFocus = oldProps.currentHandlerId == self.id
			and self.props.currentHandlerId ~= self.id

		-- Should the element request focus
		-- Or was it granted focus by the context provider, after requesting it?
		if shouldAttemptStealingFocus or shouldFillFocusVoid then
			self.props.requestFocusForHandlerId(self.id)
		elseif hasThisElementGainedFocus then
			if self.props.didFocus then
				self.props.didFocus(previousSelection)
			end
		end

		-- This could plausibly happen in the same update as focus being granted
		-- In which case we want to execute both callbacks
		if shouldBlur and self.props.currentHandlerId == self.id then
			self.props.blurCurrentFocusHandler(self.id, self.props.shouldForgetPreviousSelection)
		end
		-- Context provider registered the loss of focus. Call the callback if any.
		if hasThisElementLostFocus then
			if self.props.didBlur then
				self.props.didBlur()
			end
		end
	end
else
	function FocusHandler:didUpdate(oldProps)
		if self.props.isFocused and not oldProps.isFocused and self.props.didFocus then
			self.props.didFocus()
		elseif not self.props.isFocused and oldProps.isFocused and self.props.didBlur then
			self.props.didBlur()
		end
	end
end

if GetFFlagIGMGamepadSelectionHistory() then
	function FocusHandler:willUnmount()
		if self.props.isFocused then
			self.props.blurCurrentFocusHandler(self.id, true)
			if self.props.didBlur then
				self.props.didBlur()
			end
		else
			self.props.forgetLastSelectionForHandlerId(self.id)
		end
	end
else
	function FocusHandler:willUnmount()
		if self.props.isFocused and self.props.didBlur then
			self.props.didBlur()
		end
	end
end

if GetFFlagIGMGamepadSelectionHistory() then
	local function FocusHandlerWithContext(props)
		return Roact.createElement(FocusHandlerContext.Consumer, {
			render = function(context)
				return Roact.createElement(FocusHandler, Cryo.Dictionary.join(props, {
					currentHandlerId = context.currentHandlerId,
					previousSelections = context.previousSelections,
					requestFocusForHandlerId = context.requestFocusForHandlerId,
					forgetLastSelectionForHandlerId = context.forgetLastSelectionForHandlerId,
					blurCurrentFocusHandler = context.blurCurrentFocusHandler,
					candidateHandlerId = context.candidateHandlerId
				}))
			end
		})
	end
	return FocusHandlerWithContext
else
	return FocusHandler
end
