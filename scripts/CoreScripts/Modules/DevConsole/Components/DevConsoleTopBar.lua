local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(script.Parent.Parent.Constants)
local FRAME_HEIGHT = Constants.TopBarFormatting.FrameHeight
local ICON_SIZE = .5 * FRAME_HEIGHT
local ICON_PADDING = (FRAME_HEIGHT - ICON_SIZE) / 2

local DEVCONSOLE_TEXT = "Developer Console"
local DEVCONSOLE_TEXT_X_PADDING = 4
local DEVCONSOLE_TEXT_FRAMESIZE = TextService:GetTextSize(DEVCONSOLE_TEXT, Constants.DefaultFontSize.TopBar,
	Constants.Font.TopBar, Vector2.new(0, 0))

local LiveUpdateElement = require(script.Parent.Parent.Components.LiveUpdateElement)
local SetDevConsolePosition = require(script.Parent.Parent.Actions.SetDevConsolePosition)

local DevConsoleTopBar = Roact.Component:extend("DevConsoleTopBar")

function DevConsoleTopBar:init()
	self.inputBegan = function(rbx,input)
		if self.props.isMinimized then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local absPos = self.ref.current.AbsolutePosition
			local startPos = Vector3.new(absPos.X, absPos.Y, 0)
			self:setState({
				startPos = startPos,
				startOffset = input.Position,
				moving = true,
			})
		end
	end
	self.inputChanged = function(rbx,input)
		if self.state.moving then
			local offset = self.state.startPos - self.state.startOffset
			offset = offset + input.Position
			local position = UDim2.new(0, offset.X, 0, offset.Y)
			self.props.dispatchSetDevConsolePosition(position)
		end
	end
	self.inputEnded = function(rbx,input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				moving = false,
			})
		end
	end

	self.ref = Roact.createRef()
end

function DevConsoleTopBar:render()
	local isMinimized = self.props.isMinimized
	local formFactor = self.props.formFactor

	local onMinimizeClicked = self.props.onMinimizeClicked
	local onMaximizeClicked = self.props.onMaximizeClicked
	local onCloseClicked = self.props.onCloseClicked

	local moving = self.state.moving

	local elements = {}


	elements["WindowTitle"] = Roact.createElement("TextLabel", {
		Text = DEVCONSOLE_TEXT,
		TextSize = Constants.DefaultFontSize.TopBar,
		TextColor3 = Color3.new(1, 1, 1),
		Font = Constants.Font.TopBar,
		Size = UDim2.new(0, DEVCONSOLE_TEXT_FRAMESIZE.X, 0, FRAME_HEIGHT),
		Position = UDim2.new(0, DEVCONSOLE_TEXT_X_PADDING, 0, 0),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
	})

	local liveStatsModulePos = UDim2.new(0, DEVCONSOLE_TEXT_FRAMESIZE.X, 0, 0)
	local liveStatsModuleSize = UDim2.new(1, -2 * DEVCONSOLE_TEXT_FRAMESIZE.X, 0, FRAME_HEIGHT)

	if isMinimized then
		liveStatsModulePos = UDim2.new(0, 0, 1, 0)
		liveStatsModuleSize = UDim2.new(1, 0, 1, 0)

	elseif self.ref.current then
		liveStatsModuleSize = UDim2.new(
			0,
			self.ref.current.AbsoluteSize.X - (2 * DEVCONSOLE_TEXT_FRAMESIZE.X),
			0,
			FRAME_HEIGHT
		)
	end

	local topBarLiveUpdate = self.props.topBarLiveUpdate

	elements["LiveStatsModule"] = Roact.createElement(LiveUpdateElement, {
		topBarLiveUpdate = topBarLiveUpdate,
		size = liveStatsModuleSize,
		position = liveStatsModulePos,
	})

	-- minimize and maximize buttons should only appear on desktop
	if formFactor == Constants.FormFactor.Large then
		if not isMinimized then
			elements["MinButton"] = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				Position = UDim2.new(1, -2 * FRAME_HEIGHT + ICON_PADDING, 0, ICON_PADDING),
				BorderColor3 = Color3.new(1, 0, 0),
				BackgroundColor3 = Constants.Color.BaseGray,
				BackgroundTransparency = 1,
				Image = Constants.Image.Minimize,

				[Roact.Event.Activated] = onMinimizeClicked,
			})
		else
			elements["MaxButton"] = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				Position = UDim2.new(1, -2 * FRAME_HEIGHT + ICON_PADDING, 0, ICON_PADDING),
				BorderColor3 = Color3.new(0, 0, 1),
				BackgroundColor3 = Constants.Color.BaseGray,
				BackgroundTransparency = 1,
				Image = Constants.Image.Maximize,

				[Roact.Event.Activated] = onMaximizeClicked,
			})
		end
	end

	elements["CloseButton"] = Roact.createElement("ImageButton", {
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
		Position = UDim2.new(1, -FRAME_HEIGHT + ICON_PADDING, 0, ICON_PADDING),
		BorderColor3 = Color3.new(0, 1, 0),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		Image = Constants.Image.Close,
		[Roact.Event.Activated] = onCloseClicked,
	})

	--[[ we do this to catch all inputchanged events
		if we can handle LARGE distances of continuous MouseMovmement input events
		for dragging then we might be able to remove the portal
	]]--
	elements["MovmentCatchAll"] = moving and Roact.createElement(Roact.Portal, {
		target = RobloxGui,
	}, {
		InputCatcher = Roact.createElement("ScreenGui", {}, {
			GreyOutFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Constants.Color.Black,
				BackgroundTransparency = .99,
				Active = true,

				[Roact.Event.InputChanged] = self.inputChanged,
				[Roact.Event.InputEnded] = self.inputEnded,
			})
		})
	})

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, FRAME_HEIGHT),
		BackgroundColor3 = Constants.Color.Black,
		BackgroundTransparency = .5,
		AutoButtonColor = false,
		LayoutOrder = 1,

		[Roact.Ref] = self.ref,

		[Roact.Event.InputBegan] = self.inputBegan,
	}, elements)
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetDevConsolePosition = function (size)
			dispatch(SetDevConsolePosition(size))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(DevConsoleTopBar)