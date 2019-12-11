local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local IconButton = Roact.PureComponent:extend("IconButton")

local function getBackgroundColor(theme, activated, hovered)
	if activated then
		return theme.Pressed
	elseif hovered then
		return theme.Hovered
	else
		return theme.MainBackground
	end
end

function IconButton:init(props)
	self.state = {
		enabled = props.Enabled,
		hovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			hovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			hovered = false,
		})
	end
end

function IconButton:render()
	local state = self.state
	local hovered = state.hovered

	local props = self.props
	local labelText = props.ButtonText
	local labelImage = props.ButtonImage
	local onActivated = props.OnActivated
	local activated = props.Activated

	return Theming.withTheme(function(theme)
		local backgroundColor = getBackgroundColor(theme, activated, hovered)

		return Roact.createElement("ImageButton", {
			LayoutOrder = props.LayoutOrder,
			Size = UDim2.new(0, 50, 0, 50),
			AutoButtonColor = false,
			BackgroundColor3 = backgroundColor,
			BorderSizePixel = 0,

			[Roact.Event.Activated] = onActivated,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,

		}, {
			ImageLabel = Roact.createElement("ImageLabel", {
				Position = UDim2.new(0.5, 0, 0, 15),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(0, 30, 0, 30),
				Image = labelImage,
				BackgroundTransparency = 1,
			}),

			TextLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 1, -10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 0, 20),
				Text = labelText,
				TextColor3 = theme.BrightText,
				TextSize = theme.ButtonTextLabelSize,
				TextWrapped = true,
				BackgroundTransparency = 1,
			})
		})
	end)
end

return IconButton