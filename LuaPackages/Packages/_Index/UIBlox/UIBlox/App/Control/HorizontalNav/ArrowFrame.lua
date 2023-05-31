--[[
	A frame that holds left and right arrows for horizontal scrolling content.

	Clicking and holding down these arrows will scroll the content in
	the associated ScrollingListWithArrowsAndGradient.
]]

local Control = script.Parent.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local ArrowNav = require(Control.HorizontalNav.ArrowNav)
local NavigationDirection = require(Control.HorizontalNav.NavigationDirection)
local Images = require(App.ImageSet.Images)

local ARROW_LEFT_ICON = Images["icons/actions/cycleLeft"]
local ARROW_RIGHT_ICON = Images["icons/actions/cycleRight"]
local ARROW_SIZE = 36
local ARROW_PADDING = 6

local ArrowFrame = Roact.PureComponent:extend("ArrowFrame")

ArrowFrame.validateProps = t.strictInterface({
	ZIndex = t.optional(t.number), -- Used to set the zindex of the entire component
	isVisibleLeft = t.optional(t.union(t.boolean, t.table)), --(boolean/RoactBinding) Determines whether the left Arrow button is visible
	isVisibleRight = t.optional(t.union(t.boolean, t.table)), --(boolean/RoactBinding) Determines whether the left Arrow button is visible
	onPressHoldInputBegan = t.optional(t.callback), -- Overrides default functionality for what to do on button press and hold began
	onPressHoldInputEnded = t.optional(t.callback), -- Overrides default functionality for what to do on button press and hold end

	--[[Contains information necessary for using the default functionality if not using
	onPressHoldInputBegan and onPressHoldInputEnded props for functionality]]
	defaultUseProps = t.optional(t.strictInterface({
		scrollingFrameRef = t.table, --(RoactRef) Reference to scrollingframe housing this component,
		buttonRefs = t.optional(t.table), --(table of RoactRefs) table of references to the button contents within the scrollingframe,
		buttonWidth = t.optional(t.number),
		padOutsideEdges = t.optional(t.boolean),
		numButtons = t.optional(t.number),
		buttonPadding = t.number, -- amount of padding between the buttons,
		updateCanvasPosition = t.callback, --(RoactBinding update function) Modifies binding in parent component to move scrollingframe,
	})),
})

ArrowFrame.defaultProps = {
	ZIndex = 1,
	isVisibleRight = true,
	isVisibleLeft = true,
}

function ArrowFrame:init()
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
end

function ArrowFrame:render()
	local isVisibleLeft = self.props.isVisibleLeft
	local isVisibleRight = self.props.isVisibleRight
	local defaultUseProps = self.props.defaultUseProps
	local onPressHoldInputBegan = self.props.onPressHoldInputBegan
	local onPressHoldInputEnded = self.props.onPressHoldInputEnded

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = self.props.ZIndex,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
	}, {
		ArrowLeft = Roact.createElement(ArrowNav, {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, -ARROW_PADDING, 0.5, 0),
			Image = ARROW_LEFT_ICON,
			Visible = self.state.isHovered and isVisibleLeft,
			navDirection = NavigationDirection.IsLeft,
			defaultUseProps = defaultUseProps,
			onPressHoldInputBegan = onPressHoldInputBegan,
			onPressHoldInputEnded = onPressHoldInputEnded,
		}),

		ArrowRight = Roact.createElement(ArrowNav, {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(1, -ARROW_SIZE + ARROW_PADDING, 0.5, 0),
			Image = ARROW_RIGHT_ICON,
			Visible = self.state.isHovered and isVisibleRight,
			navDirection = NavigationDirection.IsRight,
			defaultUseProps = defaultUseProps,
			onPressHoldInputBegan = onPressHoldInputBegan,
			onPressHoldInputEnded = onPressHoldInputEnded,
		}),
	})
end

return ArrowFrame
