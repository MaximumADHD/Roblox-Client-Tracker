local ToastRoot = script.Parent
local UIBloxRoot = ToastRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)
local SlidingDirection = require(UIBloxRoot.Core.Animation.Enum.SlidingDirection)
local SlidingContainer = require(UIBloxRoot.Core.Animation.SlidingContainer)

local InformativeToast = require(ToastRoot.InformativeToast)
local InteractiveToast = require(ToastRoot.InteractiveToast)
local ToastContainer = require(ToastRoot.ToastContainer)

local Status = {
	Appearing = "Appearing",
	Appeared = "Appeared",
	Disappearing = "Disappearing",
	Disappeared = "Disappeared",
}

local SlideFromTopToast = Roact.PureComponent:extend("SlideFromTopToast")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	duration = t.optional(t.number),
	iconColorStyle = t.optional(validateColor),
	-- Optional image to be displayed in the toast.
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.optional(t.Vector2),
	layoutOrder = t.optional(t.integer),
	onActivated = t.optional(t.callback),
	onAppeared = t.optional(t.callback),
	onDismissed = t.optional(t.callback),
	position = t.optional(t.UDim2),
	show = t.optional(t.boolean),
	size = t.optional(t.UDim2),
	springOptions = t.optional(t.table),
	swipeUpDismiss = t.optional(t.boolean),
	toastSubtitle = t.optional(t.string),
	toastTitle = t.string,
})

SlideFromTopToast.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0),
	position = UDim2.new(0.5, 0, 0, 20),
	show = true,
	swipeUpDismiss = true,
}

-- This props change would cause the toast to slide up and slide down with new content
local toastContentProps = {
	"iconColorStyle",
	"iconImage",
	"iconSize",
	"onActivated",
	"onAppeared",
	"onDismissed",
	"swipeUpDismiss",
	"toastSubtitle",
	"toastTitle"
}

local function isToastContentChanged(oldProps, newProps)
	for _, propsName in ipairs(toastContentProps) do
		if oldProps[propsName] ~= newProps[propsName] then
			return true
		end
	end
	return false
end

local function getToastContentProps(props)
	local contentProps = {}
	for _, propsName in ipairs(toastContentProps) do
		contentProps[propsName] = props[propsName]
	end
	return contentProps
end

function SlideFromTopToast:init()
	self.isMounted = false

	self.state = {
		activated = false,
		status = Status.Disappeared,
	}

	self.onActivatedSlideUp = function()
		self:slideUp(true)
	end

	self.onComplete = function()
		if self.isMounted then
			if self.state.status == Status.Appearing then
				-- Sliding down complete
				self:setState({
					status = Status.Appeared,
				})
				if self.currentToastContent.onAppeared then
					self.currentToastContent.onAppeared()
				end
				local duration = self.props.duration
				local currentToastContent = self.currentToastContent
				if duration and duration > 0 then
					delay(duration, function()
						if self.isMounted and self.state.status == Status.Appeared and
							not isToastContentChanged(currentToastContent, self.currentToastContent) then
							self:slideUp(false)
						end
					end)
				end
			elseif self.state.status == Status.Disappearing then
				--Sliding up complete
				local activated = self.state.activated
				self:setState({
					activated = false,
					status = Status.Disappeared,
				})
				if activated then
					if self.currentToastContent.onActivated then
						self.currentToastContent.onActivated()
					end
				else
					if self.currentToastContent.onDismissed then
						self.currentToastContent.onDismissed()
					end
					-- Need to show next toast content
					if isToastContentChanged(self.currentToastContent, self.props) then
						self.currentToastContent = getToastContentProps(self.props)
						if self.props.show then
							self:slideDown()
						end
					end
				end
			end
		end
	end

	self.onTouchSwipe = function(_, swipeDir)
		if swipeDir == Enum.SwipeDirection.Up then
			self:slideUp(false)
		end
	end

	self.renderInteractiveToast = function(props)
		return Roact.createElement(InteractiveToast, props)
	end

	self.renderInformativeToast = function(props)
		return Roact.createElement(InformativeToast, props)
	end

	self.currentToastContent = getToastContentProps(self.props)
end

function SlideFromTopToast:isShowing()
	return self.state.status == Status.Appearing or self.state.status == Status.Appeared
end

function SlideFromTopToast:slideDown()
	if not self:isShowing() and self.isMounted then
		self:setState({
			activated = false,
			status = Status.Appearing,
		})
	end
end

function SlideFromTopToast:slideUp(activated)
	if self:isShowing() and self.isMounted then
		self:setState({
			activated = activated,
			status = Status.Disappearing,
		})
	end
end

function SlideFromTopToast:render()
	assert(validateProps(self.props))

	local onActivated = self.currentToastContent.onActivated
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

			iconColorStyle = self.currentToastContent.iconColorStyle,
			iconImage = self.currentToastContent.iconImage,
			iconSize = self.currentToastContent.iconSize,
			onActivated = onActivated and self.onActivatedSlideUp,
			onTouchSwipe = self.currentToastContent.swipeUpDismiss and self.onTouchSwipe,
			renderToast = onActivated and self.renderInteractiveToast or self.renderInformativeToast,
			toastSubtitle = self.currentToastContent.toastSubtitle,
			toastTitle = self.currentToastContent.toastTitle,
		}),
	})
end

function SlideFromTopToast:didMount()
	self.isMounted = true
	self:slideDown()
end

function SlideFromTopToast:willUnmount()
	self.isMounted = false
end

function SlideFromTopToast:didUpdate(oldProps, _)
	if oldProps.show ~= self.props.show then
		if self.props.show then
			self:slideDown()
		else
			self:slideUp(false)
		end
	end
	if isToastContentChanged(oldProps, self.props) then
		-- Toast content updated, need to force dismiss current toast and show the new one
		self:slideUp(false)
	end
end

return SlideFromTopToast
