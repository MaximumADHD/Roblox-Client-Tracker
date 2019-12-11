local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)

local TopBarBackButton = Roact.PureComponent:extend("TopBarBackButton")

--[[
	Here rather than in defaultProps to allow one to overwrite specific parts of each style
]]
local DEFAULT_STYLES = {
	headerLeftContainerStyle = {
		Size = UDim2.new(0.3, 0, 1, 0),
		BackgroundTransparency = 1,
	},
	headerBackButtonStyle = {
		Text = "<-",
		LayoutOrder = 2,
		Size = UDim2.new(0, 40, 0, 40),
	},
}

TopBarBackButton.defaultProps = {
	headerBackButtonStyle = {},
	headerLeftContainerStyle = {},
	goBack = function() end,
}

function TopBarBackButton:_renderBackButton()
	local renderHeaderBackButton = self.props.renderHeaderBackButton
	local headerBackButtonStyle = self.props.headerBackButtonStyle
	local goBack = self.props.goBack

	if renderHeaderBackButton then
		headerBackButtonStyle = Cryo.Dictionary.join(headerBackButtonStyle, {
			LayoutOrder = 2,
		})
		return Roact.createElement(renderHeaderBackButton, {
			goBack = goBack,
			headerBackButtonStyle = headerBackButtonStyle,
		})
	end

	headerBackButtonStyle = Cryo.Dictionary.join(
		DEFAULT_STYLES.headerBackButtonStyle,
		headerBackButtonStyle,
		{
			[Roact.Event.Activated] = goBack,
		}
	)

	return Roact.createElement("TextButton", headerBackButtonStyle)
end

function TopBarBackButton:render()
	local headerLeftContainerStyle = self.props.headerLeftContainerStyle
	headerLeftContainerStyle = Cryo.Dictionary.join(DEFAULT_STYLES.headerLeftContainerStyle, headerLeftContainerStyle, {
		LayoutOrder = 1,
	})
	return Roact.createElement("Frame", headerLeftContainerStyle, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
		Spacer = Roact.createElement("Frame", {
			Size = UDim2.new(0, 12, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),
		Button = self:_renderBackButton(),
	})
end

return TopBarBackButton