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
		bottomLockedScrollView = Roact.createElement(BottomLockedScrollView, nil, self.props[Roact.Children]),
	})
end

return ScrollingView
