local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)

local Colors = UIBlox.App.Style.Colors
local withStyle = UIBlox.Style.withStyle

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)
local SelectionGradient = require(Components.SelectionGradient)
local SelectionEffect = require(Components.SelectionEffect)
local WheelText = require(Components.WheelText)

local WheelBackground = Roact.PureComponent:extend("WheelBackground")

function WheelBackground:renderContent(preferredTransparency)
	local LayoutConstants = Constants.Layouts[self.props.layout]

	return Roact.createElement("Folder", {}, {
		BackgroundCircleOverlay = if preferredTransparency
			then Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Colors.Flint:Lerp(Color3.new(0, 0, 0), preferredTransparency),
				BackgroundTransparency = Constants.WheelBackgroundTransparency * preferredTransparency,
			}, {
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0.5, 0),
				}),
			})
			else Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Image = LayoutConstants.CircleBackground,
				ZIndex = 1,
			}),

		BackgroundGradient = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 2,
		}, {
			SelectionGradient = Roact.createElement(SelectionGradient),
		}),

		BackgroundImage = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = LayoutConstants.SegmentedCircle,
			ZIndex = 3,
		}),

		Selection = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 4,
		}, {
			SelectionEffect = Roact.createElement(SelectionEffect),
		}),

		BackgroundText = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 5,
		}, {
			MiddleText = Roact.createElement(WheelText),
		}),
	})
end

function WheelBackground:render()
	return withStyle(function(style)
		return self:renderContent(style.Settings.PreferredTransparency)
	end)
end

local function mapStateToProps(state)
	return {
		layout = state.layout,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(WheelBackground)
