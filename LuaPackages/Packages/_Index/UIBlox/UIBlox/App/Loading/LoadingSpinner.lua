local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Foundation = require(Packages.Foundation)
local FoundationLoading = Foundation.Loading

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)

local SpinningImage = require(UIBlox.Core.Animation.SpinningImage)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local getLoadingIconSize = require(UIBlox.Utility.getLoadingIconSize)

local useTokens = Foundation.Hooks.useTokens

local function FoundationLoadingSpinner(props)
	local tokens = useTokens()
	return Roact.createElement(FoundationLoading, {
		AnchorPoint = props.anchorPoint,
		Position = props.position,
		size = getLoadingIconSize(props.size, tokens),
	})
end

local LoadingSpinner = Roact.PureComponent:extend("LoadingSpinner")

LoadingSpinner.validateProps = t.strictInterface({
	size = t.optional(t.UDim2),
	-- The position of the spinner
	position = t.optional(t.union(t.UDim2, t.table)),
	-- The anchor point of the spinner
	anchorPoint = t.optional(t.Vector2),
	-- The rotation rate of the spinner, in degrees	per second.
	-- Positive numbers are clockwise, negative numbers are counterclockwise.
	rotationRate = t.optional(t.number),
})

function LoadingSpinner:render()
	if UIBloxConfig.useFoundationLoading then
		return Roact.createElement(FoundationLoadingSpinner, {
			anchorPoint = self.props.anchorPoint,
			position = self.props.position,
			size = self.props.size,
		})
	end

	return Roact.createElement(SpinningImage, {
		image = Images["icons/graphic/loadingspinner"],
		size = self.props.size,
		position = self.props.position,
		anchorPoint = self.props.anchorPoint,
		rotationRate = self.props.rotationRate,
	})
end

return LoadingSpinner
