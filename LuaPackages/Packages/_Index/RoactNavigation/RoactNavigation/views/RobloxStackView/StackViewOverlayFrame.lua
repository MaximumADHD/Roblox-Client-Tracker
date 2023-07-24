local RobloxStackView = script.Parent
local root = RobloxStackView.Parent.Parent
local Packages = root.Parent

local React = require(Packages.React)
local lerp = require(root.utils.lerp)

local StackViewOverlayFrame = React.Component:extend("StackViewOverlayFrame")

function StackViewOverlayFrame:init()
	self._signalDisconnect = nil

	self._ref = React.createRef()
end

function StackViewOverlayFrame:render()
	local navigationOptions = self.props.navigationOptions
	local initialTransitionValue = self.props.initialTransitionValue

	local overlayTransparency = lerp(1, navigationOptions.overlayTransparency, initialTransitionValue)

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = navigationOptions.overlayColor3,
		BackgroundTransparency = overlayTransparency,
		BorderSizePixel = 0,
		ref = self._ref,
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
		self._signalDisconnect = nil
	end
end

function StackViewOverlayFrame:_transitionChanged(value)
	if not self._isMounted then
		return
	end

	if self._ref.current then
		local navigationOptions = self.props.navigationOptions
		local overlayTransparency = lerp(1, navigationOptions.overlayTransparency, value)
		self._ref.current.BackgroundTransparency = overlayTransparency
	end
end

return StackViewOverlayFrame
