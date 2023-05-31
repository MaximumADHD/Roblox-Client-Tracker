local DetailsPage = script.Parent.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local function useAnimateFullscreen(
	isFullscreen: boolean,
	renderFullscreenContent: () -> React.React_Node,
	animationConfig: ReactOtter.SpringOptions
): (boolean, React.Binding<number>)
	local hasRenderFunction = renderFullscreenContent ~= nil
	local newTransparencyGoal = if isFullscreen and hasRenderFunction then 0 else 1
	local currentTransparencyGoal, setCurrentTransparencyGoal = React.useState(newTransparencyGoal)

	local isAnimating, setIsAnimating = React.useState(false)
	local onAnimationComplete = React.useCallback(function()
		setIsAnimating(false)
	end, {})
	local transparencyValue, animateTransparencyValue =
		ReactOtter.useAnimatedBinding(newTransparencyGoal, onAnimationComplete)

	React.useEffect(function()
		if newTransparencyGoal == currentTransparencyGoal then
			return nil
		end

		setCurrentTransparencyGoal(newTransparencyGoal)
		setIsAnimating(true)
		animateTransparencyValue(ReactOtter.spring(newTransparencyGoal, animationConfig))
		return nil
	end, { newTransparencyGoal, currentTransparencyGoal, animationConfig } :: { any })

	local showFullscreen = (isAnimating or isFullscreen) and hasRenderFunction

	return showFullscreen, transparencyValue
end

return useAnimateFullscreen
