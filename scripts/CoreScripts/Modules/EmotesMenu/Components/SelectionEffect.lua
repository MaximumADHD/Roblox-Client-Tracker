local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)

local SelectionEffect = Roact.PureComponent:extend("SelectionEffect")

function SelectionEffect:render()
	local LayoutConstants = Constants.Layouts[self.props.layout]
	local focusedIndex = self.props.emotesWheel.focusedSegmentIndex

	local angle = (360 / Constants.EmotesPerPage) * (focusedIndex - 1) + Constants.SegmentsStartRotation
	local radius = Constants.InnerCircleSizeRatio / 2

	local segmentAngle = 360 / Constants.EmotesPerPage
	local chordLength = Constants.InnerCircleSizeRatio * math.sin(math.rad(segmentAngle / 2))

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Rotation = angle,
		Visible = focusedIndex ~= 0,
	}, {
		SelectedLine = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(0.5 + radius, -LayoutConstants.SelectedLinePadding, 0.5, 0),
			Size = UDim2.new(1, 0, chordLength, -LayoutConstants.SelectedLinePadding),
			BackgroundTransparency = 1,
			Image = LayoutConstants.SelectedLine,
			ZIndex = 4, -- TODO: Remove when CoreGui uses Sibling ZIndex
		}, {
			AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = LayoutConstants.SelectedLineImageSize.X / LayoutConstants.SelectedLineImageSize.Y,
			}),
		}),
	})
end

local function mapStateToProps(state)
	return {
		emotesWheel = state.emotesWheel,
		layout = state.layout,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(SelectionEffect)
