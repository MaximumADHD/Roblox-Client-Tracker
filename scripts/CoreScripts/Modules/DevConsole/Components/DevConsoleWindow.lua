local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui").RobloxGui
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local setMouseVisibility = require(script.Parent.Parent.Util.setMouseVisibility)

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local DevConsole = script.Parent.Parent

local Constants = require(DevConsole.Constants)
local TOPBAR_HEIGHT = Constants.TopBarFormatting.FrameHeight
local ROW_PADDING = Constants.Padding.WindowPadding
local MIN_SIZE = Constants.MainWindowInit.MinSize

local Components = DevConsole.Components
local DevConsoleTopBar = require(Components.DevConsoleTopBar)

local Actions = script.Parent.Parent.Actions
local ChangeDevConsoleSize = require(Actions.ChangeDevConsoleSize)
local SetDevConsoleVisibility = require(Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(Actions.SetDevConsoleMinimized)

local BORDER_SIZE = 16

local DevConsoleWindow = Roact.PureComponent:extend("DevConsoleWindow")

function DevConsoleWindow:onMinimizeClicked()
	self.props.dispatchSetDevConsoleMinimized(true)
end

function DevConsoleWindow:onMaximizeClicked()
	self.props.dispatchSetDevConsoleMinimized(false)
end

function DevConsoleWindow:onCloseClicked()
	self.props.dispatchSetDevConsolVisibility(false)

end

function DevConsoleWindow:init()
	self.setDevConsoleSize = function (self, topLeft, bottomRight)
		local x = bottomRight.X - topLeft.X
		local y = bottomRight.Y - topLeft.Y

		x = x < MIN_SIZE.X and MIN_SIZE.X or x
		y = y < MIN_SIZE.Y and MIN_SIZE.Y or y

		self.props.dispatchChangeDevConsoleSize(UDim2.new(0, x, 0, y))
	end

	self.resizeInputBegan = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				resizing = true,
			})
		end
	end

	self.resizeInputChanged = function(rbx,input)
		if self.state.resizing then
			local currPosition = self.ref.current.AbsolutePosition
			local cornerPos = input.Position

			self:setDevConsoleSize(currPosition, cornerPos)
		end
	end

	self.resizeInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			--reset resize-dragger
			self:setState({
				resizing = false
			})
		end
	end

	self.doGamepadMenuButton = function(input)
		if self.props.isVisible then
			local keyToListenTo = input.KeyCode == Enum.KeyCode.ButtonStart or input.KeyCode == Enum.KeyCode.Escape
			if keyToListenTo then
				self.props.dispatchSetDevConsolVisibility(false)
			end
		end
	end

	self.ref = Roact.createRef()

	self.state = {
		resizing = false,
	}
end

function DevConsoleWindow:didMount()
	-- we need to run this delay before grabbing the size of the frame
	-- because the DevconsoleWindow is mounted before the ScreenGui
	-- is resized to the correct screen size.
	delay(0, function ()
		if self.ref.current then
			local absPos1 = self.ref.current.AbsolutePosition
			local absPos2 = self.ref.current.ResizeButton.AbsolutePosition
			self:setDevConsoleSize(absPos1, absPos2)
		end
	end)
	setMouseVisibility(self.props.isVisible)

	self.gamepadMenuListener = UserInputService.InputBegan:Connect(self.doGamepadMenuButton)
end

function DevConsoleWindow:willUnmount()
	if GuiService.SelectedCoreObject == self.ref.current then
		GuiService.SelectedCoreObject = nil
	end

	self.gamepadMenuListener:Disconnect()
end

function DevConsoleWindow:didUpdate(previousProps, previousState)
	setMouseVisibility(self.props.isVisible)

	if self.props.isMinimized and (GuiService.SelectedCoreObject == self.ref.current) then
		GuiService.SelectedCoreObject = nil

	elseif self.props.isVisible ~= previousProps.isVisible or
		self.props.currTabIndex ~= previousProps.currTabIndex then
		local inputTypeEnum = UserInputService:GetLastInputType()
		local isGamepad = (Enum.UserInputType.Gamepad1 == inputTypeEnum)

		if isGamepad and self.props.isVisible then
			GuiService.SelectedCoreObject = self.ref.current
		else
			GuiService.SelectedCoreObject = nil
		end
	end
end

