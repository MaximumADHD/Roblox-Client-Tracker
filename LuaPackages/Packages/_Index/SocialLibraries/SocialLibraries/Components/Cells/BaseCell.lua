local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Cryo = dependencies.Cryo
local Roact = dependencies.Roact

local CELL_HEIGHT = 48
local ICON_CELL_WIDTH = 60

local BaseCell = Roact.PureComponent:extend("BaseCell")

BaseCell.defaultProps = {
	Size = UDim2.new(1, 0, 0, CELL_HEIGHT),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	onPressedBackgroundColor3 = Color3.fromRGB(242, 242, 242),
	onPressedBackgroundTransparency = 1,
	LayoutOrder = 0,

	onActivated = function()
		print("BaseCell onActivated")
	end,
	showDivider = true,
	dividerTransparency = 0,
	dividerColor3 = Color3.fromRGB(227, 227, 227),
}

function BaseCell:init()
	self:setState({
		isPressed = false,
	})

	self.touchFunction = function()
		return function(_, inputObject)
			if
				inputObject.UserInputType == Enum.UserInputType.MouseButton1
				or inputObject.UserInputType == Enum.UserInputType.Touch
			then
				self:setState({
					isPressed = inputObject.UserInputState == Enum.UserInputState.Begin,
				})
			end
		end
	end
end

function BaseCell:render()
	local accessories = {}

	if self.state.isPressed then
		accessories.overlay = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = self.props.onPressedBackgroundTransparency,
			BackgroundColor3 = self.props.onPressedBackground3,
			BorderSizePixel = 0,
		})
	end

	if self.props.showDivider then
		accessories.divider = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),

			divider = Roact.createElement("Frame", {
				BackgroundTransparency = self.props.dividerTransparency,
				BackgroundColor3 = self.props.dividerColor3,
				BorderSizePixel = 0,
				Size = UDim2.new(1, -ICON_CELL_WIDTH, 0, 1),
			}),
		})
	end

	return Roact.createElement("ImageButton", {
		AutoButtonColor = false,
		Size = self.props.Size,
		BackgroundColor3 = self.props.BackgroundColor3,
		LayoutOrder = self.props.LayoutOrder,
		BorderSizePixel = 0,
		[Roact.Event.Activated] = self.props.onActivated,
		[Roact.Event.InputBegan] = self.touchFunction(),
		[Roact.Event.InputEnded] = self.touchFunction(),
	}, Cryo.Dictionary.join(self.props[Roact.Children] or {}, accessories))
end

return BaseCell
