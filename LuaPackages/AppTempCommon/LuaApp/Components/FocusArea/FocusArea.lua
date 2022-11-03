local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RoactRodux = require(CorePackages.RoactRodux)
local HttpService = game:GetService("HttpService")
local t = require(CorePackages.Packages.t)
local Roact = require(CorePackages.Roact)
local RoactNavigation = require(CorePackages.RoactNavigation)
local Cryo = require(CorePackages.Cryo)
local LuaApp = script.Parent.Parent.Parent
local SetIsControllerMode = require(LuaApp.Actions.SetIsControllerMode)
local GetFFlagLuaAppAddSignalToFocusArea = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppAddSignalToFocusArea
local FFlagLuaAppRemoveSecondBindButtonsCall = game:DefineFastFlag("LuaAppRemoveSecondBindButtonsCall", false)

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
	[Roact.Ref] = if GetFFlagLuaAppAddSignalToFocusArea() then nil else t.optional(t.table),

	-- A signal to expose requestFocus and requestBlur
	focusSignal = if GetFFlagLuaAppAddSignalToFocusArea() then t.optional(t.table) else nil,

	-- true if the component should subscribe to Roact Navigation events, false otherwise
	subscribeToNavigationEvents = t.optional(t.boolean),

	-- true if the component should request focus on mount
	requestOnMount = t.optional(t.boolean),

	-- true if the FocusArea should display its selected child, false otherwise
	isControllerMode = t.boolean,

	-- communicate to Rodux whether FocusAreas should display their selection
	setIsControllerMode = t.callback,

	-- Defines selection behavior for different directions. First refers to
	-- direction-specific selection behavior, then defaults to the general selection
	-- behavior. Defaults to Enum.SelectionBehavior.Stop
	SelectionBehavior = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorUp = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorDown = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorLeft = t.optional(t.enum(Enum.SelectionBehavior)),
	SelectionBehaviorRight = t.optional(t.enum(Enum.SelectionBehavior)),

	-- Defines controller button bindings for when this focus area has focus
	onButtonA = t.optional(t.callback),
	onButtonB = t.optional(t.callback),
	onButtonX = t.optional(t.callback),
	onButtonY = t.optional(t.callback),
})

function FocusArea:init()
	self.focusAreaRef = Roact.createRef()
	self.focusAreaId = HttpService:GenerateGUID()

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

		if not FFlagLuaAppRemoveSecondBindButtonsCall then
			self.bindButtons()
		end
		self.connectGamepadListener()
		if self.props.isControllerMode then
			self.delegateFocus()
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
			if selectedObject then
				return selectedObject
			end
		end

		GuiService.SelectedCoreObject = focusAreaRef
		return focusAreaRef
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
		self.unbindButtons()
		self.disconnectGamepadListener()
		self.disconnectAncestryListener()
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
			if not current:IsDescendantOf(CoreGui) and self.state.isFocused and self.props.isControllerMode then
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

	self.connectGamepadListener = function()
		if self.gamepadListener then
			return
		end

		self.gamepadListener = UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
			if lastInputType ~= Enum.UserInputType.Focus and self.state.isFocused then
				if common.isGamepad(lastInputType) then
					self.props.setIsControllerMode(true)
					self.delegateFocus()
				else
					self.props.setIsControllerMode(false)
					GuiService.SelectedCoreObject = nil
				end
			end
		end)
	end

	self.disconnectGamepadListener = function()
		if self.gamepadListener then
			self.gamepadListener:Disconnect()
			self.gamepadListener = nil
		end
	end

	self.bindButtons = function()
		common.bindButton(self.focusAreaId, self.props.onButtonA, Enum.KeyCode.ButtonA)
		common.bindButton(self.focusAreaId, self.props.onButtonB, Enum.KeyCode.ButtonB)
		common.bindButton(self.focusAreaId, self.props.onButtonX, Enum.KeyCode.ButtonX)
		common.bindButton(self.focusAreaId, self.props.onButtonY, Enum.KeyCode.ButtonY)
	end

	self.unbindButtons = function()
		common.unbindButton(self.focusAreaId, Enum.KeyCode.ButtonA)
		common.unbindButton(self.focusAreaId, Enum.KeyCode.ButtonB)
		common.unbindButton(self.focusAreaId, Enum.KeyCode.ButtonX)
		common.unbindButton(self.focusAreaId, Enum.KeyCode.ButtonY)
	end

	self.updateButtons = function(prevProps)
		common.updateButton(self.focusAreaId, prevProps.onButtonA, self.props.onButtonA, Enum.KeyCode.ButtonA)
		common.updateButton(self.focusAreaId, prevProps.onButtonB, self.props.onButtonB, Enum.KeyCode.ButtonB)
		common.updateButton(self.focusAreaId, prevProps.onButtonX, self.props.onButtonX, Enum.KeyCode.ButtonX)
		common.updateButton(self.focusAreaId, prevProps.onButtonY, self.props.onButtonY, Enum.KeyCode.ButtonY)
	end

	if GetFFlagLuaAppAddSignalToFocusArea() then
		self.bindSignal = function()
			self.unbindSignal()
			if self.props.focusSignal then
				self.signalConnection = self.props.focusSignal:connect(function(shouldFocus)
					if shouldFocus then
						self:requestFocus()
					else
						self:yieldFocus(false)
					end
				end)
			end
		end

		self.unbindSignal = function()
			if self.signalConnection then
				self.signalConnection:disconnect()
				self.signalConnection = nil
			end
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
	if GetFFlagLuaAppAddSignalToFocusArea() then
		self.bindSignal()
	end

	if not self.props.subscribeToNavigationEvents and self.props.requestOnMount then
		self:requestFocus()
	end
