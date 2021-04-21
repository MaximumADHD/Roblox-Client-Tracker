local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local SlidingDirection = require(UIBloxRoot.Core.Animation.Enum.SlidingDirection)
local SlidingContainer = require(UIBloxRoot.Core.Animation.SlidingContainer)
local StateTable = require(UIBloxRoot.StateTable.StateTable)

local AnimationState = require(ToastRoot.Enum.AnimationState)
local InformativeToast = require(ToastRoot.InformativeToast)
local InteractiveToast = require(ToastRoot.InteractiveToast)
local ToastContainer = require(ToastRoot.ToastContainer)
local validateToastContent = require(ToastRoot.Validator.validateToastContent)

local SlideFromTopToast = Roact.PureComponent:extend("SlideFromTopToast")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	duration = t.optional(t.number),
	layoutOrder = t.optional(t.integer),
	position = t.optional(t.UDim2),
	show = t.optional(t.boolean),
	size = t.optional(t.UDim2),
	springOptions = t.optional(t.table),
	toastContent = validateToastContent,
})

SlideFromTopToast.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0),
	position = UDim2.new(0.5, 0, 0, 20),
	show = true,
}

local function toastContentEqual(toastContent1, toastContent2)
	if toastContent1.iconColorStyle ~= toastContent2.iconColorStyle
		or toastContent1.iconImage ~= toastContent2.iconImage
		or toastContent1.iconSize ~= toastContent2.iconSize
		or toastContent1.iconChildren ~= toastContent2.iconChildren
		or toastContent1.onActivated ~= toastContent2.onActivated
		or toastContent1.onDismissed ~= toastContent2.onDismissed
		or toastContent1.sequenceNumber ~= toastContent2.sequenceNumber
		or toastContent1.swipeUpDismiss ~= toastContent2.swipeUpDismiss
		or toastContent1.toastSubtitle ~= toastContent2.toastSubtitle
		or toastContent1.toastTitle ~= toastContent2.toastTitle then
		return false
	end
	return true
end

function SlideFromTopToast:init()
	self.isMounted = false

	self.currentToastContent = self.props.toastContent

	self.onActivated = function()
		self.stateTable.events.Activated({
			activated = true,
		})
	end

	self.onAppeared = function()
		if self.currentToastContent.onAppeared then
			self.currentToastContent.onAppeared()
		end
		local duration = self.props.duration
		if duration and duration > 0 then
			local currentToastContent = self.currentToastContent
			delay(duration, function()
				if currentToastContent == self.currentToastContent then
					self.stateTable.events.AutoDismiss()
				end
			end)
		end
	end

	self.onComplete = function()
		local duration = self.props.duration

		if self.state.currentState == AnimationState.Appearing and duration and duration <= 0 then
			self.stateTable.events.AutoDismiss()
		else
			self.stateTable.events.AnimationComplete()
		end
	end

	self.onDisappeared = function()
		if self.state.context.activated then
			if self.currentToastContent.onActivated then
				self.currentToastContent.onActivated()
			end
		else
			if self.currentToastContent.onDismissed then
				self.currentToastContent.onDismissed()
			end
		end
	end

	self.onTouchSwipe = function(_, swipeDir)
		if swipeDir == Enum.SwipeDirection.Up then
			self.stateTable.events.ForceDismiss()
		end
	end

	self.renderInteractiveToast = function(props)
		return Roact.createElement(InteractiveToast, props)
	end

	self.renderInformativeToast = function(props)
		return Roact.createElement(InformativeToast, props)
	end

	self.setContext = function(_, _, data)
		return data
	end

	self.updateToastContent = function()
		if self.currentToastContent ~= self.props.toastContent then
			self.currentToastContent = self.props.toastContent
			if self.props.show then
				-- Show next toast content
				self.stateTable.events.ForceAppear({
					activated = false,
				})
			end
		end
	end

	local initialState = AnimationState.Disappeared
	self.state = {
		currentState = initialState,
		context = {
			activated = false,
		},
	}

	local stateTableName = string.format("Animated(%s)", tostring(self))
	self.stateTable = StateTable.new(stateTableName, initialState, {}, {
		[AnimationState.Appearing] = {
			AnimationComplete = { nextState = AnimationState.Appeared, action = self.onAppeared },
			AutoDismiss = { nextState = AnimationState.Disappearing, action = self.onAppeared },
			ContentChanged = { nextState = AnimationState.Disappearing },
			ForceDismiss = { nextState = AnimationState.Disappearing },
		},
		[AnimationState.Appeared] = {
			Activated = { nextState = AnimationState.Disappearing, action = self.setContext },
			AutoDismiss = { nextState = AnimationState.Disappearing },
			ContentChanged = { nextState = AnimationState.Disappearing },
			ForceDismiss = { nextState = AnimationState.Disappearing },
		},
		[AnimationState.Disappearing] = {
			AnimationComplete = { nextState = AnimationState.Disappeared, action = self.onDisappeared },
		},
		[AnimationState.Disappeared] = {
			ContentChanged = { nextState = AnimationState.Appearing, action = self.updateToastContent },
			ForceAppear = { nextState = AnimationState.Appearing, action = self.setContext },
		},
	})

	self.stateTable:onStateChange(function(oldState, newState, updatedContext)
		if self.isMounted and oldState ~= newState then
			self:setState({
				currentState = newState,
				context = updatedContext,
			})
		end
	end)
