local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)

local RoactDummyPageWrap = Roact.PureComponent:extend("RoactDummyPageWrap")

function RoactDummyPageWrap:render()
	local isVisible = self.props.isVisible
	local pageType = self.props.pageType

	return Roact.createElement("ScreenGui", {
		Enabled = isVisible,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Text = pageType,
			TextSize = 30,
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
		}),
	})
end

return RoactDummyPageWrap