local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local INNER_FRAME_PADDING = 12

local CheckBoxDropDown = Roact.Component:extend("CheckBoxDropDown")

function CheckBoxDropDown:render()
	local children = self.props[Roact.Children] or {}
	local absolutePosition = self.props.absolutePosition
	local frameWidth = self.props.frameWidth
	local elementHeight = self.props.elementHeight
	local numElements = self.props.numElements

	local onCloseCheckBox = self.props.onCloseCheckBox

	local frameHeight = elementHeight * numElements
	local outerFrameSize = UDim2.new( 0, frameWidth, 0, (2 * INNER_FRAME_PADDING) + frameHeight)

	return Roact.createElement(Roact.Portal, {
		target = RobloxGui,
	}, {
		FullScreen = Roact.createElement("ScreenGui", {
		}, {
			InputCatcher = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,

				[Roact.Event.InputEnded] = onCloseCheckBox,
			},{
				OuterFrame = Roact.createElement("ImageButton", {
					Size = outerFrameSize,
					AutoButtonColor = false,
					Position = absolutePosition,
					BackgroundColor3 = Constants.Color.TextBoxGray,
					BackgroundTransparency = 0,
				}, {
					innerFrame = Roact.createElement("Frame", {
						Position = UDim2.new(0, INNER_FRAME_PADDING, 0 , INNER_FRAME_PADDING),
						Size = UDim2.new(0,frameWidth, 0, frameHeight),
						BackgroundTransparency = 1,
					}, children)
				})
			})
		})
	})
end

return CheckBoxDropDown