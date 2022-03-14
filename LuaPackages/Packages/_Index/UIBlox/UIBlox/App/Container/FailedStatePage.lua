local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
local EmptyState = require(UIBlox.App.Indicator.EmptyState)
local SecondaryButton = require(UIBlox.App.Button.SecondaryButton)

local RenderOnFailedStyle = require(UIBlox.App.Loading.Enum.RenderOnFailedStyle)

local RETRY_BUTTON_HEIGHT = 44
local RETRY_BUTTON_WIDTH = 44
local RETRY_BACKGROUND_IMAGE = "icons/common/refresh"
local ICON = 'icons/status/noconnection_large'

local FailedStatePage = Roact.PureComponent:extend("FailedStatePage")

FailedStatePage.validateProps = t.strictInterface({
	-- The onRetry function is called when a button is pressed
	onRetry = t.optional(t.callback),
	-- The renderOnFailed renders a page from a RenderOnFailedStyle enum
	renderOnFailed = t.optional(RenderOnFailedStyle.isEnumValue),
	-- text for emptystate
	text = t.optional(t.string),
})

FailedStatePage.defaultProps = {
	renderOnFailed = RenderOnFailedStyle.RetryButton,
}

function FailedStatePage:render()
	if self.props.renderOnFailed == RenderOnFailedStyle.EmptyStatePage then
		return Roact.createElement(EmptyState, {
			position = UDim2.fromScale(0.5, 0.5),
			anchorPoint = Vector2.new(0.5, 0.5),
			onActivated = self.props.onRetry,
			icon = Images[ICON],
			text = self.props.text,
		})
	elseif self.props.renderOnFailed == RenderOnFailedStyle.RetryButton then
		if self.props.onRetry then
			return Roact.createElement(SecondaryButton, {
				size = UDim2.fromOffset(RETRY_BUTTON_HEIGHT, RETRY_BUTTON_WIDTH),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
				onActivated = self.props.onRetry,
				icon = Images[RETRY_BACKGROUND_IMAGE],
			})
		else
			error("OnRetry callback empty. OnRetry needs to be a function to render the RetryButton")
		end
	else
		error("Failed to provide proper RenderOnFailedStyle")
	end
end

return FailedStatePage
