--[[
	Show the Favorite count for something, and whether the user has favorited it.
	The icon can be clicked to toggle favorite status.

	Required Props:
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		number Count: the number of favorites this thing has.
		boolean IsFavorited: does the current user have this thing favorited
		callback OnClick: Called when clicking the icon.

	Optional Props:
		Vector2 AnchorPoint: The anchor point of the component.
		Enum.AutomaticSize AutomaticSize: Automatic size of the component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Util = require(Framework.Util)
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = Util.prioritize

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local HoverArea = require(Framework.UI.Components.HoverArea)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()

local COMPONENT_NAME = "Favorites"

local Favorites = Roact.PureComponent:extend(COMPONENT_NAME)
Typecheck.wrap(Favorites, script)

--[[
	Counts >= 10000 will be displayed as thousands with a localized thousands symbol
]]
function Favorites:formatCount(count)
	if count < 10000 then
		-- TODO DEVTOOLS-4351: Localized formatting for numbers in this range
		return tostring(count)
	else
		return self.props.Localization:getProjectText(
			LOCALIZATION_PROJECT_NAME,
			COMPONENT_NAME,
			"FlooredCountInThousands",
			{
				count = math.floor(count / 1000),
			}
		)
	end
end

function Favorites:render()
	local props = self.props
	local style = self.props.Stylizer

	local buttonStyle = props.IsFavorited and style.Button.Filled or style.Button.Unfilled

	local size = prioritize(props.Size, style.Size)

	return Roact.createElement(Pane, {
		AnchorPoint = props.AnchorPoint,
		AutomaticSize = props.AutomaticSize,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Position = props.Position,
		Spacing = style.Spacing,
		Size = size,
	}, {
		Icon = Roact.createElement(
			Button,
			{
				AutomaticSize = props.AutomaticSize,
				LayoutOrder = 1,
				Style = buttonStyle,
				OnClick = props.OnClick,
				SizeConstraint = Enum.SizeConstraint.RelativeYY,
				Size = style.IconSize,
			},
			if FFlagDevFrameworkFixMissingKeyErrors
				then Roact.createElement(HoverArea, {
					Cursor = "PointingHand",
				})
				else {
					Roact.createElement(HoverArea, {
						Cursor = "PointingHand",
					}),
				}
		),
		Text = Roact.createElement(TextLabel, {
			LayoutOrder = 2,
			AutomaticSize = Enum.AutomaticSize.XY,
			Style = style.Text,
			Text = self:formatCount(props.Count),
		}),
	})
end

Favorites = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(Favorites)

return Favorites
