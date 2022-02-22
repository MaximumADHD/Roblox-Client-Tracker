--!strict
--[[
	A right aligned button with text and an arrow.

	Props:
		string? Text = when not-null, is the text displayed next to the arrow
		function<void>() OnClickSeeAll = a callback executed when the See All Button is pressed.
		[Roact.Ref] = exposes the reference to the button
		
	Context Props:
		Localization
		Stylizer
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local TextLabel = Framework.UI.Decoration.TextLabel

export type NavigationLinkProps = {
	Text : string?,
	OnClickSeeAll : (() -> ()),
	Localization : any,
	Stylizer : any,
}

local NavigationLink = Roact.PureComponent:extend("NavigationLink")

function NavigationLink:init()
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false
		})
	end
end

function NavigationLink:render()
	local props : NavigationLinkProps = self.props

	local localization = props.Localization
	local OnClickSeeAll = props.OnClickSeeAll
	local ref = props[Roact.Ref]
	local text = props.Text
	local theme = props.Stylizer.sectionHeaderNavLink

	local isHovered = self.state.isHovered
	local textColor = if isHovered then theme.hoverTextColor else theme.textColor

	return Roact.createElement("TextButton", {
		AnchorPoint = Vector2.new(1, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		Position = UDim2.new(1, 0, 0, 0),
		Text = "",
		[Roact.Event.Activated] = OnClickSeeAll,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Ref] = ref,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 6),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.X,
			FitWidth = true,
			Font = theme.font,
			LayoutOrder = 0,
			Text = if text then text else localization:getText("HomeView", "SeeAll"),
			TextColor = textColor,
			TextSize = theme.textSize,
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
		Arrow = Roact.createElement(TextLabel, {
			FitWidth = true,
			Font = theme.font,
			LayoutOrder = 1,
			Text = "►",
			TextColor = textColor,
			TextSize = theme.textSize,
		}),
	})
end

NavigationLink = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(NavigationLink)

return NavigationLink
