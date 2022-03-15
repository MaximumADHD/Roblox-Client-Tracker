local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)

local QuickActions = Roact.PureComponent:extend("QuickActions")

local QUICK_ACTION_BUTTON_PADDING = 12
local QUICK_ACTION_CORNER_RADIUS = 8
local QUICK_ACTION_PADDING = 8
local QUICK_ACTION_WIDTH = 60
local QUICK_ACTION_X_OFFSET = -104

QuickActions.validateProps = t.strictInterface({
	visible = t.boolean,
	startRespawning = t.callback,
})

function QuickActions:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, QUICK_ACTION_WIDTH, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.new(1, QUICK_ACTION_X_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
			BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
			Visible = self.props.visible,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingBottom = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingLeft = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingRight = UDim.new(0, QUICK_ACTION_PADDING),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, QUICK_ACTION_CORNER_RADIUS),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, QUICK_ACTION_BUTTON_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			RespawnButton = Roact.createElement(IconButton, {
				layoutOrder = 5,
				onActivated = self.props.startRespawning,
				iconSize = IconSize.Medium,
				icon = Assets.Images.RespawnIcon,
			}),
		})
	end)
end

local function mapStateToProps(state, _)
	return {
		visible = state.isMenuOpen,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(QuickActions)
