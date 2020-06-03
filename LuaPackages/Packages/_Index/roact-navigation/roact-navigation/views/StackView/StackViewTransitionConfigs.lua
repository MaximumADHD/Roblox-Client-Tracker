local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local StackViewInterpolator = require(script.Parent.StackViewInterpolator)
local StackPresentationStyle = require(script.Parent.StackPresentationStyle)

local DefaultTransitionSpec = {
	frequency = 3, -- Hz
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

local FadeInPlace = {
	transitionSpec = DefaultTransitionSpec,
	screenInterpolator = StackViewInterpolator.forFade,
}

local function getDefaultTransitionConfig(transitionProps, prevTransitionProps, presentationStyle)
	if presentationStyle == StackPresentationStyle.Modal then
		return ModalSlideFromBottom
	elseif presentationStyle == StackPresentationStyle.Overlay then
		return FadeInPlace
	else
		return SlideFromRight
	end
end

local function getTransitionConfig(transitionConfigurer, transitionProps, prevTransitionProps, presentationStyle)
	local defaultConfig = getDefaultTransitionConfig(transitionProps, prevTransitionProps, presentationStyle)
	if transitionConfigurer then
		return Cryo.Dictionary.join(
			defaultConfig,
			transitionConfigurer(transitionProps, prevTransitionProps, presentationStyle)
		)
	end

	return defaultConfig
end

return {
	getDefaultTransitionConfig = getDefaultTransitionConfig,
	getTransitionConfig = getTransitionConfig,
	SlideFromRight = SlideFromRight,
	ModalSlideFromBottom = ModalSlideFromBottom,
	FadeInPlace = FadeInPlace,
}