end

function SlideFromTopToast:isShowing()
	return self.state.currentState == AnimationState.Appearing or self.state.currentState == AnimationState.Appeared
end

function SlideFromTopToast:render()
	assert(validateProps(self.props))

	local onActivated = self.currentToastContent.onActivated
	local swipeUpDismiss = self.currentToastContent.swipeUpDismiss
	if swipeUpDismiss == nil then
		swipeUpDismiss = true
	end
	return Roact.createElement(SlidingContainer, {
		show = self:isShowing(),
		layoutOrder = self.props.layoutOrder,
		onComplete = self.onComplete,
		slidingDirection = SlidingDirection.Down,
		springOptions = self.props.springOptions,
	}, {
		ToastContainer = Roact.createElement(ToastContainer, {
			anchorPoint = self.props.anchorPoint,
			position = self.props.position,
			size = self.props.size,
			-- Toast content props
			iconColorStyle = self.currentToastContent.iconColorStyle,
			iconImage = self.currentToastContent.iconImage,
			iconSize = self.currentToastContent.iconSize,
			iconChildren = self.currentToastContent.iconChildren,
			onActivated = onActivated and self.onActivated,
			onTouchSwipe = swipeUpDismiss and self.onTouchSwipe,
			renderToast = onActivated and self.renderInteractiveToast or self.renderInformativeToast,
			toastSubtitle = self.currentToastContent.toastSubtitle,
			toastTitle = self.currentToastContent.toastTitle,
		}),
	})
end

function SlideFromTopToast:didMount()
	self.isMounted = true
	if self.props.show then
		self.stateTable.events.ForceAppear({
			activated = false,
		})
	end
end

function SlideFromTopToast:willUnmount()
	self.isMounted = false
end

function SlideFromTopToast:didUpdate(oldProps, oldState)
	if oldProps.show ~= self.props.show then
		if self.props.show then
			self.stateTable.events.ForceAppear({
				activated = false,
			})
		else
			self.stateTable.events.ForceDismiss()
		end
	end
	if not toastContentEqual(oldProps.toastContent, self.props.toastContent) then
		-- Toast content updated, need to force dismiss current toast and show the new one
		self.stateTable.events.ContentChanged({
			activated = false,
		})
	end
	if oldState.currentState ~= self.state.currentState and
		self.state.currentState == AnimationState.Disappeared then
		self.updateToastContent()
	end
end

return SlideFromTopToast