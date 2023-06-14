local UIBlox = script:FindFirstAncestor("UIBlox")
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local Cryo = require(Packages.Cryo)
local useStyle = require(UIBlox.Core.Style.useStyle)

local MINIMUM_ITEMS_SIZE = 2

type SpringOptions = ReactOtter.SpringOptions

local defaultProps = {
	zIndex = 1,
	overlayTransparency = 0.5,
	animationConfig = {
		dampingRatio = 1,
		frequency = 1 / 0.15, -- @150ms fade anim
	},
}

export type Item = {
	-- URL of image to be rendered.
	imageId: string,
	-- A Boolean value that determines whether this item is a video. Default is false.
	isVideo: boolean?,
}

export type CrossAnimationParameters = {
	-- The current index of Media Gallery thumbnail
	currentIndex: number,
	-- Callback function to update currentIndex of Media Gallery thumbnail
	setCurrentIndex: ((currentIndex: number) -> ()),
	-- The next index of Media Gallery thumbnail
	nextIndex: number,
	-- The status of cross fade animation
	isCrossFade: boolean,
	-- Callback function for update status of cross fade animation
	setCrossFade: ((isCrossFade: boolean) -> ()),
}

export type Props = {
	-- Array of items to be rendered.
	items: { Item },
	-- The parameters of cross fade animation
	crossAnim: CrossAnimationParameters,
	-- ZIndex of CrossFadeAnimatedView
	zIndex: number?,
	-- The transparency of overlay frame
	overlayTransparency: number?,
	-- ReactOtter animation spring settings
	animationConfig: ReactOtter.SpringOptions?,
}

local function CrossFadeAnimatedView(providedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local itemsSize = #props.items
	local stylePalette = useStyle()

	local onAnimationComplete = React.useCallback(function()
		if props.crossAnim.isCrossFade then
			props.crossAnim.setCrossFade(false)
			props.crossAnim.setCurrentIndex(props.crossAnim.nextIndex)
		end
	end, {
		props.crossAnim.isCrossFade,
		props.crossAnim.nextIndex,
		props.crossAnim.setCrossFade,
		props.crossAnim.setCurrentIndex,
	} :: { any })

	local currentTransparency, setCurrentTransparency = ReactOtter.useAnimatedBinding(0, onAnimationComplete)
	React.useEffect(function()
		-- Requires at leat 2 items size for cross fade animations
		if itemsSize < MINIMUM_ITEMS_SIZE then
			return
		end
		if props.crossAnim.isCrossFade then
			setCurrentTransparency(ReactOtter.spring(1, props.animationConfig))
		else
			setCurrentTransparency(ReactOtter.instant(0) :: any)
		end
	end, {
		props.crossAnim.isCrossFade,
		props.crossAnim.nextIndex,
		props.animationConfig,
	} :: { any })

	return React.createElement("ImageLabel", {
		Size = UDim2.fromScale(1, 1),
		ZIndex = props.zIndex,
		Image = props.items[props.crossAnim.currentIndex].imageId,
		ScaleType = Enum.ScaleType.Crop,
		BackgroundTransparency = 1,
		ImageTransparency = currentTransparency,
	}, {
		NextImage = if itemsSize >= MINIMUM_ITEMS_SIZE
			then React.createElement("ImageLabel", {
				Position = UDim2.fromOffset(0, 0),
				Size = UDim2.fromScale(1, 1),
				Image = props.items[props.crossAnim.nextIndex].imageId,
				ScaleType = Enum.ScaleType.Crop,
				BackgroundTransparency = 1,
				ImageTransparency = currentTransparency:map(function(value)
					return 1 - value
				end),
			})
			else nil,
		Overlay = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = props.overlayTransparency,
			BackgroundColor3 = stylePalette.Theme.Overlay.Color,
		}),
	})
end

return CrossFadeAnimatedView
