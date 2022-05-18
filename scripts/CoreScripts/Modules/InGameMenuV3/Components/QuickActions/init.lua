local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local QuickActionsTooltip = require(script.QuickActionsTooltip)
local QuickActionsMenu = require(script.QuickActionsMenu)

local QuickActions = Roact.PureComponent:extend("QuickActions")


local CONTROL_WIDTH = 60
local NOTCH_OFFSET = 44
local NO_NOTCH_OFFSET = 24

local TOOLTIP_HEIGHT = 36

QuickActions.validateProps = t.strictInterface({
	visible = t.boolean,
})

function QuickActions:render()
	local gradientWidth = CONTROL_WIDTH
	if game:GetEngineFeature("NotchSpaceSupportEnabled") then
		gradientWidth = gradientWidth + 2 * NOTCH_OFFSET
	else
		gradientWidth = gradientWidth + 2 * NO_NOTCH_OFFSET
	end
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, gradientWidth, 1, 0),
		Position = UDim2.new(1, 0, 0, 0),
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 0,
		Visible = self.props.visible,
	}, {
		UIGradient = Roact.createElement("UIGradient", {
			Rotation = 180,
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
				ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
			}),
			Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0.0, 0.5),
				NumberSequenceKeypoint.new(1.0, 1.0),
			})
		}),
		QuickActionFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0, CONTROL_WIDTH, 1, 0),
			Position = UDim2.new(0.5, 0, 0, -TOOLTIP_HEIGHT/2),
			AnchorPoint = Vector2.new(0.5, 0),
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
	})
end

local function mapStateToProps(state, _)
	return {
		visible = state.isMenuOpen,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(QuickActions)
