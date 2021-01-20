local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local lerp = require(script.Parent.Parent.Parent.utils.lerp)

local StackViewOverlayFrame = Roact.Component:extend("StackViewOverlayFrame")

function StackViewOverlayFrame:init()
	self._signalDisconnect = nil

	local selfRef = Roact.createRef()
	self._getRef = function()
		return self.props[Roact.Ref] or selfRef
	end
end

function StackViewOverlayFrame:render()
	local navigationOptions = self.props.navigationOptions
	local initialTransitionValue = self.props.initialTransitionValue

	local overlayTransparency = lerp(1, navigationOptions.overlayTransparency, initialTransitionValue)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = navigationOptions.overlayColor3,
		BackgroundTransparency = overlayTransparency,
		BorderSizePixel = 0,
		[Roact.Ref] = self:_getRef(),
	})
end

function StackViewOverlayFrame:didUpdate(oldProps)
	local transitionChangedSignal = self.props.transitionChangedSignal

	if transitionChangedSignal ~= oldProps.transitionChangedSignal then
		if self._signalDisconnect then
			self._signalDisconnect()
		end

		self._signalDisconnect = transitionChangedSignal(function(...)
			self:_transitionChanged(...)
		end)
	end
end

function StackViewOverlayFrame:didMount()
	self._isMounted = true
	self._signalDisconnect = self.props.transitionChangedSignal(function(...)
		self:_transitionChanged(...)
	end)
end

function StackViewOverlayFrame:willUnmount()
	self._isMounted = false
	if self._signalDisconnect then
		self._signalDisconnect()
	end
end

function StackViewOverlayFrame:_transitionChanged(value)
	if not self._isMounted then
		return
	end

	local myRef = self:_getRef()
	if myRef.current then
		local navigationOptions = self.props.navigationOptions
		local overlayTransparency = lerp(1, navigationOptions.overlayTransparency, value)
		myRef.current.BackgroundTransparency = overlayTransparency
	end
end

return StackViewOverlayFrame
