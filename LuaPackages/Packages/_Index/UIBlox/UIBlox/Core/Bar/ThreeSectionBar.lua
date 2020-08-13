local Bar = script.Parent
local Core = Bar.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local FitFrame = require(Packages.FitFrame)

local PADDING_BETWEEN_SIDE_AND_CENTER = 8

local ThreeSectionBar = Roact.PureComponent:extend("ThreeSectionBar")
ThreeSectionBar.validateProps = t.strictInterface({
	BackgroundColor3 = t.Color3,

	BackgroundTransparency = t.optional(t.number),
	barHeight = t.optional(t.number),
	contentPaddingLeft = t.optional(t.UDim),
	contentPaddingRight = t.optional(t.UDim),
	estimatedCenterWidth = t.optional(t.number),
	marginLeft = t.optional(t.number),
	marginRight = t.optional(t.number),
	onWidthChange = t.optional(t.callback),
	renderCenter = t.optional(t.callback),
	renderLeft = t.optional(t.callback),
	renderRight = t.optional(t.callback),
})

ThreeSectionBar.defaultProps = {
	barHeight = 32,
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
	estimatedCenterWidth = math.huge,
}

function ThreeSectionBar:init()
	self.leftWidth, self.updateLeftWidth = Roact.createBinding(0)
	self.rightWidth, self.updateRightWidth = Roact.createBinding(0)
	self.fullWidth, self.updateFullWidth = Roact.createBinding(0)

	self.computeCenteredSize = function(widths)
		local leftWidth, rightWidth, fullWidth = widths[1], widths[2], widths[3]

		local largestWidth = math.max(leftWidth, rightWidth)

		local centerPoint = Vector2.new(fullWidth/2, 0)
		local largestEdge = Vector2.new(largestWidth, 0)

		local distance = (centerPoint - largestEdge).magnitude

		if not self.props.renderLeft or not self.props.renderRight then
			return UDim2.new(1, -largestWidth, 1, 0)
		end

		-- multiply by 2, since we are splitting distance by both sides
		return UDim2.new(0, distance * 2, 1, 0)
	end

	self.computeBumpedPosition = function(widths)
		local leftWidth, rightWidth, fullWidth = widths[1], widths[2], widths[3]

		local x = (fullWidth - leftWidth - rightWidth) /2

		return UDim2.new(0, leftWidth + x, 0.5, 0)
	end

	self.computeBumpedSize = function(widths)
		local leftWidth, rightWidth = widths[1], widths[2]

		return UDim2.new(1, -leftWidth - rightWidth, 1, 0)
	end
end

function ThreeSectionBar:render()
	local centerAnchor
	local centerPosition

	if not self.props.renderLeft and self.props.renderRight then
		centerAnchor = Vector2.new(0, 0.5)
		centerPosition = UDim2.fromScale(0, 0.5)
	elseif self.props.renderLeft and not self.props.renderRight then
		centerAnchor = Vector2.new(1, 0.5)
		centerPosition = UDim2.fromScale(1, 0.5)
	else
		centerAnchor = Vector2.new(0.5, 0.5)
		centerPosition = UDim2.fromScale(0.5, 0.5)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, self.props.barHeight),
		BackgroundColor3 = self.props.BackgroundColor3,
		BackgroundTransparency = self.props.BackgroundTransparency,
		BorderSizePixel = 0,

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
			margin = {
				top = 0,
				left = self.props.marginLeft,
				right = PADDING_BETWEEN_SIDE_AND_CENTER,
				bottom = 0,
			},
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.updateLeftWidth(rbx.AbsoluteSize.X)
			end,
		}, {
			leftContent = self.props.renderLeft(Cryo.Dictionary.join(self.props, {
				[Roact.Children] = {
					-- introduce a size constraint in order to give the renderRight priority
					sizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = Roact.joinBindings({self.leftWidth, self.rightWidth, self.fullWidth}):map(function(widths)
							local _, rightWidth, fullWidth = widths[1], widths[2], widths[3]

							local maxLeftWidth = math.max(0, fullWidth - rightWidth - self.props.marginLeft)

							return Vector2.new(maxLeftWidth, math.huge)
						end),
					}),
				}
			})),
		}),

		centerFrame = self.props.renderCenter and Roact.createElement("Frame", {
			AnchorPoint = centerAnchor,
			BackgroundTransparency = 1,

			Position = Roact.joinBindings({self.leftWidth, self.rightWidth, self.fullWidth}):map(function(widths)
				local centeredSize = self.computeCenteredSize(widths)

				if centeredSize.X.Offset <= self.props.estimatedCenterWidth then
					return self.computeBumpedPosition(widths)
				else
					return centerPosition
				end
			end),
			Size = Roact.joinBindings({self.leftWidth, self.rightWidth, self.fullWidth}):map(function(widths)
				local centeredSize = self.computeCenteredSize(widths)

				if centeredSize.X.Offset <= self.props.estimatedCenterWidth then
					return self.computeBumpedSize(widths)
				else
					return centeredSize
				end
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
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			contentPadding = self.props.contentPaddingRight,
			margin = {
				top = 0,
				left = PADDING_BETWEEN_SIDE_AND_CENTER,
				right = self.props.marginRight,
				bottom = 0,
			},
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.updateRightWidth(rbx.AbsoluteSize.X)
			end,
		}, {
			rightContent = self.props.renderRight(self.props),
		})
	})
end

return ThreeSectionBar
