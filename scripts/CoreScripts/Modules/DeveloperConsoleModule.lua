-- Made by Tomarty (talk to me if you have questions)

--[[ Globals ]]--
-- Quick optimizations
local Instance_new = Instance.new
local UDim2_new = UDim2.new
local Color3_new = Color3.new
local math_max = math.max
local tick = tick
local pairs = pairs
local os_time = os.time

local DEBUG = false

local AnalyticsCategory_Game = "Game"
local AnalyticsAction_InitialOpenTab = "DeveloperConsole_InitialOpenTab"
local AnalyticsAction_ClickToOpenOpenTab = "DeveloperConsole_ClickToOpenOpenTab"

--[[ Services ]]--
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")

local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local isTenFootInterface = GuiService:IsTenFootInterface()

--[[ Modules ]]--
local ClientMemoryAnalyzerClass = require(CoreGui.RobloxGui.Modules.Stats.ClientMemoryAnalyzer)
local ServerMemoryAnalyzerClass = require(CoreGui.RobloxGui.Modules.Stats.ServerMemoryAnalyzer)

local StatsUtils = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local Style = require(CoreGui.RobloxGui.Modules.Stats.DeveloperConsoleStyle)
local Primitives = require(CoreGui.RobloxGui.Modules.Stats.DeveloperConsolePrimitives)

--[[ Flags ]]--
local function checkFFlag(flagName) 
	local flagSuccess, flagValue = pcall(function() 
			return settings():GetFFlag(flagName)
		end)
	return (flagSuccess and flagValue)
end

local disablePassiveClientLogProcessing = checkFFlag("DisablePassiveClientLogProcessing")

-- Eye candy uses RenderStepped
local EYECANDY_ENABLED = true

local AUTO_TAB_WIDTH = -1
local TAB_TEXT_SIZE = 14
local TAB_TEXT_PADDING = 8


local function CreateSignal()
	local this = {}

	local mBindableEvent = Instance.new('BindableEvent')
	local mAllCns = {} --all connection objects returned by mBindableEvent::connect

	--main functions
	function this:connect(func)
		if self ~= this then error("connect must be called with `:`, not `.`", 2) end
		if type(func) ~= 'function' then
			error("Argument #1 of connect must be a function, got a "..type(func), 2)
		end
		local cn = mBindableEvent.Event:Connect(func)
		mAllCns[cn] = true
		local pubCn = {}
		function pubCn:disconnect()
			cn:Disconnect()
			mAllCns[cn] = nil
		end
		pubCn.Disconnect = pubCn.disconnect
		
		return pubCn
	end
	
	function this:disconnect()
		if self ~= this then error("disconnect must be called with `:`, not `.`", 2) end
		for cn, _ in pairs(mAllCns) do
			cn:Disconnect()
			mAllCns[cn] = nil
		end
	end
	
	function this:wait()
		if self ~= this then error("wait must be called with `:`, not `.`", 2) end
		return mBindableEvent.Event:Wait()
	end
	
	function this:fire(...)
		if self ~= this then error("fire must be called with `:`, not `.`", 2) end
		mBindableEvent:Fire(...)
	end
	
	this.Connect = this.connect
	this.Disconnect = this.disconnect
	this.Wait = this.wait
	this.Fire = this.fire

	return this
end

-- This is a Signal that only calls once, then forgets about the function. It also accepts event listeners as functions
local CreateDisconnectSignal; do
	local Methods = {}
	local Metatable = {__index = Methods}
	function Methods.fire(this, ...)
		return this.Signal:fire(...)
	end
	function Methods.wait(this, ...)
		return this.Signal:wait(...)
	end
	function Methods.connect(this, func)
		local t = type(func)
		if t == 'table' or t == 'userdata' then
			-- Got event listener
			local listener = func
			function func()
				listener:disconnect()
			end
		elseif t ~= 'function' then
			error('Invalid disconnect method type: ' .. t, 2)
		end

		local listener;
		listener = this.Signal:connect(function(...)
			if listener then
				listener:disconnect()
				listener = nil
				func(...)
			end
		end)
		return listener
	end
	function CreateDisconnectSignal()
		return setmetatable({
			Signal = CreateSignal();
		}, Metatable)
	end
end

-- Services
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local TouchEnabled = UserInputService.TouchEnabled

local DeveloperConsole = {}

local Methods = {}
local Metatable = {__index = Methods}

-------------------------
-- Listener management --
-------------------------
function Methods.ConnectSetVisible(devConsole, func)
	-- This is used mainly for pausing rendering and stuff when the console isn't visible
	func(devConsole.Visible)
	return devConsole.VisibleChanged:connect(function(visible)
		func(visible)
	end)
end
function Methods.ConnectObjectSetVisible(devConsole, object, func)
	-- Same as above, but used for calling methods like object:SetVisible()
	func(object, devConsole.Visible)
	return devConsole.VisibleChanged:connect(function(visible)
		func(object, visible)
	end)
end

-----------------------------
-- Frame/Window Dimensions --
-----------------------------

local function connectPropertyChanged(object, property, callback)
	return object.Changed:connect(function(propertyChanged)
		if propertyChanged == property then
			callback(object[property])
		end
	end)
end

function Methods.ResetFrameDimensions(devConsole)
	devConsole.Frame.Size = UDim2_new(0.5, 20, 0.5, 20);
	
	local abSize = devConsole.Frame.AbsoluteSize
	devConsole:SetFrameSize(abSize.x, abSize.y)
	local newSize = devConsole.Frame.Size
	devConsole.Frame.Position = UDim2_new(0.5, -newSize.X.Offset/2, 0.5, -newSize.Y.Offset/2)
end
function Methods.BoundFrameSize(devConsole, x, y)
	-- Minimum frame size
	return math_max(x, 400), math_max(y, 200)
end
function Methods.SetFrameSize(devConsole, x, y)
	x, y = devConsole:BoundFrameSize(x, y)
	devConsole.Frame.Size = UDim2_new(0, x, 0, y)
end
function Methods.BoundFramePosition(devConsole, x, y)
	-- Make sure the frame doesn't go somewhere where the bar can't be clicked
	return x, math_max(y, 0)
end
function Methods.SetFramePosition(devConsole, x, y)
	x, y = devConsole:BoundFramePosition(x, y)
	devConsole.Frame.Position = UDim2_new(0, x, 0, y)
end

-- Open/Close the console
function Methods.SetVisible(devConsole, visible, animate)
	if devConsole.Visible == visible then
		return
	end
	devConsole.Visible = visible
	devConsole.VisibleChanged:fire(visible)
	if devConsole.Frame then
		devConsole.Frame.Visible = visible
	end	
	if visible then -- Open the console
		devConsole:ResetFrameDimensions()
  
		local tab = devConsole:GetCurrentOpenTab()
		if (tab ~= nil) then 
			tab:RecordInitialOpen()
		end
	end
  	if VRService.VREnabled then
  		if visible then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		end
	end
end

