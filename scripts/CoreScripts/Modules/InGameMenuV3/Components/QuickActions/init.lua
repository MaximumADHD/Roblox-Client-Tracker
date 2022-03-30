local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Otter = require(CorePackages.Otter)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local QuickActionsTooltip = require(script.QuickActionsTooltip)
local QuickActionsMenu = require(script.QuickActionsMenu)

local QuickActions = Roact.PureComponent:extend("QuickActions")


local CONTROL_WIDTH = 180
local SHOW_X_OFFSET = -44
local HIDE_X_OFFSET = 60
local TOOLTIP_HEIGHT = 36

local POSITION_MOTOR_OPTIONS = {
    dampingRatio = 1,
    frequency = 4,
}

QuickActions.validateProps = t.strictInterface({
	visible = t.boolean,
})

function QuickActions:init()
	self.position, self.updatePosition = Roact.createBinding(UDim2.new(1, HIDE_X_OFFSET, 0, -TOOLTIP_HEIGHT/2))

	self.positionMotor = Otter.createSingleMotor(0)

	self.positionMotor:onStep(function(position)
		self.updatePosition(UDim2.new(1, position, 0, -TOOLTIP_HEIGHT/2))
	end)
end

function QuickActions:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, CONTROL_WIDTH, 1, 0),
		Position = self.position,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Tooltip = Roact.createElement(QuickActionsTooltip, {
			layoutOrder = 1,
		}),
		Menu = Roact.createElement(QuickActionsMenu, {
			layoutOrder = 2,
		}),
	})
end

function QuickActions:didUpdate(prevProps, _)
	if prevProps.visible ~= self.props.visible then
		local goal = self.props.visible and SHOW_X_OFFSET or HIDE_X_OFFSET
		self.positionMotor:setGoal(Otter.spring(goal, POSITION_MOTOR_OPTIONS))
	end
end

function QuickActions:willUnmount()
	if self.positionMotor then
		self.positionMotor:destroy()
	end
end


local function mapStateToProps(state, _)
	return {
		visible = state.isMenuOpen,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(QuickActions)
