local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local topBarHeight = Constants.TopBarFormatting.FrameHeight
local iconSize = .5 * topBarHeight
local iconPadding = (topBarHeight - iconSize) / 2

local LiveUpdateElement = require(script.Parent.Parent.Components.LiveUpdateElement)

local DevConsoleTopBar = Roact.Component:extend("DevConsoleTopBar")

function DevConsoleTopBar:render()
	local isMinimized = self.props.isMinimized
	local platform = self.props.platform

	local onMinimizeClicked = self.props.onMinimizeClicked
	local onMaximizeClicked = self.props.onMaximizeClicked
	local onCloseClicked = self.props.onCloseClicked

	local elements = {}

	elements["WindowTitle"] = Roact.createElement("TextLabel", {
		Text = "Developer Console",
		TextSize = Constants.DefaultFontSize.TopBar,
		TextColor3 = Color3.new(1, 1, 1),
		Font = Constants.Font.TopBar,
		Size = UDim2.new(0, 250, 0, topBarHeight),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
	})

	local liveStatsModulePos = UDim2.new(.25, 0, 0, 0)
	local liveStatsModuleSize = UDim2.new(.5, 0, 0, topBarHeight)

	if platform == Constants.Platform.Desktop and isMinimized then
		liveStatsModulePos = UDim2.new(0, 0, 0, topBarHeight)
		liveStatsModuleSize = UDim2.new(1, 0, 0, topBarHeight)
	end

	local topBarLiveUpdate = self.props.topBarLiveUpdate

	elements["LiveStatsModule"] = Roact.createElement(LiveUpdateElement, {
		topBarLiveUpdate = topBarLiveUpdate,
		size = liveStatsModuleSize,
		position = liveStatsModulePos,
	})

	-- minimize and maximize buttons should only appear on desktop
	if platform == Constants.Platform.Desktop then
		if not isMinimized then
			elements["MinButton"] = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				Position = UDim2.new(1, -2 * topBarHeight + iconPadding, 0, iconPadding),
				BorderColor3 = Color3.new(1, 0, 0),
				BackgroundColor3 = Constants.Color.BaseGray,
				BackgroundTransparency = 1,
				Image = Constants.Image.Minimize,

				[Roact.Event.Activated] = onMinimizeClicked,
			})
		else
			elements["MaxButton"] = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				Position = UDim2.new(1, -2 * topBarHeight + iconPadding, 0, iconPadding),
				BorderColor3 = Color3.new(0, 0, 1),
				BackgroundColor3 = Constants.Color.BaseGray,
				BackgroundTransparency = 1,
				Image = Constants.Image.Maximize,

				[Roact.Event.Activated] = onMaximizeClicked,
			})
		end
	end

	elements["CloseButton"] = Roact.createElement("ImageButton", {
		Size = UDim2.new(0, iconSize, 0, iconSize),
		Position = UDim2.new(1, -topBarHeight + iconPadding, 0, iconPadding),
		BorderColor3 = Color3.new(0, 1, 0),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		Image = Constants.Image.Close,
		[Roact.Event.Activated] = onCloseClicked,
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, topBarHeight),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = Constants.Color.Black,
		BackgroundTransparency = Constants.TopBarFormatting.BarTransparency,
		LayoutOrder = 0
	}, elements)
end

return DevConsoleTopBar
