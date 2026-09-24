--[[
	A Loading bar which renders a background and a foreground, which is scaled based
	on the provided progress of the load.
	Using the default style, the recommended height for this component is 8px.

	Required Props:
		number Progress: The progress of the load, between 0 and 1.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		UDim2 Size: The size of this component.
		Style Style: The style with which to render this component.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number ZIndex: The render index of this component.
		number LayoutOrder: The layout order of this component in a list.
		boolean OverTime: Whether the loading bar should be in an over time state.

	Style Values:
		Component Background: The background of the LoadingBar.
		Style BackgroundStyle: The style with which to render the background.
		Component Foreground: The bar itself which fills the background.
		Style ForegroundStyle: The style with which to render the foreground.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Container = require(Framework.UI.Components.Container)
local Shimmer = require(Framework.UI.Components.Shimmer)

local Typecheck = require(Framework.Util.Typecheck)

local LoadingBar = Roact.PureComponent:extend("LoadingBar")
Typecheck.wrap(LoadingBar, script)

function LoadingBar:init(props)
	assert(type(props.Progress) == "number", "LoadingBar expects a 'Progress' prop.")
end

function LoadingBar:render()
	local props = self.props
	local style = props.Stylizer

	local progress = props.Progress
	progress = math.clamp(progress, 0, 1)

	local size = props.Size
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	local background = style.Background
	local backgroundStyle = style.BackgroundStyle
	local foreground = style.Foreground
	local foregroundStyle = style.ForegroundStyle

	if props.OverTime then
		return Roact.createElement(Shimmer, {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			LayoutOrder = layoutOrder,
		})
	else
		return Roact.createElement(Container, {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			ZIndex = zIndex,
			LayoutOrder = layoutOrder,
			Background = background,
			BackgroundStyle = backgroundStyle,
		}, {
			LoadingBar = Roact.createElement(Container, {
				Size = UDim2.new(progress, 0, 1, 0),
				Background = foreground,
				BackgroundStyle = foregroundStyle,
			}),
		})
	end
end

LoadingBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(LoadingBar)

return LoadingBar
