local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)

local TopBarTitleContainer = Roact.PureComponent:extend("TopBarTitleContainer")

local DEFAULT_STYLES = {
	headerTitleContainerStyle = {
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = 2,
		BackgroundTransparency = 1,
	},
	headerTitleStyle = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0.6, 0),
		LayoutOrder = 1,
		TextSize = 28,
		Text = "Title",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
	},
	headerSubtitleStyle = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0.2, 0),
		LayoutOrder = 2,
		TextSize = 14,
		Text = "Subtitle",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
	}
}

TopBarTitleContainer.defaultProps = {
	headerTitleContainerStyle = {},
	headerTitleStyle = {},
	headerSubtitleStyle = {},
}

--[[
	Returns a Roact element that holds the title and subtitle elements
]]
function TopBarTitleContainer:_renderContainer(children)
	local renderHeaderTitleContainer = self.props.renderHeaderTitleContainer
	local headerTitle = self.props.headerTitle
	local headerTitleStyle = self.props.headerTitleStyle
	local headerSubtitle = self.props.headerSubtitle
	local headerSubtitleStyle = self.props.headerSubtitleStyle
	local headerTitleContainerStyle = self.props.headerTitleContainerStyle

	headerTitleContainerStyle = Cryo.Dictionary.join(
		DEFAULT_STYLES.headerTitleContainerStyle,
		headerTitleContainerStyle
	)
	if renderHeaderTitleContainer then
		return Roact.createElement(renderHeaderTitleContainer, {
			headerTitleContainerStyle = headerTitleContainerStyle,
			headerTitle = headerTitle,
			headerTitleStyle = headerTitleStyle,
			headerSubtitle = headerSubtitle,
			headerSubtitleStyle = headerSubtitleStyle,
			renderHeaderTitle = children["Title"],
			renderHeaderSubtitle = children["Subtitle"],
		})
	end
	children["Layout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	})
	return Roact.createElement("Frame", headerTitleContainerStyle, children)

end

--[[
	Returns a Roact element representing the title
]]
function TopBarTitleContainer:_renderTitle()
	local headerTitle = self.props.headerTitle
	local renderHeaderTitle = self.props.renderHeaderTitle
	local headerTitleStyle = self.props.headerTitleStyle

	if renderHeaderTitle then
		return Roact.createElement(renderHeaderTitle, {
			headerTitle = headerTitle,
			headerTitleStyle = headerTitleStyle,
		})
	end

	headerTitleStyle = Cryo.Dictionary.join(
		DEFAULT_STYLES.headerTitleStyle,
		{
			Text = headerTitle,
		},
		headerTitleStyle)
	return Roact.createElement("TextLabel", headerTitleStyle)
end

--[[
	Returns a Roact element representing the subtitle
]]
function TopBarTitleContainer:_renderSubtitle()
	local headerSubtitle = self.props.headerSubtitle
	local renderHeaderSubtitle = self.props.renderHeaderSubtitle
	local headerSubtitleStyle = self.props.headerSubtitleStyle

	if not (headerSubtitle or renderHeaderSubtitle) then
		return nil
	end

	if renderHeaderSubtitle then
		return Roact.createElement(renderHeaderSubtitle, {
			headerSubtitle = headerSubtitle,
			headerSubtitleStyle = headerSubtitleStyle,
		})
	end

	headerSubtitleStyle = Cryo.Dictionary.join(
		DEFAULT_STYLES.headerSubtitleStyle,
		headerSubtitleStyle,
		{
			Text = headerSubtitle,
		}
	)
	return Roact.createElement("TextLabel", headerSubtitleStyle)
end

function TopBarTitleContainer:render()
	local children = {
		Title = self:_renderTitle(),
		Subtitle = self:_renderSubtitle(),
	}
	return self:_renderContainer(children)
end

return TopBarTitleContainer