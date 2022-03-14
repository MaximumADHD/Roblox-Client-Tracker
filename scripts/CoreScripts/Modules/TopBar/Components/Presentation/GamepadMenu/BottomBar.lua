local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images

local ButtonHint = require(script.Parent.ButtonHint)

local BOTTOMBAR_HEIGHT = 72
local SCREENSIDE_PADDING = 24
local PADDING = 40

local MAX_SCREEN_PERCENTAGE = 0.1

local HintImageB = Images["icons/controls/keys/xboxB"]
local HintImageX = Images["icons/controls/keys/xboxX"]
local HintImageY = Images["icons/controls/keys/xboxY"]

local BottomBar = Roact.PureComponent:extend("BottomBar")

BottomBar.validateProps = t.strictInterface({
	screenSize = t.Vector2,

	respawnEnabled = t.boolean,
})

function BottomBar:init()
	self:setState({
		leftLayoutSize = 0,
		rightLayoutSize = 0,
	})

	self.leftLayoutSizeChanged = function(rbx)
		self:setState({
			leftLayoutSize = rbx.AbsoluteContentSize.X,
		})
	end

	self.rightLayoutSizeChanged = function(rbx)
		self:setState({
			rightLayoutSize = rbx.AbsoluteContentSize.X,
		})
	end
end

function BottomBar:render()
	return withStyle(function(style)
		local theme = style.Theme

		local maxBarHeight = (self.props.screenSize.Y * MAX_SCREEN_PERCENTAGE)
		local barHeight = math.min(BOTTOMBAR_HEIGHT, maxBarHeight)

		return Roact.createElement("Frame", {
			Visible = self.state.leftLayoutSize < self.props.screenSize.X,

			BorderSizePixel = 0,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			Size = UDim2.new(1, 0, 0, barHeight),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, SCREENSIDE_PADDING),
				PaddingRight = UDim.new(0, SCREENSIDE_PADDING),
			}),

			LeftFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),

					[Roact.Change.AbsoluteContentSize] = self.leftLayoutSizeChanged,
				}),

				LeaveHint = Roact.createElement(ButtonHint, {
					localizationKey = "CoreScripts.TopBar.Back",
					keyImage = HintImageB,
				}),
			}),

			RightFrame = Roact.createElement("Frame", {
				Visible = (self.state.leftLayoutSize + self.state.rightLayoutSize) < self.props.screenSize.X,

				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),

					[Roact.Change.AbsoluteContentSize] = self.rightLayoutSizeChanged,
				}),

				LeaveHint = Roact.createElement(ButtonHint, {
					layoutOrder = 2,
					localizationKey = "CoreScripts.TopBar.Leave",
					keyImage = HintImageX,
				}),

				RespawnHint = self.props.respawnEnabled and Roact.createElement(ButtonHint, {
					layoutOrder = 1,
					localizationKey = "CoreScripts.TopBar.Respawn",
					keyImage = HintImageY,
				}),
			}),
		})
	end)
end

local function mapStateToProps(state)
	return {
		screenSize = state.displayOptions.screenSize,

		respawnEnabled = state.respawn.enabled,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(BottomBar)