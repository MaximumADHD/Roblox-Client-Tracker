local Bar = script.Parent
local Core = Bar.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local FitFrame = require(Packages.FitFrame)

local ThreeSectionBar = Roact.PureComponent:extend("ThreeSectionBar")

ThreeSectionBar.defaultProps = {
	barHeight = 32,
	BackgroundColor3 = Color3.fromRGB(177, 177, 177),
	BackgroundTransparency = 0,
	marginLeft = 0,
	marginRight = 0,

	contentPaddingLeft = UDim.new(0, 0),
	contentPaddingRight = UDim.new(0, 0),

	renderLeft = nil,
	renderRight = nil,
	renderCenter = nil,

	onWidthChange = function()
		return nil
	end,
	dominantSection = "right",
}

function ThreeSectionBar:init()
	-- bindings
	self.leftWidth, self.updateLeftWidth = Roact.createBinding(0)
	self.rightWidth, self.updateRightWidth = Roact.createBinding(0)
	self.fullWidth, self.updateFullWidth = Roact.createBinding(0)
end

function ThreeSectionBar:render()
	local centerAnchor
	local centerPosition

	if not self.props.renderLeft and self.props.renderRight then
		centerAnchor = Vector2.new(0, 0)
		centerPosition = UDim2.fromScale(0, 0)
	elseif self.props.renderLeft and not self.props.renderRight then
		centerAnchor = Vector2.new(1, 0)
		centerPosition = UDim2.fromScale(1, 0)
	else
		centerAnchor = Vector2.new(0.5, 0)
		centerPosition = UDim2.fromScale(0.5, 0)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, self.props.barHeight),
		BackgroundColor3 = self.props.BackgroundColor3,
		BackgroundTransparency = self.props.BackgroundTransparency,

		[Roact.Change.AbsoluteSize] = function(rbx)
			self.props.onWidthChange(rbx.AbsoluteSize.X)
			self.updateFullWidth(rbx.AbsoluteSize.X)
		end,
	}, {
		leftFrame = self.props.renderLeft and Roact.createElement(FitFrame.FitFrameHorizontal, {
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.fromScale(0, 0),
			BackgroundTransparency = 1,

			minimumSize = UDim.new(0, 200),
			height = UDim.new(1, 0),
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			contentPadding = self.props.contentPaddingLeft,
			margin = FitFrame.Rect.square(self.props.marginLeft),
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.updateLeftWidth(rbx.AbsoluteSize.X)
			end,
		}, {
			leftContent = self.props.renderLeft(self.props),
		}),

		centerFrame = self.props.renderCenter and Roact.createElement("Frame", {
			AnchorPoint = centerAnchor,
			Position = centerPosition,
			BackgroundTransparency = 1,

			Size = Roact.joinBindings({self.leftWidth, self.rightWidth, self.fullWidth}):map(function(widths)
				local leftWidth, rightWidth, fullWidth = widths[1], widths[2], widths[3]

				local largestWidth = math.max(leftWidth, rightWidth)

				local centerPoint = Vector2.new(fullWidth/2, 0)
				local largestEdge = Vector2.new(largestWidth, 0)

				local distance = (centerPoint - largestEdge).magnitude

				-- multiple by 2, since we are splitting distance by both sides
				if not self.props.renderLeft or not self.props.renderRight then
					return UDim2.new(1, -largestWidth, 1, 0)
				end

				return UDim2.new(0, distance * 2, 1, 0)
			end),
		}, {
			["$layout"] = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			centerContent = self.props.renderCenter(self.props),
		}),

		rightFrame = self.props.renderRight and Roact.createElement(FitFrame.FitFrameHorizontal, {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,

			minimumSize = UDim.new(0, 200),
			height = UDim.new(1, 0),
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			contentPadding = self.props.contentPaddingRight,
			margin = FitFrame.Rect.square(self.props.marginRight),
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.updateRightWidth(rbx.AbsoluteSize.X)
			end,
		}, {
			rightContent = self.props.renderRight(self.props),
		})
	})
end

return ThreeSectionBar
