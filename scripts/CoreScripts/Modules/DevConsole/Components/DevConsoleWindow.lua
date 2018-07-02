local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local DevConsole = script.Parent.Parent

local Config = require(DevConsole.Config)
local Constants = require(DevConsole.Constants)
local topBarHeight = Constants.TopBarFormatting.FrameHeight
local tabRowHeight = Constants.TabRowFormatting.FrameHeight
local utilityBarHeight = Constants.UtilityBarFormatting.FrameHeight
local rowPadding = Constants.Padding.WindowPadding

local Components = DevConsole.Components
local DevConsoleTopBar = require(Components.DevConsoleTopBar)
local TabRowContainer = require(Components.TabRowContainer)
local LogData = require(Components.Log.LogData)

local Actions = script.Parent.Parent.Actions
local ChangeDevConsoleSize = require(Actions.ChangeDevConsoleSize)
local SetDevConsoleVisibility = require(Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(Actions.SetDevConsoleMinimized)

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
	self.resizeInputBegan = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				resizeWindowSize = self.props.size,
				resizing = true,
			})
		end
	end

	self.resizeInputChanged = function(rbx,input)
		if self.state.resizing then
			local currPosition = rbx.Parent.Position
			local cornerPos = rbx.AbsolutePosition
			local x = cornerPos.X - currPosition.X.Offset
			local y = cornerPos.Y - currPosition.Y.Offset

			local newSize = UDim2.new(0, x, 0, y)
			self:setState({
				resizeWindowSize = newSize
			})
			rbx.Position = UDim2.new(1, 0, 1, 0)
		end
	end

	self.resizeInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			--reset resize-dragger
			rbx.Position = UDim2.new(1, 0, 1, 0)
			self.props.dispatchChangeDevConsoleSize(self.state.resizeWindowSize)
			self:setState({
				resizing = false
			})
		end
	end

	self.state = {
		resizing = false,
	}
end

function DevConsoleWindow:render()
	local isVisible = self.props.isVisible
	local formFactor = self.props.formFactor
	local currTabIndex = self.props.currTabIndex
	local tabList = self.props.tabList

	local isMinimized = self.props.isMinimized
	local pos = self.props.position
	local size = self.props.size

	local resizing = self.state.resizing

	if resizing then
		size = self.state.resizeWindowSize
	end
	local windowSize = size
	local windowPos = UDim2.new()

	local elements = {}

	local borderSizePixel = 16

	if formFactor ~= Constants.FormFactor.Large then
		-- none desktop/Large are full screen devconsoles
		pos = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, 0)

		windowPos = UDim2.new(0, 16, 0, 0)
		windowSize = UDim2.new(1, -32, 1, 0)

		borderSizePixel = 0
	end

	-- currently the only data module that is entirely roact/rodux
	elements["LogData"] = Roact.createElement(LogData)

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Padding = UDim.new(0, rowPadding),
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
			Position = UDim2.new(1, -500, 1, -2 * topBarHeight),
			Size = UDim2.new(0, 500, 0, 2 * topBarHeight),
			BackgroundColor3 = Color3.new(0, 0, 0),
			Transparency = Config.MainWindowElement.Transparency,
			Draggable = (formFactor == Constants.FormFactor.Large),
			Active = (formFactor == Constants.FormFactor.Large),
			Visible = isVisible,
			BorderColor3 = Constants.Color.BaseGray,
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

		local mainViewSize = size

		local TopSectionHeight = topBarHeight + tabRowHeight + utilityBarHeight + 3 * rowPadding
		local mainViewSizeOffset = UDim2.new(0, 0, 0, TopSectionHeight)
		mainViewSize = mainViewSize - mainViewSizeOffset

		elements["TabRow"] = Roact.createElement(TabRowContainer, {
			LayoutOrder = 2,
			tabList = tabList,
			windowWidth = size.X.Offset,
			formFactor = formFactor,
		})

		if tabList and currTabIndex > 0 then
			elements["MainView"] = Roact.createElement(tabList[currTabIndex].tab,{
				size = mainViewSize,
			})
		end

		local window = Roact.createElement("Frame", {
			Size = windowSize,
			Position = windowPos,
			Transparency = 1,
		},elements)

		return Roact.createElement("Frame", {
			Position = pos,
			Size = size,
			BackgroundColor3 = Color3.new(0, 0, 0),
			Transparency = Config.MainWindowElement.Transparency,
			Draggable = (formFactor == Constants.FormFactor.Large),
			Active = (formFactor == Constants.FormFactor.Large),
			Visible = isVisible,
			BorderColor3 = Constants.Color.BaseGray,
			BorderSizePixel = borderSizePixel,
		}, {
			DevConsoleUI = window,
			ResizeButton = 	Roact.createElement("ImageButton", {
				Position = UDim2.new(1, 0, 1, 0),
				Size = UDim2.new(0, 16, 0, 16),
				BackgroundColor3 = Color3.new(0, 0, 0),
				Draggable = true,

				[Roact.Event.InputBegan] = self.resizeInputBegan,
				[Roact.Event.InputChanged] = self.resizeInputChanged,
				[Roact.Event.InputEnded] = self.resizeInputEnded,
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