-----------------
-- Constructor --
-----------------
function DeveloperConsole.new(screenGui, permissions, messagesAndStats)

	local visibleChanged = CreateSignal()
	
	local devConsole = {
		ScreenGui = screenGui;
		Permissions = permissions;
		MessagesAndStats = messagesAndStats;
		Initialized = false;
		Visible = false;
		Tabs = {};
		CurrentOpenedTab = nil;	-- save last tab opened to set SelectedCoreObject for TenFootInterfaces
		VisibleChanged = visibleChanged; -- Created by :Initialize(); It's used to stop and disconnect things when the window is hidden
	}
	
	setmetatable(devConsole, Metatable)

	devConsole:EnableGUIMouse()
	
	-- It's a button so it catches mouse events
	local frame = Primitives.Button(screenGui, 'DeveloperConsole')
	frame.AutoButtonColor = false
	--frame.ClipsDescendants = true
	frame.Visible = devConsole.Visible
	frame.Selectable = not isTenFootInterface

	local function onVREnabled()
		frame.Modal = VRService.VREnabled
	end
	onVREnabled()
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)

	devConsole.Frame = frame
	devConsole:ResetFrameDimensions()
	
	-- The bar at the top that you can drag around
	local handle = Primitives.Button(frame, 'Handle')
	handle.Size = UDim2_new(1, -(Style.HandleHeight + Style.BorderSize), 0, Style.HandleHeight)
	handle.Selectable = not isTenFootInterface
	handle.Modal = true -- Unlocks mouse
	handle.AutoButtonColor = false
	
	
	do -- Title
		local title = Primitives.InvisibleTextLabel(handle, 'Title', "Roblox Developer Console")
		title.Size = UDim2_new(1, -5, 1, 0)
		title.Position = UDim2_new(0, 5, 0, 0)	
		title.FontSize = Enum.FontSize.Size18
		title.TextXAlignment = Enum.TextXAlignment.Left
	end
	
	local function setCornerButtonImageSize(buttonImage, buttonImageSize)
		buttonImage.Size = UDim2_new(buttonImageSize, 0, buttonImageSize, 0)
		buttonImage.Position = UDim2_new((1 - buttonImageSize) / 2, 0, (1 - buttonImageSize) / 2, 0)		
	end
  
	-- This is used for creating the square exit button and the square window resize button
	local function createCornerButton(name, x, y, image, buttonImageSize)
		-- Corners (x, y):
		-- (0, 0) (1, 0)
		-- (0, 1) (1, 1)
		
		local button = Primitives.Button(frame, name)
		button.Size = UDim2_new(0, Style.HandleHeight, 0, Style.HandleHeight)
		button.Position = UDim2_new(x, -x * Style.HandleHeight, y, -y * Style.HandleHeight)
		
		local buttonImage = Primitives.InvisibleImageLabel(button, 'Image', image)
		setCornerButtonImageSize(buttonImage, buttonImageSize)
		
		return button, buttonImage
	end
	
	do -- Create top right exit button
		local exitButton, exitButtonImage = createCornerButton('Exit', 1, 0, 'https://www.roblox.com/asset/?id=261878266', 2/3)
		exitButton.AutoButtonColor = false
		exitButton.Visible = not isTenFootInterface
		exitButton.Selectable = not isTenFootInterface
		
		local buttonEffectFunction = devConsole:CreateButtonEffectFunction(exitButton)
		
		devConsole:ConnectButtonHover(exitButton, function(clicking, hovering)
			if hovering and not clicking then
				setCornerButtonImageSize(exitButtonImage, 3/4)
			else
				setCornerButtonImageSize(exitButtonImage, 2/3)
			end
			buttonEffectFunction(clicking, hovering)
		end)
		
		exitButton.MouseButton1Click:connect(function()
			devConsole:SetVisible(false, true)
		end)
	end
	
	do -- Repositioning and Resizing
		
		do -- Create bottom right window resize button and activate resize dragging
			local resizeButton, resizeButtonImage = createCornerButton('Resize', 1, 1, 'https://www.roblox.com/asset/?id=261880743', 1)
			resizeButtonImage.Position = UDim2_new(0, 0, 0, 0)
			resizeButtonImage.Size = UDim2_new(1, 0, 1, 0)
			resizeButton.Selectable = not isTenFootInterface

			local dragging = false
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(resizeButton)
			
			devConsole:ConnectButtonDragging(resizeButton, function()
				local x0, y0 = frame.AbsoluteSize.X, frame.AbsoluteSize.Y
				return function(dx, dy)
					devConsole:SetFrameSize(x0 + dx, y0 + dy)
				end
			end, function(clicking, hovering)
				dragging = clicking
				buttonEffectFunction(clicking, hovering)
			end)
			
		end
		
		do -- Activate top handle dragging
			local frame = devConsole.Frame
			local handle = frame.Handle
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(handle)
			
			devConsole:ConnectButtonDragging(handle, function()
				local x, y = frame.AbsolutePosition.X, frame.AbsolutePosition.Y
				return function(dx, dy)
					devConsole:SetFramePosition(x + dx, y + dy)
				end
				--deltaCallback_Resize(-dx, -dy) -- Used if they are grabbing both at the same time
			end, buttonEffectFunction)
		end
	end
	
	-- interiorFrame contains tabContainer and window
	local interiorFrame = Primitives.FolderFrame(frame, 'Interior')
	interiorFrame.Position = UDim2_new(0, 0, 0, Style.HandleHeight)
	interiorFrame.Size = UDim2_new(1, -(Style.HandleHeight + Style.BorderSize * 2), 1, -(Style.HandleHeight + Style.BorderSize))
	
	local windowContainer = Primitives.FolderFrame(interiorFrame, 'WindowContainer')
	windowContainer.Size = UDim2_new(1, 0, 1, -(Style.TabHeight))
	windowContainer.Position = UDim2_new(0, Style.BorderSize, 0, Style.TabHeight)
	
	-- This is what applies ClipsDescendants to tab contents
	local window = Primitives.Frame(windowContainer, 'Window')
	window.Size = UDim2_new(1, 0, 1, 0) -- The tab open/close methods, and the consoles also set this
	window.Position = UDim2_new(0, 0, 0, 0)
	window.ClipsDescendants = true
	
	-- This is the frame that moves around with the scroll bar
	local body = Primitives.FolderFrame(window, 'Body')
	
	do -- Scrollbars
		local scrollbar = devConsole:CreateScrollbar()
		devConsole.WindowScrollbar = scrollbar
		local scrollbarFrame = scrollbar.Frame
		scrollbarFrame.Parent = frame
		scrollbarFrame.Size = UDim2_new(0, Style.HandleHeight, 1, -(Style.HandleHeight + Style.BorderSize) * 2)
		scrollbarFrame.Position = UDim2_new(1, -Style.HandleHeight, 0, Style.HandleHeight + Style.BorderSize)
		
		devConsole:ApplyScrollbarToFrame(scrollbar, window, body, frame)
	end
	
	local tabContainer = Primitives.FolderFrame(interiorFrame, 'Tabs') -- Shouldn't this be named 'tabFrame'?
	tabContainer.Size = UDim2_new(1, -(Style.GearSize + Style.BorderSize), 0, Style.TabHeight)
	tabContainer.Position = UDim2_new(0, 0, 0, 0)
	tabContainer.ClipsDescendants = true
	
	-- Options button
	local optionsButton = Primitives.InvisibleButton(frame, 'OptionsButton')
	
	local optionsClippingFrame = Primitives.FolderFrame(interiorFrame, 'OptionsClippingFrame')
	optionsClippingFrame.ClipsDescendants = true
	optionsClippingFrame.Position = UDim2_new(0, 0, 0, 0)
	optionsClippingFrame.Size = UDim2_new(1, 0, 0, 0)
	local optionsFrame = Primitives.FolderFrame(optionsClippingFrame, 'OptionsFrame')
	optionsFrame.Size = UDim2_new(1, 0, 0, Style.OptionAreaHeight)
	optionsFrame.Position = UDim2_new(0, 0, 0, Style.OptionAreaHeight)
	--optionsFrame.BackgroundColor3 = Style.OptionsFrameColor
	do -- Options animation
		
		local gearSize = Style.GearSize
		local tabHeight = Style.TabHeight
		local offset = (tabHeight - gearSize) / 2
		optionsButton.Size = UDim2_new(0, Style.GearSize, 0, Style.GearSize)
		optionsButton.Position = UDim2_new(1, -(Style.GearSize + offset + Style.HandleHeight), 0, Style.HandleHeight + offset)
		local gear = Primitives.InvisibleImageLabel(optionsButton, 'Image', 'https://www.roblox.com/asset/?id=261882463')
		--gear.ZIndex = ZINDEX + 1
		local animationToggle = devConsole:GenerateOptionButtonAnimationToggle(interiorFrame, optionsButton, gear, tabContainer, optionsClippingFrame, optionsFrame)
		local open = false
		optionsButton.MouseButton1Click:connect(function()
			open = not open
			animationToggle(open)
		end)
		
	end
	
	-- Console/Log and Stats options
	local setShownOptionTypes; -- Toggles what options to show: setOptionType({Log = true})
	
	local textFilter, scriptStatFilter;
	local textFilterChanged, scriptStatFilterChanged;
	
	local messageFilter;
	local messageFilterChanged, messageTextWrappedChanged;
	do -- Options contents/filters
		
		local function createCheckbox(color, callback)
			local this = {
				Value = true;
			}
			
			local frame = Primitives.FolderFrame(nil, 'Checkbox')
			this.Frame = frame
			frame.Size = UDim2_new(0, Style.CheckboxSize, 0, Style.CheckboxSize)
			frame.BackgroundColor3 = color
			
			local padding = 2
			
			local function f(xs, xp, yp) -- quick way to get an opaque border around a transparent center
				local ys = 1 - xs
				local f = Primitives.Frame(frame, 'Border')
				f.BackgroundColor3 = color
				f.BackgroundTransparency = 0
				f.Size = UDim2_new(xs, ys * padding, ys, xs * padding)
				f.Position = UDim2_new(xp, -xp * padding, yp, -yp * padding)
			end
			f(1, 0, 0)
			f(1, 0, 1)
			f(0, 0, 0)
			f(0, 1, 0)
			
			local button = Primitives.Button(frame, 'Button')
			button.Size = UDim2_new(1, -padding * 2, 1, -padding * 2)
			button.Position = UDim2_new(0, padding, 0, padding)
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(button)
			
			local check = Primitives.Frame(button, 'Check')
			
			local padding = 4
			check.Size = UDim2_new(1, -padding * 2, 1, -padding * 2)
			check.Position = UDim2_new(0, padding, 0, padding)
			check.BackgroundColor3 = color
			check.BackgroundTransparency = 0
			
			devConsole:ConnectButtonHover(button, buttonEffectFunction)
			
			function this.SetValue(this, value)
				if value == this.Value then
					return
				end
				this.Value = value
				check.Visible = value
				this.Value = value
				callback(value)
			end
			
			button.MouseButton1Click:connect(function()
				this:SetValue(not this.Value)
			end)
			
			return this
		end
		
		local string_find = string.find
		local containsString; -- the text typed into the search textBox, nil if equal to ""
		
		function textFilter(text)
			return not containsString or string_find(text:lower(), containsString)
		end
		
		local filterLookup = {} -- filterLookup[Enum.MessageType.x.Value] = true or false
		function messageFilter(message)
			return filterLookup[message.Type] and (not containsString or string_find(message.Message:lower(), containsString))
		end
		
		-- Events
		textFilterChanged = CreateSignal()
		scriptStatFilterChanged = CreateSignal()
		
		messageFilterChanged = CreateSignal()
		messageTextWrappedChanged = CreateSignal()
		
		local optionTypeContainers = {
			--[OptionType] = Frame
			--Log = Frame;
			--Scripts = Frame;
		}
		function setShownOptionTypes(shownOptionTypes)
			-- Example showOptionTypes:
			-- {Log = true}
			for optionType, container in pairs(optionTypeContainers) do
				container.Visible = shownOptionTypes[optionType] or false
			end
		end
		
		do -- Log options
			local container = Primitives.FolderFrame(optionsFrame, 'Log')
			container.Visible = false
			optionTypeContainers.Log = container

			local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Filters")
			label.FontSize = 'Size18'
			label.TextXAlignment = 'Left'
			label.Size = UDim2_new(0, 54, 0, Style.CheckboxSize)
			label.Position = UDim2_new(0, 4, 0, 2)
	
			do
				local x = label.Size.X.Offset
				local messageColors = Style.MessageColors
				for i = 0, #messageColors do -- 0, 3 initially
					local checkbox = createCheckbox(messageColors[i], function(value)
						filterLookup[i] = value
						messageFilterChanged:fire()
					end)
					filterLookup[i] = checkbox.Value
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x, 0, 4)
					x = x + Style.CheckboxSize + 4
				end
				
				do -- Word wrap
					x = x + 8
					
					local label = Primitives.InvisibleTextLabel(container, 'WrapLabel', "Word Wrap")
					label.FontSize = 'Size18'
					label.TextXAlignment = 'Left'
					label.Size = UDim2_new(0, 54 + Style.CheckboxSize, 0, Style.CheckboxSize)
					label.Position = UDim2_new(0, x + 4, 0, 2)
					
					local checkbox = createCheckbox(Color3.new(0.65, 0.65, 0.65), function(value)
						messageTextWrappedChanged:fire(value) -- an event isn't ideal here
					end)
					checkbox:SetValue(false)
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x + label.Size.X.Offset, 0, 4)
				end
			end
		end
		
		do -- Scripts options
			local container = Primitives.FolderFrame(optionsFrame, 'Stats')
			container.Visible = false
			optionTypeContainers.Scripts = container

			do
				local x = 0
				
				do -- Show inactive
					x = x + 4
					local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Show inactive")
					label.FontSize = 'Size18'
					label.TextXAlignment = 'Left'
					label.Size = UDim2_new(0, label.TextBounds.X + 6, 0, Style.CheckboxSize)
					label.Position = UDim2_new(0, x, 0, 2)
					x = x + label.Size.X.Offset
					
					local showInactive;
					local function getScriptCurrentlyActive(chartStat)
						local stats = chartStat.Stats
						if stats then
							local stat = stats[#stats]
							if stat then
								return stat[1] > 0.000001 or stat[2] > 0.000001
							end
						end
						return false
					end
					function scriptStatFilter(chartStat)
						return (showInactive or getScriptCurrentlyActive(chartStat))
							and (not containsString or string_find(chartStat.Name:lower(), containsString))
					end
						
					local checkbox = createCheckbox(Color3_new(1, 1, 1), function(value)
						showInactive = value
						scriptStatFilterChanged:fire()
					end)
					showInactive = checkbox.Value
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x, 0, 4)
					x = x + Style.CheckboxSize + 4
				
				end

				x = x + 8
				
				--[[
				local label = Primitives.InvisibleTextLabel(container, 'WrapLabel', "Word Wrap")
				label.FontSize = 'Size18'
				label.TextXAlignment = 'Left'
				label.Size = UDim2_new(0, 54 + Style.CheckboxSize, 0, Style.CheckboxSize)
				label.Position = UDim2_new(0, x + 4, 0, 2)
				
				local checkbox = createCheckbox(Color3.new(0.65, 0.65, 0.65), function(value)
					messageTextWrappedChanged:fire(value)
				end)
				checkbox:SetValue(false)
				checkbox.Frame.Parent = container
				checkbox.Frame.Position = UDim2_new(0, x + label.Size.X.Offset, 0, 4)
				--]]
			end
		end
		
		do -- Search/filter/contains textbox
			
			local container = Primitives.FolderFrame(optionsFrame, 'Search')
			container.Visible = false
			optionTypeContainers.Search = container
      
			local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Contains:")
			label.FontSize = 'Size18'
			label.TextXAlignment = 'Left'
			label.Size = UDim2_new(0, 60, 0, Style.CheckboxSize)
			label.Position = UDim2_new(0, 4, 0, 4 + Style.CheckboxSize + 4)
			
			local textBox = Primitives.TextBox(container, 'ContainsFilter')
			textBox.ClearTextOnFocus = true
			textBox.FontSize = 'Size18'
			textBox.TextXAlignment = 'Left'
			textBox.Size = UDim2_new(0, 150, 0, Style.CheckboxSize)
			textBox.Position = UDim2_new(0, label.Position.X.Offset + label.Size.X.Offset + 4, 0, 4 + Style.CheckboxSize + 4)
			textBox.Text = ""
		
			local runningColor = Color3.new(0, 0.5, 0)
			local normalColor = textBox.BackgroundColor3
			
			connectPropertyChanged(textBox, 'Text', function(text)
				text = text:lower()
				if text == "" then
					text = nil
				end
				if text == containsString then
					return
				end
				textBox.BackgroundColor3 = text and runningColor or normalColor
				containsString = text
				messageFilterChanged:fire()
				textFilterChanged:fire()
			end)
			
			connectPropertyChanged(textBox, 'TextBounds', function(textBounds)
				textBox.Size = UDim2_new(0, math.max(textBounds.X, 150), 0, Style.CheckboxSize)
			end)
		end
	end
	
	----------
	-- Tabs --
	----------
	do -- Console/Log tabs
		
		-- Wrapper for :AddTab
		local function createConsoleTab(name, 
        text, 
        outputMessageSync, 
        commandLineVisible, 
        commandInputtedCallback,
        openCallback)
			local tabBody = Primitives.FolderFrame(body, name)
			local output, commandLine;
			local disconnector = CreateDisconnectSignal()
			
			local tab = devConsole:AddTab(text, tabBody, function(open)
				if commandLine then
					commandLine.Frame.Visible = open
				end
				
				if open then
					setShownOptionTypes({
						Log = true;
            Search = true;
					})
					
					if not output then
						output = devConsole:CreateOutput(outputMessageSync:GetMessages(), messageFilter)
						output.Frame.Parent = tabBody
					end
					
					output:SetVisible(true)
					
					if commandLineVisible then
						if open and not commandLine then
							commandLine = devConsole:CreateCommandLine()
							commandLine.Frame.Parent = frame
							commandLine.Frame.Size = UDim2_new(1,
                -(Style.HandleHeight + Style.BorderSize * 2),
                0,
                Style.CommandLineHeight)
							commandLine.Frame.Position = UDim2_new(0,
                Style.BorderSize, 
                1, 
                -(Style.CommandLineHeight + Style.BorderSize))
							commandLine.CommandInputted:connect(commandInputtedCallback)
						end
					end

					window.Size = commandLineVisible
						and UDim2_new(1, 0, 1, -(Style.HandleHeight))
						or  UDim2_new(1, 0, 1, 0)

					
					local messages = outputMessageSync:GetMessages()
					
					local height = output:RefreshMessages()
					body.Size = UDim2_new(1, 0, 0, height)
					
					disconnector:connect(output.HeightChanged:connect(function(height)
						body.Size = UDim2_new(1, 0, 0, height)
					end))
					body.Size = UDim2_new(1, 0, 0, output.Height)
					
					disconnector:connect(outputMessageSync.MessageAdded:connect(function(message)
                        if disablePassiveClientLogProcessing then
                            if not devConsole.Visible then
                                output:SetMessagesDirty(#messages)
                                return
                            end
                        end
						output:RefreshMessages(#messages)
					end))
					
					disconnector:connect(messageFilterChanged:connect(function()
						output:RefreshMessages()
					end))
					disconnector:connect(messageTextWrappedChanged:connect(function(enabled)
						output:SetTextWrappedEnabled(enabled)
					end))
				else
					if output then
						output:SetVisible(false)
					end
					window.Size = UDim2_new(1, 0, 1, 0)
					disconnector:fire()
				end
				if openCallback then
					openCallback(open)
				end
			end)

			return tab
		end
		
		-- Client Log tab --
		if permissions.MayViewClientLog then
			local tab = createConsoleTab(
				'ClientLog', "Client Log",
				devConsole.MessagesAndStats.OutputMessageSyncLocal,
				permissions.ClientCodeExecutionEnabled
			)
			tab:SetVisible(true)      
			tab:SetOpen(true)
		end
		
		-- Server Log tab --
		if permissions.MayViewServerLog then
			local LogService = game:GetService('LogService')
			local tab = createConsoleTab(
				'ServerLog', "Server Log",
				devConsole.MessagesAndStats.OutputMessageSyncServer,
				permissions.ServerCodeExecutionEnabled,
				function(text)
					if #text <= 1 then
						return
					end
					if permissions.ServerCodeExecutionEnabled then
						-- print("Server Loadstring:", text)
						LogService:ExecuteScript(text)
					end
				end
			)
			tab:SetVisible(true)
		end
	end
	
	do -- Stats tabs
		
		local function generateGreenYellowRedColor(unit) -- 0 <= unit <= 1
			--[[
				0   -> 0,   223, 0
				0.5 -> 223, 233, 0
				1   -> 233, 0,   0
			--]]
			local brightness = 0.9
			if not unit then
				return Color3.new(0, 0, 0)
			elseif unit <= 0 then
				return Color3.new(1, 1, 1)
			elseif unit <= 0.5 then
				unit = unit * 2
				return Color3.new(unit * brightness, brightness, 0)
			elseif unit <= 1 then
				unit = unit * 2 - 1
				return Color3.new(brightness, (1 - unit) * brightness, 0)
			else
				return Color3.new(1, 0, 0)
			end
		end
		
		-- Wrapper for :AddTab
		local function createStatsTab(name, text, 
			config, openCallback,
			filterStats, shownOptionTypes)
		
			local statsSyncServer = devConsole.MessagesAndStats.StatsSyncServer
			
			local open = false
			
			local statList = devConsole:CreateChartList(config)
			
			local tabBody = statList.Frame
			tabBody.Parent = body
			tabBody.Name = name
			tabBody.BackgroundTransparency = 1
			tabBody.Size = UDim2_new(1, 0, 1, 0)
			statList.SideMenu.Parent = windowContainer -- so the left side menu doesn't resize with the contents on right
			
			statsSyncServer:GetStats()
			statsSyncServer.StatsReceived:connect(function(stats)
				local statsFiltered = filterStats(stats)
				if statsFiltered then
					statList:UpdateStats(statsFiltered)
				end
			end)
			
			local tab = devConsole:AddTab(text, tabBody, function(openNew)
				open = openNew
				if open then
					devConsole.WindowScrollbar:SetValue(0)
					setShownOptionTypes(shownOptionTypes)
				end
				statList:SetVisible(open)
				if openCallback then
					openCallback(open)
				end
			end)
			tab:SetVisible(true)
			
			return tab, statList
				end


		do -- Client Memory tab

			local tabBody = Primitives.FolderFrame(body, 'ClientMemory')
			local clientTab = nil
			local clientMemoryAnalyzer = nil

            clientMemoryAnalyzer = ClientMemoryAnalyzerClass.new(tabBody)

			-- When memory analyzer decides it's new size, we get notified.
			clientMemoryAnalyzer:setHeightChangedCallback(function(newHeight)
					body.Size = UDim2.new(1, 0, 0, newHeight)
				end)

			-- Considering all state (is dev console even showing, which tab is showing), 
			-- do I need to update the memory stats tab right now, and should I be listening
			-- for regular updates?
			local function syncClientMemoryAnalyzerVisibility()
				if (clientTab.Open and clientTab.Visible and devConsole.Visible) then
                    clientMemoryAnalyzer:refreshMemoryUsageTree()
					clientMemoryAnalyzer:renderUpdates()
					clientMemoryAnalyzer:startListeningForUpdates()
					body.Size = UDim2.new(1, 0, 0, clientMemoryAnalyzer:getHeightInPix())
				else
					clientMemoryAnalyzer:stopListeningForUpdates()
				end
			end

			-- Every time 'open' state changes, call syncVisibility.
			local tabName = "Client Memory"

			clientTab = devConsole:AddTab(tabName, tabBody, function(open)
					if (open) then
						devConsole.WindowScrollbar:SetValue(0)
						setShownOptionTypes({})
					end

					syncClientMemoryAnalyzerVisibility()
				end)
			clientTab:SetVisible(true)   

			-- Every time dev console's open state changes, call syncVisibility.
			devConsole.VisibleChanged:connect(function(visible)
					syncClientMemoryAnalyzerVisibility()
				end)
		end

		-- Server Scripts --
		if permissions.MayViewServerScripts then
			
			local open = false
			
			local config = {
				GetNotifyColor = function(chartButton)
					local chartStat = chartButton.ChartStat
					local point;
					local stat = chartStat.Stats[#chartStat.Stats]
					if stat then
						point = stat[1]
						local freq = stat[2]
						if point and freq then
							point = (point < 0 and 0) or (point > 1 and 1) or point -- clamp between 0 and 1
							point = math.max(freq > 0 and 0.000001 or 0, point ^ (1/4))
						end
					end
					return generateGreenYellowRedColor(point)
				end;
				CreateChartPage = function(chartButton, statsBody)
					local chartStat = chartButton.ChartStat
					local chart1 = devConsole:CreateChart(chartStat.Stats, "Script Activity", 1, function(point)
						return point and math.ceil(point * 100000 * 100) / 100000 .. "%" or ""
					end)
					local chart2 = devConsole:CreateChart(chartStat.Stats, "Script Rate", 2, function(point)
						return point and (math.floor(point * 100000) / 100000) .. "/s" or ""
					end)
					
					local y = 16
					chart1.Frame.Parent = statsBody
					chart1.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart1.Frame.Size.Y.Offset
					
					chart2.Frame.Parent = statsBody
					chart2.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart2.Frame.Size.Y.Offset
					
					local this = {}
					function this.OnPointAdded(this)
						chart1:OnPointAdded()
						chart2:OnPointAdded()
					end
					function this.SetVisible(this, visible)
						chart1:SetVisible(visible)
						chart2:SetVisible(visible)
						body.Size = open and UDim2_new(1, 0, 0, y) or UDim2_new(1, 0, 1, 0)
					end
					function this.Dispose(this)
						this:SetVisible(false)
					end
					return this
				end;
				FilterButton = function(chartButton)
					return scriptStatFilter(chartButton.ChartStat)
				end;
			}

			local function filterStats(stats)
				-- return stats.Scripts
				if stats.Scripts then
					local statsFiltered = {}
					for k, v in pairs(stats.Scripts) do
						statsFiltered[k] = {v[1]/100, v[2]}
					end
					return statsFiltered
				end
			end

			local function openCallback(openNew)
				open = openNew
			end
			
			local tab, statList = createStatsTab('ServerScripts', "Server Scripts", config, openCallback, filterStats, 
          	{ 
            	Scripts = true;
            	Search = true;
          	})

			textFilterChanged:connect(function()
				statList:Refresh()
			end)
			scriptStatFilterChanged:connect(function()
				statList:Refresh()
			end)

			tab:SetVisible(true)
		end
		
		-- Server Stats --
		if permissions.MayViewServerStats then

			local open = false
			
			local config = {
				GetNotifyColor = function(chartButton)
					return Color3.new(0.5, 0.5, 0.5)
				end;
				CreateChartPage = function(chartButton, statsBody)
					local chartStat = chartButton.ChartStat
					local chart1 = devConsole:CreateChart(chartStat.Stats, chartStat.Name, 1)
					
					local y = 16
					chart1.Frame.Parent = statsBody
					chart1.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart1.Frame.Size.Y.Offset

					local this = {}
					function this.OnPointAdded(this)
						chart1:OnPointAdded()
					end
					function this.SetVisible(this, visible)
						chart1:SetVisible(visible)
						body.Size = open and UDim2_new(1, 0, 0, y) or UDim2_new(1, 0, 1, 0)
					end
					function this.Dispose(this)
						this:SetVisible(false)
					end
					return this
				end;
				FilterButton = function(chartButton)
					return textFilter(chartButton.ChartStat.Name)
				end;
			}
			
			local function filterStats(stats)
				local statsFiltered = {}
				for k, v in pairs(stats) do
					if type(v) == 'number' then
						statsFiltered[k] = {v}
					end
				end
				return statsFiltered
			end
			
			local function openCallback(openNew)
				open = openNew
			end

			local tab, statList = createStatsTab('ServerStats', "Server Stats", config, openCallback, filterStats, 
        	{
         		Stats = true;
          		Search = true; 
        	})
			
			textFilterChanged:connect(function()
				statList:Refresh()
			end)
						
			tab:SetVisible(true)
		end	

		-- Server Memory --
		if (permissions.MayViewServerMemory) then
			local tabBody = Primitives.FolderFrame(body, "ServerMemory")
			
			local serverTab = nil
			local serverMemoryAnalyzer = nil

            serverMemoryAnalyzer = ServerMemoryAnalyzerClass.new(tabBody)

			-- When memory analyzer decides its new size, we get notified.
			serverMemoryAnalyzer:setHeightChangedCallback(function(newHeight)
					body.Size = UDim2.new(1, 0, 0, newHeight)
				end)

			-- Considering all state (is dev console even showing, which tab is showing), 
			-- do I need to update the memory stats tab right now, and should I be listening
			-- for regular update?
			local function syncServerMemoryAnalyzerVisibility()
				if (serverTab.Open and serverTab.Visible and devConsole.Visible) then
                    serverMemoryAnalyzer:setVisible(true)
					body.Size = UDim2.new(1, 0, 0, serverMemoryAnalyzer:getHeightInPix())
				else
                    serverMemoryAnalyzer:setVisible(false)
				end
			end

			-- Every time 'open' state changes, call syncVisibility.
			local tabName = "Server Memory"

			serverTab = devConsole:AddTab(tabName, tabBody, function(open)
					if (open) then
						devConsole.WindowScrollbar:SetValue(0)
						setShownOptionTypes({})
					end
					syncServerMemoryAnalyzerVisibility()
				end)
			serverTab:SetVisible(true)   

			-- Every time dev console's open state changes, call syncVisibility.
			devConsole.VisibleChanged:connect(function(visible)
					syncServerMemoryAnalyzerVisibility()
				end)
			
			-- Ensure server stats are being collected.
			local statsSyncServer = devConsole.MessagesAndStats.StatsSyncServer
			statsSyncServer:GetStats()
			-- Listen to the "new server stats" event.
			statsSyncServer.StatsReceived:connect(function(stats)
                local filteredTreeStats = serverMemoryAnalyzer:filterServerMemoryTreeStats(stats)
                if filteredTreeStats then
                    serverMemoryAnalyzer:updateWithTreeStats(filteredTreeStats)
                end
			end)			
		end
		  

		-- DataStoreBudget -- 
		if permissions.MayViewDataStoreBudget then 
			local open = false
			
			local config = {
				GetNotifyColor = function(chartButton)
					return Color3.new(0.5, 0.5, 0.5)
				end;
				CreateChartPage = function(chartButton, statsBody)
					local chartStat = chartButton.ChartStat
					local chart1 = devConsole:CreateChart(chartStat.Stats, chartStat.Name, 1)
					
					local y = 16
					chart1.Frame.Parent = statsBody
					chart1.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart1.Frame.Size.Y.Offset

					local this = {}
					function this.OnPointAdded(this)
						chart1:OnPointAdded()
					end
					function this.SetVisible(this, visible)
						chart1:SetVisible(visible)
						body.Size = open and UDim2_new(1, 0, 0, y) or UDim2_new(1, 0, 1, 0)
					end
					function this.Dispose(this)
						this:SetVisible(false)
					end
					return this
				end;
				FilterButton = function(chartButton)
					return textFilter(chartButton.ChartStat.Name)
				end;
			}
			
			local function filterStats(stats)
				local statsFiltered = {}
				for k, v in pairs(stats.DataStoreBudget) do
					if type(v) == 'number' then
						statsFiltered[k] = {v}
					end
				end
				return statsFiltered
			end
			
			local function openCallback(openNew)
				open = openNew
			end

			local tab, statList = createStatsTab('DataStoreBudget', "DataStore Budget", config, openCallback, filterStats, 
        	{
         		Stats = true;
          		Search = true; 
        	})
			
			textFilterChanged:connect(function()
				statList:Refresh()
			end)
						
			tab:SetVisible(true)
		end

		-- Server Jobs --
		if permissions.MayViewServerJobs then

			local open = false
			
			local config = {
				GetNotifyColor = function(chartButton)
					return Color3.new(0.5, 0.5, 0.5)
				end;
				CreateChartPage = function(chartButton, statsBody)
					local chartStat = chartButton.ChartStat
					local chart1 = devConsole:CreateChart(chartStat.Stats, "Duty Cycle", 1, function(point)
						return point and math.floor(point * 10000000 + 0.5) / 100000 .. "%" or ""
					end)
					local chart2 = devConsole:CreateChart(chartStat.Stats, "Steps Per Sec", 2, function(point)
						return point and (math.floor(point * 10000 + 0.5) / 10000) .. "/s" or ""
					end)
					local chart3 = devConsole:CreateChart(chartStat.Stats, "Step Time", 3, function(point)
						return point and (math.floor(point * 10000000 + 0.5) / 10000) .. "ms" or ""
					end)
					
					local y = 16
					chart1.Frame.Parent = statsBody
					chart1.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart1.Frame.Size.Y.Offset
					
					chart2.Frame.Parent = statsBody
					chart2.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart2.Frame.Size.Y.Offset
					
					chart3.Frame.Parent = statsBody
					chart3.Frame.Position = UDim2_new(0, 16, 0, y)
					y = y + 16 + chart3.Frame.Size.Y.Offset
					
					local this = {}
					function this.OnPointAdded(this)
						chart1:OnPointAdded()
						chart2:OnPointAdded()
						chart3:OnPointAdded()
					end
					function this.SetVisible(this, visible)
						chart1:SetVisible(visible)
						chart2:SetVisible(visible)
						chart3:SetVisible(visible)
						body.Size = open and UDim2_new(1, 0, 0, y) or UDim2_new(1, 0, 1, 0)
					end
					function this.Dispose(this)
						this:SetVisible(false)
					end
					return this
				end;
				FilterButton = function(chartButton)
					return textFilter(chartButton.ChartStat.Name)
				end;
			}		
			
			local function filterStats(stats)
				return stats.Jobs
			end

			local function openCallback(openNew)
				open = openNew
			end
			
			local tab, statList = createStatsTab('ServerJobs', "Server Jobs", config, openCallback, filterStats, 
        	{
          		Stats = true;
          		Search = true; 
        	})
			
			textFilterChanged:connect(function()
				statList:Refresh()
			end)
			
			tab:SetVisible(true)
		end
	end
	
	do -- Client Http Results tab
		if permissions.MayViewHttpResultClient then
			local logService = game:GetService('LogService')
			local tabBody = Primitives.FolderFrame(body, 'HttpResult')
			local tabOpen = false
			local httpAnalyzerClass = require(CoreGui.RobloxGui.Modules.HttpAnalyticsTab)
			local httpAnalyzer = httpAnalyzerClass.new(tabBody, function ( newHeight )
				-- update the body.Size only when tab is open so it won't disturb other tab
				if tabOpen then
					if newHeight < window.AbsoluteSize.Y then
						newHeight = window.AbsoluteSize.Y
					end
					body.Size = UDim2.new(1, 0, 0, newHeight)
				end
			end)

			-- add http result when client got a http result
          	logService.HttpResultOut:connect(function (httpResult)
          		httpAnalyzer:addHttpResult(httpResult)
          	end)
          	-- add http results that client got before console was opened
          	local history = logService:GetHttpResultHistory()
			for i = 1, #history do
				httpAnalyzer:addHttpResult(history[i])
			end

			local tab = devConsole:AddTab('Client Http', tabBody, function(open)
				tabOpen = open
				-- update the 'body.Size', so the scrollbar will work
				if open then
					local newHeight = httpAnalyzer:getHeightInPix()
					if newHeight < window.AbsoluteSize.Y then
						newHeight = window.AbsoluteSize.Y
					end
					body.Size = UDim2.new(1, 0, 0, newHeight)
				end
	        end)
			tab:SetVisible(true)
		end
	end

	do -- Server Http Results tab
		local logService = game:GetService('LogService')
		local showServerHttp = function ()
			if permissions.MayViewHttpResultServer then
				local tabBody = Primitives.FolderFrame(body, 'Server Http Result')
				local tabOpen = false
				local httpAnalyzerClass = require(CoreGui.RobloxGui.Modules.HttpAnalyticsTab)
				local httpAnalyzer = httpAnalyzerClass.new(tabBody, function ( newHeight )
					-- update the body.Size only when tab is open so it won't disturb other tab
					if tabOpen then
						if newHeight < window.AbsoluteSize.Y then
							newHeight = window.AbsoluteSize.Y
						end
						body.Size = UDim2.new(1, 0, 0, newHeight)
					end
				end)

				-- add http result when got a http result from server
	          	logService.ServerHttpResultOut:connect(function (httpResult)
	          		httpAnalyzer:addHttpResult(httpResult)
	          	end)
		        logService:RequestServerHttpResult()

				local tab = devConsole:AddTab('Server Http', tabBody, function(open)
					tabOpen = open
					-- update the 'body.Size', so the scrollbar will work
					if open then
						local newHeight = httpAnalyzer:getHeightInPix()
						if newHeight < window.AbsoluteSize.Y then
							newHeight = window.AbsoluteSize.Y
						end
						body.Size = UDim2.new(1, 0, 0, httpAnalyzer:getHeightInPix())
					end
		        end)
	      	
				tab:SetVisible(true)
			end
		end
		-- show server http results with user in the DFStringHttpResultsApprovedUserIDs
		if not permissions.MayViewHttpResultServer then
			logService.OnHttpResultApproved:connect(function (isApproved)
				permissions.MayViewHttpResultServer = isApproved
				showServerHttp()
			end)
			logService:RequestHttpResultApproved()
		else
			showServerHttp()
		end
	end

	do -- ContextActionService debugging
		if permissions.MayViewContextActionBindings then
			local tabBody = Primitives.FolderFrame(body, "ActionBindings")
			local tab = devConsole:AddTab("Action Bindings", tabBody)
			

			local success, result = pcall(function()
				local ActionBindingsTab = require(RobloxGui.Modules.ActionBindingsTab)
				ActionBindingsTab.initializeGui(tabBody)
			end)
			if not success then
				warn(result)
				warn("Action Bindings tab was hidden")
			else
				tab:SetVisible(true)
			end
		end
	end
  
	--[[
	do -- Sample tab
		local tabBody = Primitives.FolderFrame(body, 'TabName')
		
		local tab = devConsole:AddTab("Tab Name", tabBody)
		tab:SetVisible(true)
		--tab:SetOpen(true)
	end
	--]]
	
	return devConsole
	
end

----------------------
-- Backup GUI Mouse --
----------------------
do -- This doesn't support multiple windows very well
	function Methods.EnableGUIMouse(devConsole)
		local label = Instance.new("ImageLabel")
		label.BackgroundTransparency = 1
		label.BorderSizePixel = 0
		label.Size = UDim2.new(0, 64, 0, 64)
		label.Image = "rbxasset://Textures/ArrowFarCursor.png"
		label.Name = "BackupMouse"
		label.ZIndex = Style.ZINDEX + 2
		
		local disconnector = CreateDisconnectSignal()
		
		local enabled = false
		
		local mouse = game:GetService("Players").LocalPlayer:GetMouse()
		
		local function Refresh()
			local enabledNew = devConsole.Visible and not UserInputService.MouseIconEnabled
			if enabledNew == enabled then
				return
			end
			enabled = enabledNew
			label.Visible = enabled
			label.Parent = enabled and devConsole.ScreenGui or nil
			disconnector:fire()
			if enabled then
				label.Position = UDim2.new(0, mouse.X - 32, 0, mouse.Y - 32)
				disconnector:connect(UserInputService.InputChanged:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						--local p = input.Position
						--if p then
						label.Position = UDim2.new(0, mouse.X - 32, 0, mouse.Y - 32)
						--end
					end
				end))
			end
		end
		
		Refresh()
		local userInputServiceListener;
		devConsole.VisibleChanged:connect(function(visible)
			if userInputServiceListener then
				userInputServiceListener:disconnect()
				userInputServiceListener = nil
			end
			
			userInputServiceListener = UserInputService.Changed:connect(Refresh)
			
			Refresh()
		end)
		
	end
end


----------------------
-- Charts and Stats --
----------------------


do -- Script performance/Chart list
	
	--[[
	local chartStatExample = {
		Name = "RoundScript";
		Stats = {
			-- {Activity, InvocationCount}
			{0, 0};
			{0, 0};
		}
	}
	--]]
	
	-- this manages the button and the chartPage
	local function createChartButton(devConsole, chartList, chartStat, config)
		
		local this = {
			ChartList = chartList;
			ChartStat = chartStat;
			Open = false;
		}
		
		local button = Primitives.Button(nil, 'Button')
		this.Frame = button
		this.Button = button
		
		button.AutoButtonColor = false
		local size0 = UDim2_new(1, -12 - chartList.ScrollingFrame.ScrollBarThickness, 0, 16) -- Size when script is closed
		local size1 = UDim2_new(1, -2  - chartList.ScrollingFrame.ScrollBarThickness, 0, 16) -- Size when script is open
		button.Size = size0
		button.Name = (chartStat.Name or "[no name]")
		if not chartStat.Name then
			button.TextColor3 = Color3.new(1, 0.5, 0.5)
		end
		button.BackgroundColor3 = Style.ScriptButtonColor
		button.BackgroundTransparency = Style.ScriptBackgroundTransparency
		
		local notifyFrame = Primitives.Frame(button, 'NotifyFrame')
		notifyFrame.BackgroundTransparency = 0
		notifyFrame.Size = UDim2.new(0, 8, 1, 0)
		notifyFrame.BackgroundColor3 = Color3.new(0, 0.75, 0)
		
		local label = Primitives.InvisibleTextLabel(button, 'Label', chartStat.Name)
		label.Size = UDim2_new(1, -notifyFrame.Size.X.Offset - 4 - 1, 1, 0)
		label.Position = UDim2_new(0, notifyFrame.Size.X.Offset + 4, 0, 0)
		label.FontSize = 'Size14'
		label.TextXAlignment = 'Left' -- Enum.TextXAlignment.Left
		--label.TextWrap = true
		
		local buttonEffectFunction = devConsole:CreateButtonEffectFunction(button)
		devConsole:ConnectButtonHover(button, function(clicking, hovering)
			buttonEffectFunction(clicking, hovering)
		end)

		button.MouseButton1Down:connect(function()
			-- not ideal
			for i, that in pairs(chartList.ChartButtons) do
				if this ~= that and that.Open then
					that:SetOpen(false)
				end
			end
			this:SetOpen(true)
		end)
		
		-- This fires when the button opens/closes
		local disconnector = CreateDisconnectSignal()
		-- This fires when the button disposes
		local disconnector2 = CreateDisconnectSignal() -- (Best variable name ever)
		
		local function refreshNotifyFrame()
			notifyFrame.BackgroundColor3 = config.GetNotifyColor(this)
		end
		refreshNotifyFrame()
		disconnector2:connect(chartList.OnStatUpdate:connect(refreshNotifyFrame))
				
		function this.SetOpen(this, open)
			if this.Open == open then
				return
			end
			this.Open = open
			
			button:TweenSize(open and size1 or size0, "Out", "Sine", 0.25, true)
			
			disconnector:fire()
			
			if open then
				
				-- The chart page is initialized directly from the button, (this is not ideal, but it works)
				local statsBody = Primitives.FolderFrame(chartList.Body, 'StatsBody') -- Button container
				
				local chartPage = config.CreateChartPage(this, statsBody)
				
				chartPage:SetVisible(true)
				
				disconnector:connect(chartList.OnStatUpdate:connect(function()
					chartPage:OnPointAdded()
				end))
				
				disconnector:connect(function()
					chartPage:Dispose()
					statsBody:Destroy()
				end)
				
			end
			
		end
		
		function this.Dispose(this)
			button:Destroy()
			disconnector:fire()
			disconnector2:fire()
		end
		
		return this
	end
	
	
	local function defaultSorter(a, b) -- this sorts chartButtons
		return a.ChartStat.Name < b.ChartStat.Name
	end

	function Methods.CreateChartList(devConsole, config)
		
		local this = {
			Config = config;
			Visible = false;
			OnStatUpdate = CreateSignal();
			ChartButtons = {}; -- usage: chartButtons[position] = scriptButton
			ChartStats = {}; -- usage: chartStats[chartStat.Name] = chartStat
		}
		
		local frame = Primitives.FolderFrame(nil, 'ScriptList')
		this.Frame = frame
		frame.Visible = false
		
		local sideMenu = Primitives.Frame(frame, 'SideMenu') -- not necessarily parented to frame!
		sideMenu.Size = UDim2_new(0, 196, 1, 0)
		this.SideMenu = sideMenu
		sideMenu.Visible = false
		
		local body = Primitives.FolderFrame(frame, 'Body')
		this.Body = body
		body.Size = UDim2_new(1, -sideMenu.Size.X.Offset, 1, 0)
		body.Position = UDim2_new(0, sideMenu.Size.X.Offset, 0, 0)
		
		local scrollingFrame = Instance.new("ScrollingFrame", sideMenu)
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.ZIndex = Style.ZINDEX
		scrollingFrame.ScrollBarThickness = 12
		scrollingFrame.Selectable = false
		this.ScrollingFrame = scrollingFrame
		do
			local y = 1 -- if we want to add a label above it later
			scrollingFrame.Size = UDim2_new(1, 0, 1, -y)
			scrollingFrame.Position = UDim2_new(0, 0, 0, y)
			scrollingFrame.BackgroundTransparency = 1
		end
		
		local chartButtons = this.ChartButtons
		local chartStats = this.ChartStats

		local sorter = defaultSorter
		
		function this.SetChartButtonSorter(this, sorterNew)
			if sorter == sorterNew then
				return
			end
			sorter = sorterNew
			table.sort(chartButtons, sorter)
			this:Refresh()
		end
		
		function this.GetChartButton(this, name) -- not used?
			for i = #chartButtons, 1, -1 do
				local chartButton = chartButtons[i]
				if chartButton.ChartStat.Name == name then
					return chartButton, i
				end
			end
		end
		
		function this.RemoveChart(this, name)
			chartStats[name] = nil
			for i = #chartButtons, 1, -1 do
				local chartButton = chartButtons[i]
				if chartButton.ChartStat.Name == name then
					chartButton:Dispose()
					table.remove(chartButtons, i)
					return
				end
			end
		end
		
		function this.UpdateStats(this, newStats)
			
			local timeStamp = os_time() -- Should it use tick instead?
			
			local scriptAddedOrRemoved = false
			
			for name, stat in pairs(chartStats) do
				if not newStats[name] then
					scriptAddedOrRemoved = true
					this:RemoveChart(name)
				end
			end
			
			for name, newStat in pairs(newStats) do
				local chartStat = chartStats[name]
				if not chartStats[name] then
					chartStat = {
						Name = name;
						Stats = {}; -- this could be loaded
					}
					chartStats[name] = chartStat
					if this.Visible then
						local chartButton = createChartButton(devConsole, this, chartStat, config)
						chartButton.Frame.Parent = scrollingFrame
						chartButtons[#chartButtons + 1] = chartButton
					end
				end
				local stats = chartStat.Stats
				stats[#stats + 1] = newStat
			end
			
			table.sort(chartButtons, sorter)
			
			this:Refresh()
			
			this.OnStatUpdate:fire()
			
		end
		
		function this.Refresh(this)
			
			if not this.Visible then
				for i = #chartButtons, 1, -1 do
					chartButtons[i]:Dispose()
					chartButtons[i] = nil
				end
				return
			end
			
			table.sort(chartButtons, sorter)
			
			local y = 0
			for i = 1, #chartButtons do
				local chartButton = chartButtons[i]
				local visible = config.FilterButton(chartButton)
				local button = chartButton.Button
				button.Visible = visible
				if visible then
					button.Position = UDim2_new(0, 1, 0, y) -- Should it lerp to position if animating?
					y = y + button.AbsoluteSize.Y + 1
				end
			end
			
			scrollingFrame.CanvasSize = UDim2_new(0, 0, 0, y)
			
		end
		this:Refresh()
		
		function this.SetVisible(this, visible)
			if visible == this.Visible then
				return
			end
			this.Visible = visible
			
			frame.Visible = visible
			sideMenu.Visible = visible
			
			if visible then
				for name, chartStat in pairs(chartStats) do
					local chartButton = createChartButton(devConsole, this, chartStat, config)
					chartButton.Button.Parent = scrollingFrame
					chartButtons[#chartButtons + 1] = chartButton
				end
				this:Refresh()
			else
				for i = #chartButtons, 1, -1 do
					chartButtons[i]:Dispose()
					chartButtons[i] = nil
				end
			end
		end
		
		return this
	end
end

do -- Chart
	
	local barWidth = 4
	local numBars = math.ceil((Style.ChartWidth - Style.BorderSize * 2) / (barWidth + 1))
	
	local function round(x)
		return math.floor(x * 1000 + 0.5) / 1000
	end
	
	local function CreateBar()
		local bar = Primitives.Frame()
		bar.BackgroundTransparency = 0
		bar.BackgroundColor3 = Color3_new(0, 0.5, 1)
		return bar
	end
	
	local function CreateGraph(points, statIndex, autoScale)
		-- point = points[i][statIndex]
		
		local this = {}
		
		local direction = Style.ChartGraphDirection -- -1 means coming from right, 1 means coming from left
		
		local frame = Primitives.Frame(nil, 'Graph')
		this.Frame = frame
		frame.ClipsDescendants = true
		
		local scaleFrame = Primitives.FolderFrame(frame, 'ScaleFrame')
		
		local body = Primitives.FolderFrame(scaleFrame, 'Body')
		body.Size = UDim2_new(0, barWidth, 1, 0)
		
		local bars = {}
		local barHeights = {}
		local barPositions = {}
		
		do -- reference notches
			local function getReferenceHeight(position)
				if position % 60 == 0 then
					return 24
				elseif position % 30 == 0 then
					return 12
				elseif position % 15 == 0 then
					return 4
				elseif position % 5 == 0 then
					return 1
				else
					return 0
				end
			end
			for position = 0, numBars do
				local height = getReferenceHeight(position)
				if height ~= 0 then
					local notch = Instance_new('Frame', frame)
					notch.ZIndex = Style.ZINDEX
					notch.BorderSizePixel = 0
					notch.BackgroundColor3 = Color3_new(1, 1, 1)
					notch.Size = UDim2_new(0, 1, 0, height)
					notch.Position = UDim2_new(0, position * (barWidth + 1), 1, -height)
				end
			end
		end
		local scale = 1
		
		local position = 0
		
		local visible = false
		
		local function generateSizeAndPosition(height, position)
			height = height * scale
			return
				UDim2_new(0, barWidth, height, 0),
				UDim2_new(0, (barWidth + 1) * position * -direction + 1, 1 - height, 0)
		end
		
		local function RefreshScale(animate)
			if not autoScale then
				return
			end
			local heightMax;
			for i = math_max(#points - numBars + 1, 1), #points do
				local height = points[i][statIndex]
				if not heightMax or height > heightMax then
					heightMax = height
				end
			end
			
			if not heightMax or heightMax <= 0 then
				local size, position = UDim2_new(1, 0, 1, 0), UDim2_new(0, 0, 0, 0)
				if animate then
					scaleFrame:TweenSizeAndPosition(size, position, 'Out', 'Sine', 0.25, true)
				else
					scaleFrame.Size, scaleFrame.Position = UDim2_new(1, 0, 1, 0), UDim2_new(0, 0, 0, 0)
				end
				return
			end
			
			local scaleNew = 1 / heightMax * 0.95
			if math.abs(scale - scaleNew) < 0.0000001 then
				return
			end
			-- Possible performance boost Todo: if the scale isn't significantly different (within like 0.5-4), just adjust scaleFrame's size
			scale = scaleNew
			
			for i = 1, #bars do
				local bar = bars[i]
				local height = barHeights[i]
				local barSize, barPosition = generateSizeAndPosition(height, barPositions[i])
				if animate then
					bar:TweenSizeAndPosition(barSize, barPosition, 'Out', 'Sine', 0.25, true)
				else
					bar.Size, bar.Position = barSize, barPosition
				end
			end
			
			--local scale = 1 / heightMax * 0.95
			--scaleFrame:TweenSizeAndPosition(UDim2_new(1, 0, scale, 0), UDim2_new(0, 0, 1 - scale, 0), 'Out', 'Sine', 0.25, true)

		end
		
		function this.OnPointAdded(this)
			if not visible then
				return
			end
			local bar;
			
			-- possible game crasher
			while #bars > numBars do
				if bar then
					bar:Destroy()
				end
				bar = bars[1]
				table.remove(bars, 1)
				table.remove(barHeights, 1)
				table.remove(barPositions, 1)
			end 
			
			local point = points[#points] and points[#points][statIndex]
			assert(point)
			if not bar then
				bar = CreateBar()
				bar.Parent = body
			end
			
			local height = point
			
			bars[#bars + 1] = bar
			barHeights[#barHeights + 1] = height
			barPositions[#barPositions + 1] = position
			
			bar.Size, bar.Position = generateSizeAndPosition(height, position)
			
			body:TweenPosition(UDim2_new(1 - (direction * 0.5 + 0.5), (barWidth + 1) * position * direction, 0, 0), 'Out', 'Sine', 0.25, true)
			
			position = position + 1
			
			RefreshScale(true)
		end

		function this.SetVisible(this, visibleNew)

			body.Position = UDim2_new(1 - (direction * 0.5 + 0.5), 0, 0, 0)
			if visibleNew == visible then
				return
			end
			visible = visibleNew
			if not visible then
				for i = #bars, 1, -1 do
					bars[i]:Destroy()
					bars[i] = nil
				end
				return
			end

			position = 0
			for i = math_max(#points - numBars + 1, 1), #points do
				local bar = bars[position + 1]
				if not bar then
					bar = CreateBar()
					bar.Parent = body
					bars[position + 1] = bar
				end

				local point = points[i][statIndex]
				local height = point
				
				barHeights[position + 1] = height
				barPositions[position + 1] = position
				
				bar.Size, bar.Position = generateSizeAndPosition(height, position)
				
				position = position + 1
			end
			
			body.Position = UDim2_new(1 - (direction * 0.5 + 0.5), (barWidth + 1) * (position - 1) * direction, 0, 0)
			
			RefreshScale(false)
			
		end
		
		return this
	end
	
	local function createLabel(...)
		local n = Primitives.InvisibleTextLabel(...)
		n.TextXAlignment = 'Left'
		n.FontSize = 'Size14'
		return n
	end
	
	function Methods.CreateChart(devConsole, points, title, statIndex, pointToString)
	
		pointToString = pointToString or function(point)
			if point then
				local precision = 10000
				local v = point * precision
				if v < 1 and v > 0 then
					return "<" .. (1 / precision)
				else
					return math.floor(v + 0.5) / precision .. ""
				end
			else
				return ""
			end
		end
		
		local chart = {}
		
		local frame = Primitives.Frame(nil, 'Chart')
		chart.Frame = frame
		frame.Size = UDim2_new(0, Style.ChartWidth, 0, Style.ChartHeight)
		
		local labelCurrent = createLabel(frame, 'Current', "Current: " .. pointToString(points[#points] and points[#points][statIndex]))
		labelCurrent.Size = UDim2_new(0, 0.5, 0, Style.ChartTitleHeight)
		labelCurrent.Position = UDim2_new(0, 4, 0, Style.ChartTitleHeight + 1)
		
		local graph = CreateGraph(points, statIndex, true)
		graph.Frame.Parent = frame
		graph.Frame.Size = UDim2_new(0, Style.ChartWidth - Style.BorderSize * 2, 0, Style.ChartGraphHeight)
		graph.Frame.Position = UDim2_new(0, Style.BorderSize, 0, Style.ChartTitleHeight + Style.ChartDataHeight)
		
		do
			local bar = Primitives.Frame(frame, 'Bar')
			bar.Size = UDim2_new(1, 0, 0, Style.ChartTitleHeight)
			
			local label = Primitives.InvisibleTextLabel(bar, 'Title', title)
			label.TextXAlignment = 'Left' -- Enum.TextXAlignment.Left
			label.Size = UDim2_new(1, -4, 1, 0)
			label.Position = UDim2_new(0, 4, 0, 0)
			label.FontSize = 'Size18'
		end
		
		local visible = false
		function chart.SetVisible(chart, visibleNew)
			if visibleNew == visible then
				return
			end
			visible = visibleNew
			graph:SetVisible(visible)
		end
		
		function chart.OnPointAdded(chart)
			local point = points[#points]
			
			if not point then
				return
			end
			
			labelCurrent.Text = "Current: " .. pointToString(point and point[statIndex])
			
			graph:OnPointAdded()
		end
		
		return chart
	end
end

--------------------
-- Output console --
--------------------
do
	function Methods.CreateCommandLine(devConsole)
		local this = {
			CommandInputted = CreateSignal();
		}
		
		local frame = Primitives.FolderFrame(nil, 'CommandLine')
		this.Frame = frame
		frame.Size = UDim2_new(1, 0, 0, Style.CommandLineHeight)
		
		local textBoxFrame = Primitives.Frame(frame, 'TextBoxFrame')
		textBoxFrame.Size = UDim2_new(1, 0, 0, Style.CommandLineHeight)
		textBoxFrame.Position = UDim2_new(0, 0, 0, 0)
		textBoxFrame.ClipsDescendants = true
		
		local label = Primitives.InvisibleTextLabel(textBoxFrame, 'Label', ">")
		label.Position = UDim2_new(0, 4, 0, 0)
		label.Size = UDim2_new(0, 12, 1, -1)
		label.FontSize = 'Size14'
		
		local DEFAULT_COMMAND_BAR_TEXT = "Type command here"
		
		local textBox = Primitives.TextBox(textBoxFrame, 'TextBox')
		--textBox.TextWrapped = true -- This needs to auto-resize
		textBox.BackgroundTransparency = 1
		textBox.Text = DEFAULT_COMMAND_BAR_TEXT
		textBox.ClearTextOnFocus = false
		local padding = 2
		textBox.Size = UDim2_new(1, -(padding * 2) - 4 - 12, 0, 500)
		textBox.Position = UDim2_new(0, 4 + 12 + padding, 0, 0)
		textBox.TextXAlignment = 'Left'
		textBox.TextYAlignment = 'Top'
		textBox.FontSize = 'Size18'
		textBox.TextWrapped = true

		-- override SelectionImageObject to better fit
		if isTenFootInterface then
			local selectionImage = Instance.new('ImageLabel')
			selectionImage.Name = "SelectionImage"
			selectionImage.Size = UDim2.new(1, textBoxFrame.AbsoluteSize.x + 36, 0, Style.CommandLineHeight + 24)
			selectionImage.Position = UDim2.new(0, -18, 0, -12)
			selectionImage.Image = 'rbxasset://textures/ui/SelectionBox.png'
			selectionImage.ScaleType = Enum.ScaleType.Slice
			selectionImage.SliceCenter = Rect.new(21,21,41,41)
			selectionImage.BackgroundTransparency = 1

			textBox.SelectionImageObject = selectionImage
		end
		
		do
			local defaultSize = UDim2_new(1, 0, 0, Style.CommandLineHeight)
			local first = true
			
			textBox.Changed:connect(function(property)
				if property == 'TextBounds' or property == 'AbsoluteSize' then
					if first then -- There's a glitch that only occurs on the first change
						first = false
						return
					end
					local textBounds = textBox.TextBounds
					if textBounds.Y > Style.CommandLineHeight then
						textBoxFrame.Size = UDim2_new(1, 0, 0, textBounds.Y + 2)
					else
						textBoxFrame.Size = defaultSize
					end
				end
			end)
		end
		
		local disconnector = CreateDisconnectSignal()
		
		local backtrackPosition = 0
		local inputtedText = {}
		local isLastWeak = false
		local function addInputtedText(text, weak)
			-- weak means it gets overwritten by the next text that's inputted
			if isLastWeak then
				table.remove(inputtedText, 1)
			end
			if inputtedText[1] == text then
				isLastWeak = isLastWeak and weak
				return
			end
			isLastWeak = weak
			if not weak then
				for i = #inputtedText, 1, -1 do
					if inputtedText[i] == text then
						table.remove(inputtedText, i)
					end
				end
			end
			table.insert(inputtedText, 1, text)
		end
		local function backtrack(direction)
			backtrackPosition = backtrackPosition + direction
			if backtrackPosition < 1 then
				backtrackPosition = 1
			elseif backtrackPosition > #inputtedText then
				backtrackPosition = #inputtedText
			end
			if inputtedText[backtrackPosition] then
				-- Setting the text doesn't always work, especially after losing focus without pressing enter, then clicking back
				textBox.Text = inputtedText[backtrackPosition]
			end
		end
		
		local focusLostWithoutEnter = false
		
		textBox.Focused:connect(function()
			if textBox.Text == DEFAULT_COMMAND_BAR_TEXT then
				textBox.Text = ""
			end
			disconnector:fire()
			backtrackPosition = 0
			disconnector:connect(UserInputService.InputBegan:connect(function(input)
				if input.KeyCode == Enum.KeyCode.Up then
					if backtrackPosition == 0 and not focusLostWithoutEnter then
						-- They typed something, then pressed up. They might want what they typed back, so we store it
						--  after they input the next thing, we know they meant to discard this, which is why it's "weak" (second arg is true)
						addInputtedText(textBox.Text, true)
						backtrackPosition = 1
					end
					backtrack(1)
				elseif input.KeyCode == Enum.KeyCode.Down then
					backtrack(-1)
				end
			end))
		end)
		
		textBox.FocusLost:connect(function(enterPressed)
			disconnector:fire()
			if enterPressed then
				focusLostWithoutEnter = false
				
				local text = textBox.Text
				addInputtedText(text, false)
				this.CommandInputted:fire(text)
				textBox.Text = ""

				-- let's not spam the popup keyboard after text is entered
				if not isTenFootInterface then
					textBox:CaptureFocus()
				end
			else
				backtrackPosition = 0
				focusLostWithoutEnter = true
				addInputtedText(textBox.Text, true)
				if textBox.Text == "" then
					textBox.Text = DEFAULT_COMMAND_BAR_TEXT
				end
			end
		end)

		return this
	end
end
do
	local padding = 5
	local LabelSize = UDim2_new(1, -padding, 0, 2048)
	
	local TextColors = Style.MessageColors
	local TextColorUnknown = Color3_new(0.5, 0, 1)
	
	local function isHidden(message)
		return false
	end

	function Methods.CreateOutput(devConsole, messages, messageFilter)

		-- AKA 'Log'
		local heightChanged = CreateSignal()
		local output = {
			Visible = false;
			Height = 0;
			HeightChanged = heightChanged;
            MessagesDirty = false;
            MessagesDirtyPosition = 1;
		}
		
		local function setHeight(height)
			height = height + 4
			output.Height = height
			heightChanged:fire(height)
		end

		-- The label container
		local frame = Primitives.FolderFrame(nil, 'Output')
		frame.ClipsDescendants = true
		output.Frame = frame

		local textWrappedEnabled = false

		do
			local lastX = 0
			connectPropertyChanged(frame, 'AbsoluteSize', function(size)
				local currentX = size.X
				--currentY = currentY - currentY
				if currentX ~= lastX then
					lastX = currentX
					output:RefreshMessages()
				end
			end)
		end

		local labels = {}
		local labelPositions = {}

		local function RefreshTextWrapped()
			if not output.Visible then
				return
			end
			local y = 1
			for i = 1, #labels do
				local label = labels[i]
				label.TextWrapped = textWrappedEnabled
				local height = label.TextBounds.Y
				label.Size = LabelSize -- UDim2_new(1, 0, 0, height)
				label.Position = UDim2_new(0, padding, 0, y)
				y = y + height
				if height > 16 then
					y = y + 4
				end
			end
			setHeight(y)
		end
		local MAX_LINES = 2048

		local function RefreshMessagesForReal(messageStartPosition)
			if not output.Visible then
				return
			end

			local y = 1
			local labelPosition = 0 -- position of last used label

			-- Failed optimization:
			messageStartPosition = nil
			if messageStartPosition then
				local labelPositionLast;
				for i = messageStartPosition, math_max(1, #messages - MAX_LINES), -1 do
					if labelPositions[i] then
						labelPositionLast = labelPositions[i]
						break
					end
				end
				if labels[labelPositionLast] then
					labelPosition = labelPositionLast
					local label = labels[labelPositionLast]
					y = label.Position.Y.Offset + label.Size.Y.Offset
				else
					messageStartPosition = nil
				end
			end

			for i = messageStartPosition or math_max(1, #messages - MAX_LINES), #messages do
				local message = messages[i]
				if messageFilter(message) then
					labelPosition = labelPosition + 1
					labelPositions[i] = labelPosition
					local label = labels[labelPosition]
					if not label then
						label = Instance_new('TextLabel', frame)
						label.ZIndex = Style.ZINDEX
						label.BackgroundTransparency = 1
						--label.Font = Style.Font
						label.FontSize = 'Size10'
						label.TextXAlignment = 'Left'
						label.TextYAlignment = 'Top'
						labels[labelPosition] = label
					end
					label.TextWrapped = textWrappedEnabled
					label.Size = LabelSize
					label.TextColor3 = TextColors[message.Type] or TextColorUnknown
					label.Text = message.Time .. " -- " .. message.Message
					
					local height = label.TextBounds.Y
					label.Size = LabelSize -- UDim2_new(1, -padding, 0, height)
					label.Position = UDim2_new(0, padding, 0, y)

					y = y + height
					
					if height > 16 then
						y = y + 4
					end
				else
					labelPositions[i] = false
				end
			end

			-- Destroy extra labels
			for i = #labels, labelPosition + 1, -1 do
				labels[i]:Destroy()
				labels[i] = nil
			end
			
			setHeight(y)
		end
		
        function output.SetMessagesDirty(output, messageStartPosition)
            if output.MessagesDirty then
                return
            end
            output.MessagesDirty = true
            output.MessagesDirtyPosition = messageStartPosition
        end
		
        if disablePassiveClientLogProcessing then
            -- Refresh messages if there are new messages when devConsole is re-opened
            do
                devConsole.VisibleChanged:connect(function(visible)
                    if visible then
                        if output.MessagesDirty then
                            output.MessagesDirty = false
                            output:RefreshMessages(output.MessagesDirtyPosition)
                        end
                    end
                end)
            end
		end
		

		local refreshHandle;
		function output.RefreshMessages(output, messageStartPosition)
			if not output.Visible then
				return
			end
			if not refreshHandle then
				refreshHandle = true
				coroutine.wrap(function() -- Not ideal
					wait()
					refreshHandle = false
					RefreshMessagesForReal()
				end)()
			end
		end
		
		function output.SetTextWrappedEnabled(output, textWrappedEnabledNew)
			if textWrappedEnabledNew == textWrappedEnabled then
				return
			end
			textWrappedEnabled = textWrappedEnabledNew
			RefreshTextWrapped()
		end
		
		function output.SetVisible(output, visible)
			if visible == output.Visible then
				return
			end
			output.Visible = visible
			if visible then
				RefreshMessagesForReal()
			else
				for i = #labels, 1, -1 do
					labels[i]:Destroy()
					labels[i] = nil
				end
			end
		end

		return output
	end
end

----------
-- Tabs --
----------
function Methods.GetCurrentOpenTab(devConsole)
	local tabs = devConsole.Tabs
	if tabs == nil then 
		return nil
	end

	for i = 1, #tabs do
		local tab = tabs[i]
		if tab.Open then
			return tab
		end
	end
	return nil
end


function Methods.RefreshTabs(devConsole)
	-- Go through and reposition them
	local x = Style.BorderSize
	local tabs = devConsole.Tabs
	for i = 1, #tabs do
		local tab = tabs[i]
		if tab.ButtonFrame.Visible then
			x = x + 3
			tab.ButtonFrame.Position = UDim2_new(0, x, 0, 0)
			x = x + tab.ButtonFrame.AbsoluteSize.X + 3
		end
	end
end

function Methods.AddTab(devConsole, text, body, openCallback, visibleCallback)
	-- Body is a frame that contains the tab contents
	body.Visible = false
	
	local tab = {
		Open = false; -- If the tab is open
		Visible = false; -- If the tab is shown
		OpenCallback = openCallback;
		VisibleCallback = visibleCallback;
		Body = body;
	}

	local nominalSize = TextService:GetTextSize(text, TAB_TEXT_SIZE, Enum.Font.SourceSans, Vector2.new(1e3, 1e3))
	local width = nominalSize.x + (TAB_TEXT_PADDING * 2)
	
	local buttonFrame = Primitives.InvisibleButton(devConsole.Frame.Interior.Tabs, 'Tab_' .. text)
	tab.ButtonFrame = buttonFrame
	buttonFrame.Size = UDim2_new(0, width, 0, Style.TabHeight)
	buttonFrame.Visible = false
	
	local textLabel = Primitives.TextLabel(buttonFrame, 'Label', text)
	textLabel.TextSize = TAB_TEXT_SIZE
	--textLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	devConsole:ConnectButtonHover(buttonFrame, devConsole:CreateButtonEffectFunction(textLabel))

	-- These are the dimensions when the tab is closed
	local size0 = UDim2_new(1, 0, 1, -7)
	local position0 = UDim2_new(0, 0, 0, 4)
	-- There are the dimensions when the tab is open
	local size1 = UDim2_new(1, 0, 1, -4)
	local position1 = UDim2_new(0, 0, 0, 4)
	-- It starts closed
	textLabel.Size = size0
	textLabel.Position = position0
	
	function tab.SetVisible(tab, visible)
		if visible == tab.Visible then
			return
		end
		tab.Visible = visible
		tab:SetOpen(false)
		if tab.VisibleCallback then
			tab.VisibleCallback(visible)
		end
		buttonFrame.Visible = visible
		devConsole:RefreshTabs()
		if not visible then
			tab.SetOpen(false)
		end
	end

	function tab.RecordInitialOpen(tab)
		local analyticsService = game:GetService("AnalyticsService")
		analyticsService:trackEvent(AnalyticsCategory_Game, 
			AnalyticsAction_InitialOpenTab, 
			tab.Body.Name)
	end

	function tab.RecordClickToOpen(tab)
		local analyticsService = game:GetService("AnalyticsService")
		analyticsService:trackEvent(AnalyticsCategory_Game, 
			AnalyticsAction_ClickToOpenOpenTab, 
			tab.Body.Name)
	end

	function tab.SetOpen(tab, open)
		if open == tab.Open then
			return
		end
		tab.Open = open

		if open then
			if tab.SavedScrollbarValue then
				devConsole.WindowScrollbar:SetValue(tab.SavedScrollbarValue)  -- This doesn't load correctly?
			end
			local tabs = devConsole.Tabs
			for i = 1, #tabs do
				if tabs[i] ~= tab then
					tabs[i]:SetOpen(false)
				end
			end
			if body then
				body.Visible = true
			end
			devConsole:RefreshTabs()
			-- Set dimensions for folder effect
			textLabel.Size = size1
			textLabel.Position = position1
			devConsole.CurrentOpenedTab = buttonFrame
		else
			tab.SavedScrollbarValue = devConsole.WindowScrollbar:GetValue() -- This doesn't save correctly

			if body then
				body.Visible = false
				-- todo: (not essential) these 2 lines should instead exist during open (above block) after going through tabs
				devConsole.Frame.Interior.WindowContainer.Window.Body.Size = UDim2_new(1, 0, 1, 0) 
				devConsole.Frame.Interior.WindowContainer.Window.Body.Position = UDim2_new(0, 0, 0, 0)
			end
			
			-- Set dimensions for folder effect
			textLabel.Size = size0
			textLabel.Position = position0
		end
		
		if tab.OpenCallback then
			tab.OpenCallback(open)
		end
		
	end
	
	buttonFrame.MouseButton1Click:connect(function()
			if tab.Visible then
				tab:RecordClickToOpen()
				tab:SetOpen(true)
			end
		end)
	
	table.insert(devConsole.Tabs, tab)
	
	return tab
	
end

----------------
-- Scroll bar --
----------------
function Methods.ApplyScrollbarToFrame(devConsole, 
    scrollbar, 
    window, 
    body, 
    frame)  
	local windowHeight, bodyHeight
	local height = scrollbar:GetHeight()
	local value = scrollbar:GetValue()
	local function getHeights()
		return window.AbsoluteSize.Y, body.AbsoluteSize.Y
	end
	local function refreshDimension()
		local windowHeightNew, bodyHeightNew = getHeights()

		if bodyHeight ~= bodyHeightNew or windowHeight ~= windowHeightNew then
			bodyHeight, windowHeight = bodyHeightNew, windowHeightNew
			height = windowHeight / bodyHeight
			scrollbar:SetHeight(height)
			
			local yOffset = (bodyHeight - windowHeight) * value
      -- Never let yOffset go negative.
      -- Without this line, things that are smaller than the containing scroll 
      -- window start at the bottom and grow up.
      -- It's a better UX to have things start at top and grow down.
      if (yOffset < 0) then 
        yOffset = 0
      end
      
			local x = body.Position.X
			local y = body.Position.Y
      
			body.Position = UDim2_new(x.Scale, x.Offset, y.Scale, -math.floor(yOffset))
		end

	end
	
	local function setValue(valueNew)
		value = valueNew
		refreshDimension()
		local yOffset = (bodyHeight - windowHeight) * value
		local x = body.Position.X
		local y = body.Position.Y
		body.Position = UDim2_new(x.Scale, x.Offset, y.Scale, -math.floor(yOffset))
	end
	scrollbar.ValueChanged:connect(setValue)
	setValue(scrollbar:GetValue())

	local scrollDistance = 120
	
	window.Active = true

	scrollbar.ButtonUp.MouseButton1Click:connect(function()
		scrollbar:Scroll(-scrollDistance, getHeights())
	end)
	scrollbar.ButtonDown.MouseButton1Click:connect(function()
		scrollbar:Scroll(scrollDistance, getHeights())
	end)

	connectPropertyChanged(window, 'AbsoluteSize', refreshDimension)
	connectPropertyChanged(body, 'AbsoluteSize', function()
		local windowHeight, bodyHeight = getHeights()
		local value = scrollbar:GetValue()
		if value ~= 1 and value ~= 0 then
			local value = -body.Position.Y.Offset / (bodyHeight - windowHeight)
			scrollbar:SetValue(value)
		end
		refreshDimension()
	end)

	window.MouseWheelForward:connect(function()
		scrollbar:Scroll(-scrollDistance, getHeights())
	end)
	window.MouseWheelBackward:connect(function()
		scrollbar:Scroll(scrollDistance, getHeights())
	end)
	window.TouchPan:connect(function(positions, delta, velocity, userInputState)
		scrollbar:Scroll(-delta.y, getHeights())
	end)
end

function Methods.CreateScrollbar(devConsole, rotation)
	local scrollbar = {}

	local main = nil
	main = Primitives.FolderFrame(main, 'Scrollbar')
	scrollbar.Frame = main

	local frame = Primitives.Button(main, 'Frame')
	frame.AutoButtonColor = false
	frame.Size = UDim2_new(1, 0, 1, -(Style.HandleHeight) * 2 - 2)
	frame.Position = UDim2_new(0, 0, 0, Style.HandleHeight + 1)
	-- frame.BackgroundTransparency = 0.75
	
	-- This replaces the scrollbar when it's not being used
	local frame2 = Primitives.Frame(main, 'Frame')
	frame2.Size = UDim2_new(1, 0, 1, 0)
	frame2.Position = UDim2_new(0, 0, 0, 0)
	
	function scrollbar.SetVisible(scrollbar, visible)
		frame.Visible = visible
		frame2.Visible = not visible
	end
	
	local buttonUp = Primitives.ImageButton(frame, 'Up', 'https://www.roblox.com/asset/?id=261880783')
	scrollbar.ButtonUp = buttonUp
	buttonUp.Size = UDim2_new(1, 0, 0, Style.HandleHeight)
	buttonUp.Position = UDim2_new(0, 0, 0, -Style.HandleHeight - 1)
	buttonUp.AutoButtonColor = false
	devConsole:ConnectButtonHover(buttonUp, devConsole:CreateButtonEffectFunction(buttonUp))

	local buttonDown = Primitives.ImageButton(frame, 'Down', 'https://www.roblox.com/asset/?id=261880783')
	scrollbar.ButtonDown = buttonDown
	buttonDown.Size = UDim2_new(1, 0, 0, Style.HandleHeight)
	buttonDown.Position = UDim2_new(0, 0, 1, 1)
	buttonDown.Rotation = 180
	buttonDown.AutoButtonColor = false
	devConsole:ConnectButtonHover(buttonDown, devConsole:CreateButtonEffectFunction(buttonDown))

	local bar = Primitives.Button(frame, 'Bar')
	bar.Size = UDim2_new(1, 0, 0.5, 0)
	bar.Position = UDim2_new(0, 0, 0.25, 0)
	
	bar.AutoButtonColor = false
	
	local grip = Primitives.InvisibleImageLabel(bar, 'Image', 'https://www.roblox.com/asset/?id=261904959')
	grip.Size = UDim2_new(0, 16, 0, 16)
	grip.Position = UDim2_new(0.5, -8, 0.5, -8)

	local buttonEffectFunction = devConsole:CreateButtonEffectFunction(bar, nil, bar.BackgroundColor3, bar.BackgroundColor3)
	
	-- Inertial scrolling would be added around here
	
	local value = 1
	local valueChanged = CreateSignal()
	scrollbar.ValueChanged = valueChanged
	-- value = 0: at very top
	-- value = 1: at very bottom
	
	local height = 0.25
	local heightChanged = CreateSignal()
	scrollbar.HeightChanged = heightChanged
	-- height = 0: infinite page size
	-- height = 1: bar fills frame completely, no need to scroll
	
	local function getValueAtPosition(pos)
		return ((pos - main.AbsolutePosition.Y) / main.AbsoluteSize.Y) / (1 - height)
	end
	
	-- Refreshes the position and size of the scrollbar
	local function refresh()
		local y = height
		bar.Size = UDim2_new(1, 0, y, 0)
		bar.Position = UDim2_new(0, 0, value * (1 - y), 0)
	end
	refresh()
	
	function scrollbar.SetValue(scrollbar, valueNew)
		if valueNew < 0 then
			valueNew = 0
		elseif valueNew > 1 then
			valueNew = 1
		end
		if valueNew ~= value then
			value = valueNew
			refresh()
			valueChanged:fire(valueNew)
		end
	end
	function scrollbar.GetValue(scrollbar)
		return value
	end
	
	function scrollbar.Scroll(scrollbar, direction, windowHeight, bodyHeight)
		scrollbar:SetValue(value + direction / bodyHeight) -- needs to be adjusted
	end
	
	function scrollbar.SetHeight(scrollbar, heightNew)
		if heightNew < 0 then
			heightNew = 0 -- this is still an awkward case of divide-by-zero that shouldn't happen
		elseif heightNew > 1 then
			heightNew = 1
		end
		heightNew = math.max(heightNew, 0.1) -- Minimum scroll bar size, from that point on it is not the actual ratio
		if heightNew ~= height then
			height = heightNew
			scrollbar:SetVisible(heightNew < 1)
			refresh()
			heightChanged:fire(heightNew)
		end
	end
	function scrollbar.GetHeight(scrollbar)
		return height
	end

	devConsole:ConnectButtonDragging(bar, function()
		local value0 = value -- starting value
		return function(dx, dy)
			local dposition = dy -- net position change relative to the bar's axis (could support rotated scroll bars)
			local dvalue = (dposition / frame.AbsoluteSize.Y) / (1 - height) -- net value change
			scrollbar:SetValue(value0 + dvalue)
		end
	end, buttonEffectFunction)
	
	return scrollbar
end

----------------------
-- Fancy color lerp --
----------------------
local RenderLerpAnimation; do
	local math_cos = math.cos
	local math_pi = math.pi
	function RenderLerpAnimation(disconnectSignal, length, callback)
		disconnectSignal:fire()
		local timeStamp = tick()
		local listener = RunService.RenderStepped:connect(function()
			local t = (tick() - timeStamp) / length
			if t >= 1 then
				t = 1
				disconnectSignal:fire()
			else
				t = (1 - math_cos(t * math_pi)) / 2 -- cosine interpolation aka 'Sine' in :TweenSizeAndPosition
			end
			callback(t)
		end)
		disconnectSignal:connect(listener)
		return listener
	end
end

if EYECANDY_ENABLED then
	-- This is the pretty version
	function Methods.CreateButtonEffectFunction(devConsole, button, normalColor, clickingColor, hoveringColor)
		normalColor = normalColor or button.BackgroundColor3
		clickingColor = clickingColor or Style.GetButtonDownColor(normalColor)
		hoveringColor = hoveringColor or Style.GetButtonHoverColor(normalColor)
		local disconnectSignal = CreateDisconnectSignal()
		return function(clicking, hovering)
			local color0 = button.BackgroundColor3
			local color1 = clicking and clickingColor or (hovering and hoveringColor or normalColor)
			local r0, g0, b0 = color0.r, color0.g, color0.b
			local r1, g1, b1 = color1.r, color1.g, color1.b
			local r2, g2, b2 = r1 - r0, g1 - g0, b1 - b0
			RenderLerpAnimation(disconnectSignal, clicking and 0.125 or 0.25, function(t)
				button.BackgroundColor3 = Color3_new(r0 + r2 * t, g0 + g2 * t, b0 + b2 * t)
			end)
		end
	end
else
	-- This is the simple version
	function Methods.CreateButtonEffectFunction(devConsole, button, normalColor, clickingColor, hoveringColor)
		normalColor = normalColor or button.BackgroundColor3
		clickingColor = clickingColor or Style.GetButtonDownColor(normalColor)
		hoveringColor = hoveringColor or Style.GetButtonHoverColor(normalColor)
		return function(clicking, hovering)
			button.BackgroundColor3 = clicking and clickingColor or (hovering and hoveringColor or normalColor)
		end
	end
end

function Methods.GenerateOptionButtonAnimationToggle(devConsole, interior, button, gear, tabContainer, optionsClippingFrame, optionsFrame)
	
	local tabContainerSize0 = tabContainer.Size
	local tabContainerSize1 = UDim2_new(
		tabContainerSize0.X.Scale, tabContainerSize0.X.Offset + (Style.GearSize + 2) + Style.BorderSize,
		tabContainerSize0.Y.Scale, tabContainerSize0.Y.Offset)
		
	local gearRotation0 = gear.Rotation
	local gearRotation1 = gear.Rotation - 90
	local interiorSize0 = interior.Size
	local interiorSize1 = UDim2_new(interiorSize0.X.Scale, interiorSize0.X.Offset, interiorSize0.Y.Scale, interiorSize0.Y.Offset - Style.OptionAreaHeight)
	local interiorPosition0 = interior.Position
	local interiorPosition1 = UDim2_new(interiorPosition0.X.Scale, interiorPosition0.X.Offset, interiorPosition0.Y.Scale, interiorPosition0.Y.Offset + Style.OptionAreaHeight)
	
	local length = 0.5
	local disconnector = CreateDisconnectSignal()
	return function(open)
		if open then
			interior:TweenSizeAndPosition(interiorSize1, interiorPosition1, 'Out', 'Sine', length, true)
			tabContainer:TweenSize(tabContainerSize1, 'Out', 'Sine', length, true)
			optionsClippingFrame:TweenSizeAndPosition(
				UDim2_new(1, 0, 0, Style.OptionAreaHeight),
				UDim2_new(0, 0, 0, -Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			optionsFrame:TweenPosition(
				UDim2_new(0, 0, 0, 0),-- -Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			local gearRotation = gear.Rotation
			RenderLerpAnimation(disconnector, length, function(t)
				gear.Rotation = gearRotation1 * t + gearRotation * (1 - t)
			end)
		else
			interior:TweenSizeAndPosition(interiorSize0, interiorPosition0, 'Out', 'Sine', length, true)
			tabContainer:TweenSize(tabContainerSize0, 'Out', 'Sine', length, true)
			optionsClippingFrame:TweenSizeAndPosition(
				UDim2_new(1, 0, 0, 0),
				UDim2_new(0, 0, 0, 0),
				'Out', 'Sine', length, true
			)
			optionsFrame:TweenPosition(
				UDim2_new(0, 0, 0, Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			local gearRotation = gear.Rotation
			RenderLerpAnimation(disconnector, length, function(t)
				gear.Rotation = gearRotation0 * t + gearRotation * (1 - t)
			end)
		end	
	end
end

------------------------------
-- Events for color effects --
------------------------------
do
	local globalInteractEvent = CreateSignal()
	function Methods.ConnectButtonHover(devConsole, button, mouseInteractCallback)
		-- void mouseInteractCallback(bool clicking, bool hovering)
		
		local this = {}
		
		local clicking = false
		local hovering = false
		local function set(clickingNew, hoveringNew)
			if hoveringNew and TouchEnabled then
				hoveringNew = false -- Touch screens don't hover
			end
			if clickingNew ~= clicking or hoveringNew ~= hovering then
				clicking, hovering = clickingNew, hoveringNew
				mouseInteractCallback(clicking, hovering)
			end
		end
		
		button.MouseButton1Down:connect(function()
			set(true, true)
		end)
		button.MouseButton1Up:connect(function()
			set(false, true)
		end)
		button.MouseEnter:connect(function()
			set(clicking, true)
		end)
		button.MouseLeave:connect(function()
			set(false, false)
		end)
		--[[ these might cause memory leakes (when creating temporary buttons)
		-- This solves the case in which the user presses F9 while hovering over a button
		devConsole.VisibleChanged:connect(function()
			set(false, false)
		end)
		
		globalInteractEvent:connect(function()
			set(false, false)
		end)
		--]]
	end
end

-------------------------
-- Events for draggers -- (for the window's top handle, the resize button, and scrollbars)
-------------------------
function Methods.ConnectButtonDragging(devConsole, button, dragCallback, mouseInteractCallback)
	
	-- How dragCallback is called: local deltaCallback = dragCallback(xPositionAtMouseDown, yPositionAtMouseDown)
	-- How deltaCallback is called: deltaCallback(netChangeInAbsoluteXPositionSinceMouseDown, netChangeInAbsoluteYPositionSinceMouseDown)
	
	local dragging = false -- AKA 'clicking'
	local hovering = false
	
	local listeners = {}
	
	local disconnectCallback;
	
	local function stopDragging()
		if not dragging then
			return
		end
		dragging = false
		mouseInteractCallback(dragging, hovering)
		for i = #listeners, 1, -1 do
			listeners[i]:disconnect()
			listeners[i] = nil
		end
	end
	
	local ButtonUserInputTypes = {
		[Enum.UserInputType.MouseButton1] = true;
		[Enum.UserInputType.Touch] = true; -- I'm not sure if touch actually works here
	}
	
	local mouse = game:GetService("Players").LocalPlayer:GetMouse()

	local function startDragging(startP)
		if dragging then
			return
		end
		dragging = true
		
		mouseInteractCallback(dragging, hovering)
		local deltaCallback;
		
		local x0, y0 = startP.X, startP.Y
		--[[
		listeners[#listeners + 1] = UserInputService.InputBegan:connect(function(input)
			if ButtonUserInputTypes[input.UserInputType] then
				local position = input.Position
				if position and not x0 then
					x0, y0 = position.X, position.Y -- The same click
				end
			end
		end)
		--]]
		listeners[#listeners + 1] = UserInputService.InputEnded:connect(function(input)
			if ButtonUserInputTypes[input.UserInputType] then
				stopDragging()
			end
		end)
		listeners[#listeners + 1] = UserInputService.InputChanged:connect(function(input)
		
			if not (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch)then -- added in a touch check
				return
			end
			
			local p1 = input.Position

			if not p1 then
				return
			end
			local x1, y1 = p1.X, p1.Y
			if not deltaCallback then
				deltaCallback, disconnectCallback = dragCallback(x0 or x1, y0 or y1)
			end
			if x0 then
				deltaCallback(x1 - x0, y1 - y0)
			end
		end)
	end
	
	--button.MouseButton1Down:connect(startDragging)
	--button.MouseButton1Up:connect(stopDragging)
	
	button.InputBegan:connect(function(iobj)
		if iobj.UserInputType == Enum.UserInputType.Touch or iobj.UserInputType == Enum.UserInputType.MouseButton1 then
			startDragging(iobj.Position)
		end
	end)
	
	button.InputEnded:connect(function(iobj)
		if iobj.UserInputType == Enum.UserInputType.Touch or iobj.UserInputType == Enum.UserInputType.MouseButton1 then
			stopDragging()
		end
	end)	
	
	button.MouseEnter:connect(function()
		if not hovering then
			hovering = true
			mouseInteractCallback(dragging, hovering)
		end
	end)
	button.MouseLeave:connect(function()
		if hovering then
			hovering = false
			mouseInteractCallback(dragging, hovering)
		end
	end)
	
	devConsole.VisibleChanged:connect(stopDragging)
end

-----------------
-- Permissions --
-----------------
do
	local permissionsLoading, permissions = false;
	function DeveloperConsole.GetPermissions()
		while permissionsLoading do wait() end
		
		if permissions then
			return permissions
		end
		
		permissions = {}
		permissionsLoading = true
		permissions.IsCreator = false

		local success, result = pcall(function()
			local url = string.format("/users/%d/canmanage/%d", game:GetService("Players").LocalPlayer.UserId, game.PlaceId)
			return game:GetService('HttpRbxApiService'):GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
		end)
		if success and type(result) == "string" then
			-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
			-- Convert from JSON to a table
			-- pcall in case of invalid JSON
			success, result = pcall(function()
				return game:GetService('HttpService'):JSONDecode(result)
			end)
			if success and result.CanManage == true then
				permissions.IsCreator = result.CanManage
			end
		end
		
		permissions.ClientCodeExecutionEnabled = false
		pcall(function()
			permissions.ServerCodeExecutionEnabled = permissions.IsCreator and (not settings():GetFFlag("DebugDisableLogServiceExecuteScript"))
		end)
		
		if DEBUG or (RunService:IsStudio()) then
			permissions.IsCreator = true
			permissions.ServerCodeExecutionEnabled = true
		end
		
		permissions.MayViewServerLog = permissions.IsCreator
		permissions.MayViewClientLog = true
		
		permissions.MayViewServerStats = permissions.IsCreator
		permissions.MayViewServerMemory = permissions.IsCreator
		permissions.MayViewServerScripts = permissions.IsCreator
		permissions.MayViewServerJobs = permissions.IsCreator

		permissions.MayViewDataStoreBudget = false
		pcall(function()
			permissions.MayViewDataStoreBudget = permissions.IsCreator
		end)
		permissions.MayViewHttpResultClient = false
		pcall(function()
			permissions.MayViewHttpResultClient = permissions.IsCreator and settings():GetFFlag("EnableClientHttpAnalytics")
		end)
		permissions.MayViewHttpResultServer = false
		pcall(function()
			permissions.MayViewHttpResultServer = permissions.IsCreator and
								settings():GetFFlag("EnableClientHttpAnalytics") and
								settings():GetFFlag("EnableServerHttpAnalytics")
		end)

		permissions.MayViewContextActionBindings = permissions.IsCreator
		
		permissionsLoading = false
		
		return permissions
	end
end

----------------------
-- Output interface --
----------------------
do
	local messagesAndStats;
	function DeveloperConsole.GetMessagesAndStats(permissions)
		
		if messagesAndStats then
			return messagesAndStats
		end
	
		local function NewOutputMessageSync(getMessages)
			local this;
			this = {
				Messages = nil; -- Private member, DeveloperConsole should use :GetMessages()
				MessageAdded = CreateSignal();
				GetMessages = function()
					local messages = this.Messages
					if not messages then
						-- If it errors while getting messages, it skip it next time
						if this.Attempted then
							messages = {}
						else
							this.Attempted = true
							messages = getMessages(this)
							this.Messages = messages
						end
		
					end
					return messages
				end;
			}
			return this
		end
		
		local ConvertTimeStamp; do
			-- Easy, fast, and working nicely
			local function numberWithZero(num)
				return (num < 10 and "0" or "") .. num
			end
			local string_format = string.format -- optimization
			function ConvertTimeStamp(timeStamp)
				local localTime = timeStamp - os_time() + math.floor(tick())
				local dayTime = localTime % 86400
						
				local hour = math.floor(dayTime/3600)
				
				dayTime = dayTime - (hour * 3600)
				local minute = math.floor(dayTime/60)
				
				dayTime = dayTime - (minute * 60)
				local second = dayTime
	
				local h = numberWithZero(hour)
				local m = numberWithZero(minute)
				local s = numberWithZero(dayTime)
		
				return string_format("%s:%s:%s", h, m, s)
			end
		end
		
		local warningsToFilter = {"ClassDescriptor failed to learn", "EventDescriptor failed to learn", "Type failed to learn"}
		
		-- Filter "ClassDescriptor failed to learn" errors
		local function filterMessageOnAdd(message)
			if message.Type ~= Enum.MessageType.MessageWarning.Value then
				return false
			end
			local found = false
			for _, filterString in ipairs(warningsToFilter) do
				if string.find(message.Message, filterString) ~= nil then
					found = true
					break
				end
			end
			return found
		end
	
		local outputMessageSyncLocal;
		if permissions.MayViewClientLog then
			outputMessageSyncLocal = NewOutputMessageSync(function(this)
				local messages = {}
				
				local LogService = game:GetService("LogService")
				do -- This do block keeps history from sticking around in memory
					local history = LogService:GetLogHistory()
					for i = 1, #history do
						local msg = history[i]
						local message = {
							Message = msg.message or "[DevConsole Error 1]";
							Time = ConvertTimeStamp(msg.timestamp);
							Type = msg.messageType.Value;
						}
						if not filterMessageOnAdd(message) then
							messages[#messages + 1] = message
						end
					end
				end
				
				LogService.MessageOut:connect(function(text, messageType)
					local message = {
						Message = text or "[DevConsole Error 2]";
						Time = ConvertTimeStamp(os_time());
						Type = messageType.Value;
					}
					if not filterMessageOnAdd(message) then
						messages[#messages + 1] = message
						this.MessageAdded:fire(message)
					end
				end)
			
				return messages
			end)
		end
		
		local outputMessageSyncServer;
		if permissions.MayViewServerLog then
			outputMessageSyncServer = NewOutputMessageSync(function(this)
				local messages = {}
				
				local LogService = game:GetService("LogService")
				
				LogService.ServerMessageOut:connect(function(text, messageType, timestamp)
					local message = {
						Message = text or "[DevConsole Error 3]";
						Time = ConvertTimeStamp(timestamp);
						Type = messageType.Value;
					}
					if not filterMessageOnAdd(message) then
						messages[#messages + 1] = message
						this.MessageAdded:fire(message)
					end
				end)
				LogService:RequestServerOutput()
				
				return messages
			end)
		end
	
		local statsSyncServer;
		if (permissions.MayViewServerStats or 
			permissions.MayViewServerScripts or 
			permissions.MayViewServerMemory) then
			
			statsSyncServer = {
				Stats = nil; -- Private member, use GetStats instead
				StatsReceived = CreateSignal();
			}
			local statsListenerConnection;
			function statsSyncServer.GetStats(statsSyncServer)
				local stats = statsSyncServer.Stats
				if not stats then
					stats = {}
					pcall(function()
						local clientReplicator = game:FindService("NetworkClient"):GetChildren()[1]
							if clientReplicator then
							statsListenerConnection = clientReplicator.StatsReceived:connect(function(stat)
								statsSyncServer.StatsReceived:fire(stat)
							end)
							clientReplicator:RequestServerStats(true)
						end
					end)
					statsSyncServer.Stats = stats
				end
				return stats
			end
			
		end
		--]]
		
		messagesAndStats = {
			OutputMessageSyncLocal = outputMessageSyncLocal;
			OutputMessageSyncServer = outputMessageSyncServer;
			StatsSyncServer = statsSyncServer;
		}
		
		return messagesAndStats
	end
end

--[[ Module Table ]]--
-- We only create the dev console if we need it; user toggles visibility.

local DevConsoleModuleTable = {}
local myDeveloperConsole = nil

-- Tenfoot Interface set up
local function onDevConsoleVisibilityChanged(isVisible)
	local blockMenuActionName = "blockMenuAction"
	local closeDevConsoleActionName = "closeDevConsoleAction"
	local selectionParentName = "devConsoleSelectionGroup"

	local function closeDevConsole(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End then
			myDeveloperConsole:SetVisible(false)
		end
	end

	if isVisible then
		-- block menu open input while dev console is open
		ContextActionService:BindCoreAction(blockMenuActionName, function() end, false, Enum.KeyCode.ButtonStart)

		local menuModule = require(Modules.Settings.SettingsHub)
		menuModule:SetVisibility(false, true)
		ContextActionService:BindCoreAction(closeDevConsoleActionName, closeDevConsole, false, Enum.KeyCode.ButtonB)

		GuiService:AddSelectionParent(selectionParentName, myDeveloperConsole.Frame)
		GuiService.SelectedCoreObject = myDeveloperConsole.CurrentOpenedTab
	else
		ContextActionService:UnbindCoreAction(closeDevConsoleActionName)
		ContextActionService:UnbindCoreAction(blockMenuActionName)

		GuiService:RemoveSelectionGroup(selectionParentName)
		GuiService.SelectedCoreObject = nil
	end
end

local devConsoleCreating = false
local function getDeveloperConsole()
	if (not myDeveloperConsole and not devConsoleCreating) then
		devConsoleCreating = true
		local permissions = DeveloperConsole.GetPermissions()
		local messagesAndStats = DeveloperConsole.GetMessagesAndStats(permissions)

		myDeveloperConsole = DeveloperConsole.new(RobloxGui, permissions, messagesAndStats)

		if isTenFootInterface then
			myDeveloperConsole.VisibleChanged:connect(onDevConsoleVisibilityChanged)
		end
		devConsoleCreating = false
	end
	return myDeveloperConsole
end

function DevConsoleModuleTable:GetVisibility()
	local devConsole = getDeveloperConsole()
	if devConsole then
		return devConsole.Visible
	else
		return false
	end
end

function DevConsoleModuleTable:SetVisibility(value)
	local devConsole = getDeveloperConsole()
	if devConsole then
		devConsole:SetVisible(value)
	end
end


local creatingLock = false
local creatingVisibleValueToSet = false

local function SetCoreConsoleCreation()
	if (creatingLock) then return end
	creatingLock = true

	spawn(function()
		--// Keep GetVisibility call before SetVisibility because the first call will yield for some time and 
		--// there is the possibility that during the yield time the value of 'creatingVisibleValueToSet' may
		--// change.
		DevConsoleModuleTable:GetVisibility()
		DevConsoleModuleTable:SetVisibility(creatingVisibleValueToSet)

		creatingLock = false
	end)
end

local StarterGui = game:GetService("StarterGui")
StarterGui:RegisterGetCore("DeveloperConsoleVisible", function()
	if (not myDeveloperConsole) then
		SetCoreConsoleCreation()
		return creatingVisibleValueToSet;
	else
		return DevConsoleModuleTable:GetVisibility()
	end
end)
StarterGui:RegisterSetCore("DeveloperConsoleVisible", function(visible)
	if (type(visible) ~= "boolean") then
		error("DeveloperConsoleVisible must be given a boolean value.")
	end

	if (not myDeveloperConsole) then
		creatingVisibleValueToSet = visible
		SetCoreConsoleCreation()
	else
		DevConsoleModuleTable:SetVisibility(visible)
	end
end)

return DevConsoleModuleTable