function DevConsoleWindow:render()
	local isVisible = self.props.isVisible
	local formFactor = self.props.formFactor
	local isdeveloperView = self.props.isdeveloperView
	local currTabIndex = self.props.currTabIndex
	local tabList = self.props.tabList

	local isMinimized = self.props.isMinimized
	local pos = self.props.position
	local size = self.props.size

	local resizing = self.state.resizing

	local windowSize = size
	local windowPos = UDim2.new()

	local elements = {}
	local borderSizePixel = BORDER_SIZE


	if formFactor ~= Constants.FormFactor.Large then
		-- none desktop/Large are full screen devconsoles
		local absSize = CoreGui.AbsoluteSize
		size = UDim2.new(0, absSize.X, 0, absSize.Y)
		pos = UDim2.new(0, 0, 0, 0)

		windowPos = UDim2.new(0, 16, 0, 0)
		windowSize = size + UDim2.new(0, -32, 0, 0)

		borderSizePixel = 0
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Padding = UDim.new(0, ROW_PADDING),
	})

	if isMinimized then
		elements["TopBar"] = Roact.createElement(DevConsoleTopBar, {
			LayoutOrder = 1,
			formFactor = formFactor,
			isMinimized = true,
			onMinimizeClicked = function()
				self:onMinimizeClicked()
			end,
			onMaximizeClicked = function()
				self:onMaximizeClicked()
			end,
			onCloseClicked = function()
				self:onCloseClicked()
			end,
		})

		return Roact.createElement("Frame", {
			Position = UDim2.new(1, -500, 1, -2 * TOPBAR_HEIGHT),
			Size = UDim2.new(0, 500, 0, 2 * TOPBAR_HEIGHT),
			BackgroundColor3 = Color3.new(0, 0, 0),
			Transparency = Constants.MainWindowInit.Transparency,
			Active = true,
			AutoLocalize = false,
			Visible = isVisible,
			Selectable = true,
			BorderColor3 = Constants.Color.BaseGray,

			[Roact.Ref] = self.ref,
		}, elements)
	else
		elements["TopBar"] = Roact.createElement(DevConsoleTopBar, {
			LayoutOrder = 1,
			formFactor = formFactor,
			isMinimized = false,
			onMinimizeClicked = function()
				self:onMinimizeClicked()
			end,
			onMaximizeClicked = function()
				self:onMaximizeClicked()
			end,
			onCloseClicked = function()
				self:onCloseClicked()
			end,
		})

		local mainViewSize = windowSize

		local TopSectionHeight = TOPBAR_HEIGHT + 2 * ROW_PADDING
		local mainViewSizeOffset = UDim2.new(0, 0, 0, TopSectionHeight)
		mainViewSize = mainViewSize - mainViewSizeOffset


		if self.ref.current and isVisible and tabList then
			local targetTab = tabList[currTabIndex]
			if targetTab then
				elements["MainView"] = Roact.createElement( targetTab.tab, {
					size = mainViewSize,
					formFactor = formFactor,
					isdeveloperView = isdeveloperView,
					tabList = tabList,
				})
			end
		end

		return Roact.createElement("Frame", {
			Position = pos,
			Size = size,
			Visible = isVisible,
			BackgroundColor3 = Color3.new(0, 0, 0),
			Transparency = Constants.MainWindowInit.Transparency,
			BorderColor3 = Constants.Color.BaseGray,
			BorderSizePixel = borderSizePixel,
			Active = true,
			AutoLocalize = false,
			Selectable = false,

			[Roact.Ref] = self.ref,
		}, {
			DevConsoleUI = Roact.createElement("Frame", {
				Size = windowSize,
				Position = windowPos,
				BackgroundTransparency = 1,
			},elements),

			ResizeButton = 	Roact.createElement("ImageButton", {
				Position =  UDim2.new(1, 0, 1, 0),
				Size = UDim2.new(0, borderSizePixel, 0, borderSizePixel),
				BackgroundColor3 = Color3.new(0, 0, 0),
				Modal = true,

				[Roact.Event.InputBegan] = self.resizeInputBegan,
			}),
			--[[ we do this to catch all inputchanged events
				if we can handle LARGE distances of continuous MouseMovmement input events
				for dragging then we might be able to remove the portal
			]]--
			ResizeCatchAll = resizing and Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				InputCatcher = Roact.createElement("ScreenGui", {}, {
					GreyOutFrame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundColor3 = Constants.Color.Black,
						BackgroundTransparency = .99,
						Active = true,

						[Roact.Event.InputChanged] = self.resizeInputChanged,
						[Roact.Event.InputEnded] = self.resizeInputEnded,
					})
				})
			})
		})
	end
end

local function mapStateToProps(state, props)
	return {
		isVisible = state.DisplayOptions.isVisible,
		isMinimized = state.DisplayOptions.isMinimized,
		position = state.DisplayOptions.position,
		size = state.DisplayOptions.size,
		currTabIndex = state.MainView.currTabIndex,
		tabList = state.MainView.tabList,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeDevConsoleSize = function (size)
			dispatch(ChangeDevConsoleSize(size))
		end,
		dispatchSetDevConsolVisibility = function (isVisible)
			dispatch(SetDevConsoleVisibility(isVisible))
		end,
		dispatchSetDevConsoleMinimized = function (isMinimized)
			dispatch(SetDevConsoleMinimized(isMinimized))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(DevConsoleWindow)