end

function FocusArea:didUpdate(prevProps, prevState)
	if self.state.isFocused and not prevState.isFocused then
		self.bindButtons()
	elseif self.state.isFocused then
		self.updateButtons(prevProps)
	end

	if GetFFlagLuaAppAddSignalToFocusArea() then
		if prevProps.focusSignal ~= self.props.focusSignal then
			self.unbindSignal()
			self.bindSignal()
		end
	end
end

function FocusArea:willUnmount()
	self:yieldFocus()
	if GetFFlagLuaAppAddSignalToFocusArea() then
		self.unbindSignal()
	end
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

local function mapStateToProps(state)
	local isControllerMode = state.ControllerMode
	return {
		isControllerMode = isControllerMode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setIsControllerMode = function(isControllerMode)
			dispatch(SetIsControllerMode(isControllerMode))
		end,
	}
end

if GetFFlagLuaAppAddSignalToFocusArea() then
	FocusArea = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FocusArea)
	return FocusArea
else
	-- FocusAreaWrapper just allows ref to bypass the Rodux layer and be assigned to the forward ref
	-- The way that Rodux.connect works is that it wraps a component in another component that feeds it
	-- data from the store. The issue is that if you pass Roact.Ref into a component that is connected to
	-- Rodux, the ref is consumed by the wrapping component and won't expose functions in the wrapped component

	-- The way that this works right now is that when you pass Roact.Ref into the FocusArea, it's converted into
	-- A forward ref by Roact.forwardRef() This allows FocusAreaWrapper to get the original ref and assign it
	-- directly to the FocusArea component, bypassing the Rodux layer.
	local FocusAreaWrapper = Roact.PureComponent:extend("Frame")

	function FocusAreaWrapper:render()
		local children = self.props[Roact.Children]
		local props = Cryo.Dictionary.join(self.props, {
			[Roact.Ref] = self.props.forwardRef,
			forwardRef = Cryo.None,
			[Roact.Children] = Cryo.None,
		})
		return Roact.createElement(FocusArea, props, children)
	end

	FocusAreaWrapper = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FocusAreaWrapper)

	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(
			FocusAreaWrapper,
			Cryo.Dictionary.join(props, {
				forwardRef = ref,
			})
		)
	end)
end
