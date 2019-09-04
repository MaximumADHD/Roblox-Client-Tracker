local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local StackViewInterpolator = require(script.Parent.StackViewInterpolator)

local DefaultTransitionSpec = {
	frequency = 2, -- Hz
	dampingRatio = 1,
}

local SlideFromRight = {
	transitionSpec = DefaultTransitionSpec,
	screenInterpolator = StackViewInterpolator.forHorizontal,
}

local ModalSlideFromBottom = {
	transitionSpec = DefaultTransitionSpec,
	screenInterpolator = StackViewInterpolator.forVertical,
}

local function getDefaultTransitionConfig(transitionProps, prevTransitionProps, isModal)
	if isModal then
		return ModalSlideFromBottom
	else
		return SlideFromRight
	end
end

local function getTransitionConfig(transitionConfigurer, transitionProps, prevTransitionProps, isModal)
	local defaultConfig = getDefaultTransitionConfig(transitionProps, prevTransitionProps, isModal)
	if transitionConfigurer then
		return Cryo.Dictionary.join(
			defaultConfig,
			transitionConfigurer(transitionProps, prevTransitionProps, isModal)
		)
	end

	return defaultConfig
end

return {
	getDefaultTransitionConfig = getDefaultTransitionConfig,
	getTransitionConfig = getTransitionConfig,
	SlideFromRight = SlideFromRight,
	ModalSlideFromBottom = ModalSlideFromBottom,
}
