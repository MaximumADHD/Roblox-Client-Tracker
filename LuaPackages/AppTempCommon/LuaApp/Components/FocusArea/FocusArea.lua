local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local t = require(CorePackages.Packages.t)
local Roact = require(CorePackages.Roact)
local RoactNavigation = require(CorePackages.RoactNavigation)

local common = require(script.Parent.common)
local FocusHistory = require(script.Parent.FocusHistory)

local FocusArea = Roact.PureComponent:extend("FocusArea")

FocusArea.defaultProps = {
	SelectionBehavior = Enum.SelectionBehavior.Stop,
	subscribeToNavigationEvents = false,
	requestOnMount = true,
}

FocusArea.validateProps = t.strictInterface({
	-- The children to be rendered within the focus area
	[Roact.Children] = t.optional(t.table),

	-- A reference to expose requestFocus and requestBlur
	[Roact.Ref] = t.optional(t.table),

	-- true if the component should subscribe to Roact Navigation events, false otherwise
	subscribeToNavigationEvents = t.optional(t.boolean),

	-- true if the component should request focus on mount
	requestOnMount = t.optional(t.boolean),

	-- Defines selection behavior for different directions. First refers to
	-- direction-specific selection behavior, then defaults to the general selection
	-- behavior. Defaults to Enum.SelectionBehavior.Stop
	SelectionBehavior = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorUp = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorDown = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorLeft = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorRight = t.optional(t.enum(Enum.SelectionBehavior)),
})

function FocusArea:init()
	self.focusAreaRef = Roact.createRef()

	self.state = {
		isFocused = false,
	}
	self.focusedChild = nil

	-- Handle acquiring controller focus
	self.handleFocus = function()
		local focusAreaRef = self.focusAreaRef.current

		if not focusAreaRef then
			return
		end

		local focusResult = self.delegateFocus()

		if not focusResult then
			GuiService.SelectedCoreObject = focusAreaRef
		end

		self:setState({ isFocused = true })
	end

	-- For when you have to place focus somewhere within the focus area
	self.delegateFocus = function()
		local focusAreaRef = self.focusAreaRef.current
		local prevSelection = self.focusedChild

		-- Restore old focus
		if prevSelection then
			if prevSelection:IsDescendantOf(focusAreaRef) then
				GuiService.SelectedCoreObject = prevSelection
				return prevSelection
			end
		end

		-- Use engine to determine best selection
		if focusAreaRef then
			GuiService:Select(focusAreaRef)
			local selectedObject = common.getSelection()
			return selectedObject
		end

		return nil
	end

	-- Handle bluring controller focus
	self.handleBlur = function()
		local currentSelection = common.getSelection()

		-- If child is manually set using GuiService, want to make sure we catch it (even if onSelectionChanged isn't fired)
		if
			currentSelection
			and self.focusedChild ~= currentSelection
			and currentSelection:IsDescendantOf(self.focusAreaRef.current)
		then
			self.focusedChild = currentSelection
		end

		GuiService.SelectedCoreObject = nil
		self:setState({ isFocused = false })
	end

	-- For when the Roact Navigation willBlur event is fired
	self.willBlurHandler = function(event)
		local restoreLast = event.action.type ~= RoactNavigation.StackActions.Push

		-- Don't pop focus area off of history if navigation action is a push
		if restoreLast then
			self:yieldFocus()
		else
			FocusHistory.pauseControllerMode()
		end
	end

	-- For when the RoactNavigation didFocus event is fired
	self.didFocusHandler = function()
		self:requestFocus()
	end

	self.onSelectionChanged = function(currentFocusArea, _amISelected, _prevSelection, newSelection)
		if self.state.isFocused and currentFocusArea then
			-- When the selection changes, start listening to the root of the new child
			if newSelection and (newSelection:IsDescendantOf(currentFocusArea) or newSelection == currentFocusArea) then
				self.focusedChild = newSelection
				self.setupAncestryListener()
			elseif newSelection then
				-- If the new selection is no longer a descendant of the focus area, then yield focus in selection
				-- history without changing the current selection
				self:yieldFocus(true)
			end
		end
	end

	-- Will listen to ancestry of currently selected child so that if it becomes unrooted,
	-- a refocus will be called
	self.setupAncestryListener = function()
		self.disconnectAncestryListener()

		if not self.focusedChild then
			return
		end

		-- If current selection becomes unrooted, recall select on focus area
		self.ancestryListener = self.focusedChild.AncestryChanged:Connect(function(current)
			if not current:IsDescendantOf(CoreGui) and self.state.isFocused then
				self.delegateFocus()
			end
		end)
	end

	self.disconnectAncestryListener = function()
		if self.ancestryListener then
			self.ancestryListener:Disconnect()
			self.ancestryListener = nil
		end
	end
end

function FocusArea:requestFocus()
	FocusHistory.requestFocus(self)
end

function FocusArea:yieldFocus(shouldKeepCurrentFocus)
	FocusHistory.yieldFocus(self, shouldKeepCurrentFocus)
	self.disconnectAncestryListener()
end

function FocusArea:didMount()
	if not self.props.subscribeToNavigationEvents and self.props.requestOnMount then
		self:requestFocus()
	end
end

function FocusArea:willUnmount()
	self:yieldFocus()
end

function FocusArea:render()
	local selectionBehavior = self.props.SelectionBehavior

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,

		SelectionGroup = true,
		SelectionBehaviorUp = self.props.SelectionBehaviorUp or selectionBehavior,
		SelectionBehaviorDown = self.props.SelectionBehaviorDown or selectionBehavior,
		SelectionBehaviorLeft = self.props.SelectionBehaviorLeft or selectionBehavior,
		SelectionBehaviorRight = self.props.SelectionBehaviorRight or selectionBehavior,
		[Roact.Event.SelectionChanged] = self.onSelectionChanged,

		[Roact.Ref] = self.focusAreaRef,
	}, {
		Children = Roact.createFragment(self.props[Roact.Children]),
		FocusAreaEventSubscriber = if self.props.subscribeToNavigationEvents
			then Roact.createElement(RoactNavigation.NavigationEvents, {
				onDidFocus = self.didFocusHandler,
				onWillBlur = self.willBlurHandler,
			})
			else nil,
	})
end

return FocusArea
