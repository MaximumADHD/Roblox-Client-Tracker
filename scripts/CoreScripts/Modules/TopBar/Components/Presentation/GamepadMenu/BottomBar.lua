local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle

local ButtonHint = require(script.Parent.ButtonHint)

local BOTTOMBAR_HEIGHT = 72
local SCREENSIDE_PADDING = 24
local PADDING = 40

local BottomBar = Roact.PureComponent:extend("BottomBar")

BottomBar.validateProps = t.strictInterface({
	respawnEnabled = t.boolean,
})

function BottomBar:render()
	return withStyle(function(style)
		local theme = style.Theme

		return Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			Size = UDim2.new(1, 0, 0, BOTTOMBAR_HEIGHT),
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
				}),

				LeaveHint = Roact.createElement(ButtonHint, {
					localizationKey = "CoreScripts.TopBar.Back",
					keyLabel = "B",
				}),
			}),

			RightFrame = Roact.createElement("Frame", {
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
				}),

				LeaveHint = Roact.createElement(ButtonHint, {
					layoutOrder = 2,
					localizationKey = "CoreScripts.TopBar.Leave",
					keyLabel = "X",
				}),

				RespawnHint = self.props.respawnEnabled and Roact.createElement(ButtonHint, {
					layoutOrder = 1,
					localizationKey = "CoreScripts.TopBar.Respawn",
					keyLabel = "Y",
				}),
			}),
		})
	end)
end

local function mapStateToProps(state)
	return {
		respawnEnabled = state.respawn.enabled,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(BottomBar)