local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Constants = require(script.Parent.Parent.Constants)
local FRAME_HEIGHT = Constants.TopBarFormatting.FrameHeight
local ICON_SIZE = 0.5 * FRAME_HEIGHT
local ICON_PADDING = (FRAME_HEIGHT - ICON_SIZE) / 2

local UserInputService = game:GetService("UserInputService")

local DEVCONSOLE_TEXT = "Developer Console"
local DEVCONSOLE_TEXT_X_PADDING = 4
local DEVCONSOLE_TEXT_FRAMESIZE =
	TextService:GetTextSize(DEVCONSOLE_TEXT, Constants.DefaultFontSize.TopBar, Constants.Font.TopBar, Vector2.new(0, 0))

local LiveUpdateElement = require(script.Parent.Parent.Components.LiveUpdateElement)
local SetDevConsolePosition = require(script.Parent.Parent.Actions.SetDevConsolePosition)

local FFlagDevConsoleTopBarDragFix = game:DefineFastFlag("DevConsoleTopBarDragFix", false)

local DevConsoleTopBar = Roact.Component:extend("DevConsoleTopBar")

function DevConsoleTopBar:init()
	self.inputChangedConnection = nil

	if FFlagDevConsoleTopBarDragFix then
		self.inputChangedDisconnectRetries = 0
	end

	self.inputBegan = function(rbx, input)
		if self.props.isMinimized then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local absPos = self.ref.current.AbsolutePosition
			local startPos = Vector3.new(absPos.X, absPos.Y, 0)

			-- connect to UserInputChanged to get mouse movement inputs. This connection has to be on UserInputService
			-- and not the button's InputChanged because the button will stop receiving events if the mouse is moved off of the GUI
			if self.inputChangedConnection then
				self.inputChangedConnection:Disconnect()
				self.inputChangedConnection = nil
			end
			self.inputChangedConnection = UserInputService.InputChanged:Connect(function(input)
				self.inputChanged(nil, input)
			end)

			self:setState({
				startPos = startPos,
				startOffset = input.Position,
				moving = true, -- dev console is currently being dragged
			})

			if FFlagDevConsoleTopBarDragFix then
				self.inputChangedDisconnectRetries = 1
			end
		end
	end
	self.inputChanged = function(rbx, input)
		if self.state.moving then
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				local offset = self.state.startPos - self.state.startOffset
				offset = offset + input.Position
				local position = UDim2.new(0, offset.X, 0, offset.Y)
				self.props.dispatchSetDevConsolePosition(position)
			end
		elseif self.inputChangedConnection then -- this connection should not be connected if the console is not being dragged
			if FFlagDevConsoleTopBarDragFix and self.inputChangedDisconnectRetries > 0 then
				self.inputChangedDisconnectRetries = self.inputChangedDisconnectRetries - 1
			else
				self.inputChangedConnection:Disconnect()
				self.inputChangedConnection = nil
			end
		end
	end
	self.inputEnded = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			and input.UserInputState == Enum.UserInputState.End
		then
			-- stop listening to inputchanged when stopping dragging to save performance
			if self.inputChangedConnection then
				self.inputChangedConnection:Disconnect()
				self.inputChangedConnection = nil
			end

			self:setState({
				moving = false, -- stop dev console dragging
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

	-- padding multiplied by two for the padding on the left and the right
	local devConsoleTextSizeAndPadding = DEVCONSOLE_TEXT_FRAMESIZE.X + (DEVCONSOLE_TEXT_X_PADDING * 2)
	local liveStatsModulePos = UDim2.new(0, devConsoleTextSizeAndPadding, 0, 0)
	local liveStatsModuleSize = UDim2.new(1, -2 * devConsoleTextSizeAndPadding, 0, FRAME_HEIGHT)

	if isMinimized then
		liveStatsModulePos = UDim2.new(0, 0, 1, 0)
		liveStatsModuleSize = UDim2.new(1, 0, 1, 0)
	elseif self.ref.current then
		liveStatsModuleSize =
			UDim2.new(0, self.ref.current.AbsoluteSize.X - (2 * DEVCONSOLE_TEXT_FRAMESIZE.X), 0, FRAME_HEIGHT)
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
		ZIndex = 2,
		Image = Constants.Image.Close,
		[Roact.Event.Activated] = onCloseClicked,
	})

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, FRAME_HEIGHT),
		BackgroundColor3 = Constants.Color.Black,
		BackgroundTransparency = 0.5,
		AutoButtonColor = false,
		LayoutOrder = 1,

		[Roact.Ref] = self.ref,

		[Roact.Event.InputBegan] = self.inputBegan,
		[Roact.Event.InputEnded] = self.inputEnded,
	}, elements)
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetDevConsolePosition = function(size)
			dispatch(SetDevConsolePosition(size))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(DevConsoleTopBar)
