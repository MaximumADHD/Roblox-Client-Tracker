local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)

local BottomLockedScrollView = require(ExperienceChat.ChatWindow.UI.BottomLockedScrollView)

local ScrollingView = Roact.Component:extend("ScrollingView")
ScrollingView.defaultProps = {}

function ScrollingView:render()
	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Size = self.props.size,
	}, {
		bottomLockedScrollView = Roact.createElement(BottomLockedScrollView, {
			Size = UDim2.fromScale(1, 1),
			messages = self.props.messages,
		}, self.props[Roact.Children]),
	})
end

return ScrollingView
