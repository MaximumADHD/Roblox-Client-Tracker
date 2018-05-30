--[[
		Filename: Help.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the help page in Settings Menu
--]]

------------ FFLAGS -------------------
local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

-------------- CONSTANTS --------------
local KEYBOARD_MOUSE_TAG = "KeyboardMouse"
local TOUCH_TAG = "Touch"
local GAMEPAD_TAG = "Gamepad"
local PC_TABLE_SPACING = 4
local XBOX_CONTROLLER_IMAGE_OFFSET = 30
local TEXT_EDGE_DISTANCE = 20

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local TextService = game:GetService("TextService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
  
------------ Variables -------------------
local PageInstance = nil
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()
	this.HelpPages = {}
	this.HelpPageContents = {}
	this.ActiveHelpScheme = nil

	local lastInputType = nil

	function this:GetCurrentInputType()
		if lastInputType == nil then -- we don't know what controls the user has, just use reasonable defaults
		  local platform = UserInputService:GetPlatform()
		  if platform == Enum.Platform.XBoxOne or platform == Enum.Platform.WiiU then

			return GAMEPAD_TAG
		  elseif platform == Enum.Platform.Windows or platform == Enum.Platform.OSX then
			return KEYBOARD_MOUSE_TAG
		  else
			return TOUCH_TAG
		  end
		end

		if lastInputType == Enum.UserInputType.Keyboard or lastInputType == Enum.UserInputType.MouseMovement or 
			lastInputType == Enum.UserInputType.MouseButton1 or lastInputType == Enum.UserInputType.MouseButton2 or
			lastInputType == Enum.UserInputType.MouseButton3 or lastInputType == Enum.UserInputType.MouseWheel then
			  return KEYBOARD_MOUSE_TAG
		elseif lastInputType == Enum.UserInputType.Touch then
		  	  return TOUCH_TAG
		elseif lastInputType == Enum.UserInputType.Gamepad1 or lastInputType == Enum.UserInputType.Gamepad2 or 
			lastInputType == Enum.UserInputType.Gamepad3 or lastInputType == Enum.UserInputType.Gamepad4 then
			  return GAMEPAD_TAG
		end

		return KEYBOARD_MOUSE_TAG
	end


	local function createPCHelp(parentFrame)
		local function createPCGroup(title, actionInputBindings)
		  local textIndent = 9

		  local pcGroupFrame = utility:Create'Frame'
		  {
			Size = UDim2.new(1/3,-PC_TABLE_SPACING,1,0),
			BackgroundTransparency = 1,
			Name = "PCGroupFrame" .. tostring(title)
		  };
		  local pcGroupTitle = utility:Create'TextLabel'
		  {
			Position = UDim2.new(0,textIndent,0,0),
			Size = UDim2.new(1,-textIndent,0,30),
			BackgroundTransparency = 1,
			Text = title,
			Font = Enum.Font.SourceSansBold,
			FontSize = Enum.FontSize.Size18,
			TextColor3 = Color3.new(1,1,1),
			TextXAlignment = Enum.TextXAlignment.Left,
			Name = "PCGroupTitle" .. tostring(title),
			ZIndex = 2,
			Parent = pcGroupFrame
		  };

		  local count = 0
		  local frameHeight = 42
		  local spacing = 2
		  local offset = pcGroupTitle.Size.Y.Offset
		  for i = 1, #actionInputBindings do
			for actionName, inputName in pairs(actionInputBindings[i]) do
			  local actionInputFrame = utility:Create'Frame'
			  {
				Size = UDim2.new(1,0,0,frameHeight),
				Position = UDim2.new(0,0,0, offset + ((frameHeight + spacing) * count)),
				BackgroundTransparency = 0.65,
				BorderSizePixel = 0,
				ZIndex = 2,
				Name = "ActionInputBinding" .. tostring(actionName),
				Parent = pcGroupFrame
			  };

			  local nameLabel = utility:Create'TextLabel'
			  {
				Size = UDim2.new(0.4,-textIndent,0,frameHeight),
				Position = UDim2.new(0,textIndent,0,0),
				BackgroundTransparency = 1,
				Text = actionName,
				Font = Enum.Font.SourceSansBold,
				FontSize = Enum.FontSize.Size18,
				TextColor3 = Color3.new(1,1,1),
				TextXAlignment = Enum.TextXAlignment.Left,
				Name = actionName .. "Label",
				ZIndex = 2,
				Parent = actionInputFrame,
				TextWrapped = true,
				TextScaled = true
			  };
			  do
				local textSizeConstraint = Instance.new("UITextSizeConstraint",nameLabel)
				textSizeConstraint.MaxTextSize = 18
			  end
			  

			  local inputLabel = utility:Create'TextLabel'
			  {
				Size = UDim2.new(0.5,0,0,frameHeight),
				Position = UDim2.new(0.5,-4,0,0),
				BackgroundTransparency = 1,
				Text = inputName,
				Font = Enum.Font.SourceSans,
				FontSize = Enum.FontSize.Size18,
				TextColor3 = Color3.new(1,1,1),
				TextXAlignment = Enum.TextXAlignment.Left,
				Name = inputName .. "Label",
				ZIndex = 2,
				Parent = actionInputFrame,
				TextWrapped = true,
				TextScaled = true
			  };
			  do
				local textSizeConstraint = Instance.new("UITextSizeConstraint",inputLabel)
				textSizeConstraint.MaxTextSize = 18
			  end

			  count = count + 1
			end
		  end

		  pcGroupFrame.Size = UDim2.new(pcGroupFrame.Size.X.Scale,pcGroupFrame.Size.X.Offset,
			0, offset + ((frameHeight + spacing) * count))

		  return pcGroupFrame
		end

		local rowOffset = 50
		local isOSX = UserInputService:GetPlatform() == Enum.Platform.OSX

		local charMoveFrame = createPCGroup( "Character Movement", {[1] = {["Move Forward"] = "W/Up Arrow"}, 
			[2] = {["Move Backward"] = "S/Down Arrow"},
			[3] = {["Move Left"] = "A/Left Arrow"},
			[4] = {["Move Right"] = "D/Right Arrow"},
			[5] = {["Jump"] = "Space"}} )
		charMoveFrame.Parent = parentFrame

		local accessoriesFrame = createPCGroup("Accessories", {	
			[1] = {["Equip Tools"] = "1,2,3..."}, 
			[2] = {["Unequip Tools"] = "1,2,3..."},
			[3] = {["Drop Tool"] = "Backspace"},
			[4] = {["Use Tool"] = "Left Mouse Button"} })
		accessoriesFrame.Position = UDim2.new(1/3,PC_TABLE_SPACING,0,0)
		accessoriesFrame.Parent = parentFrame

		local miscFrame = nil
		miscFrame = createPCGroup("Misc", {	
			[1] = {["Screenshot"] = "Print Screen"}, 
			[2] = {["Record Video"] = isOSX and "F12/fn + F12" or "F12"},
			[3] = {["Dev Console"] = isOSX and "F9/fn + F9" or "F9"},
			[4] = {["Mouselock"] = "Shift"},
			[5] = {["Graphics Level"] = isOSX and "F10/fn + F10" or "F10"},
			[6] = {["Fullscreen"] = isOSX and "F11/fn + F11" or "F11"},
			[7] = {["Perf. Stats"] = isOSX and "Fn+Opt+Cmd+F7" or "Ctrl + Shift + F7"}, 
		  }
		)

		miscFrame.Position = UDim2.new(2/3,PC_TABLE_SPACING * 2,0,0)
		miscFrame.Parent = parentFrame

		local camFrame = createPCGroup("Camera Movement", {	[1] = {["Rotate"] = "Right Mouse Button"}, 
			[2] = {["Zoom In/Out"] = "Mouse Wheel"},
			[3] = {["Zoom In"] = "I"},
			[4] = {["Zoom Out"] = "O"} })
		camFrame.Position = UDim2.new(0,0,charMoveFrame.Size.Y.Scale,charMoveFrame.Size.Y.Offset + rowOffset)
		camFrame.Parent = parentFrame

		local menuFrame = createPCGroup("Menu Items", {		[1] = {["Roblox Menu"] = "ESC"}, 
			[2] = {["Backpack"] = "~"},
			[3] = {["Playerlist"] = "TAB"},
			[4] = {["Chat"] = "/"} })
		menuFrame.Position = UDim2.new(1/3,PC_TABLE_SPACING,charMoveFrame.Size.Y.Scale,charMoveFrame.Size.Y.Offset + rowOffset)
		menuFrame.Parent = parentFrame

		parentFrame.Size = UDim2.new(parentFrame.Size.X.Scale, parentFrame.Size.X.Offset, 0, 
		  menuFrame.Size.Y.Offset + menuFrame.Position.Y.Offset)
	end

	local function createGamepadHelp(parentFrame)
		local gamepadImage = nil
		local imageSize = nil

		gamepadImage = "rbxasset://textures/ui/Settings/Help/GenericController.png"
		imageSize = UDim2.new(0, 473, 0, 287)

		local imagePosition = UDim2.new(0.5, -imageSize.X.Offset/2, 0.5, -imageSize.Y.Offset/2)

		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne or UserInputService:GetPlatform() == Enum.Platform.XBox360 then
			gamepadImage = "rbxasset://textures/ui/Settings/Help/XboxController.png"
			imageSize = UDim2.new(0, 745, 0, 452)
			imagePosition = UDim2.new(0.5, (-imageSize.X.Offset/2) + XBOX_CONTROLLER_IMAGE_OFFSET, 0.5, -imageSize.Y.Offset/2 + 7)
		elseif UserInputService:GetPlatform() == Enum.Platform.PS4 or UserInputService:GetPlatform() == Enum.Platform.PS3 then
			gamepadImage = "rbxasset://textures/ui/Settings/Help/PSController.png"
		end

		local gamepadImageLabel = utility:Create'ImageLabel'
		{
		  Name = "GamepadImage",
		  Size = imageSize,
		  Position = imagePosition,
		  Image = gamepadImage,
		  BackgroundTransparency = 1,
		  ZIndex = 2,
		  Parent = parentFrame
		};
		parentFrame.Size = UDim2.new(parentFrame.Size.X.Scale, parentFrame.Size.X.Offset, 0, gamepadImageLabel.Size.Y.Offset + 100)

		local gamepadFontSize = isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size24
		local textVerticalSize = (gamepadFontSize == Enum.FontSize.Size36) and 36 or 24
		local function createGamepadLabel(text, position, size, rightAligned)
			local nameLabel = nil
			if FFlagUseNotificationsLocalization == true then
				nameLabel = utility:Create'TextLabel'{
				  Position = position,
				  Size = size,
				  BackgroundTransparency = 1,
				  Text = text,
				  TextXAlignment = rightAligned and Enum.TextXAlignment.Right or Enum.TextXAlignment.Left,
				  AnchorPoint = rightAligned and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				  Font = Enum.Font.SourceSansBold,
				  FontSize = gamepadFontSize,
				  TextColor3 = Color3.new(1,1,1),
				  Name = text .. "Label",
				  ZIndex = 2,
				  Parent = gamepadImageLabel,
				  TextScaled = true,
				  TextWrapped = true
				};
			else
				nameLabel = utility:Create'TextLabel'{
				  Position = position,
				  Size = size,
				  BackgroundTransparency = 1,
				  Text = text,
				  TextXAlignment = rightAligned and Enum.TextXAlignment.Right or Enum.TextXAlignment.Left,
				  AnchorPoint = rightAligned and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				  Font = Enum.Font.SourceSansBold,
				  FontSize = gamepadFontSize,
				  TextColor3 = Color3.new(1,1,1),
				  Name = text .. "Label",
				  ZIndex = 2,
				  Parent = gamepadImageLabel
				};
			end

			nameLabel.TextWrapped = true

			local textSize = TextService:GetTextSize(text, textVerticalSize, Enum.Font.SourceSansBold, Vector2.new(0, 0))
			local minSizeXOffset = textSize.X
			local distanceToCenter = math.abs(position.X.Offset)
			local parentGui = (gamepadImage == "rbxasset://textures/ui/Settings/Help/XboxController.png") and RobloxGui or parentFrame

			local function updateNameLabelSize()
				local nameLabelSizeXOffset = nameLabel.Size.X.Offset
				if gamepadImage == "rbxasset://textures/ui/Settings/Help/XboxController.png" then
					nameLabelSizeXOffset = rightAligned and
						RobloxGui.AbsoluteSize.X/2 + XBOX_CONTROLLER_IMAGE_OFFSET - distanceToCenter - TEXT_EDGE_DISTANCE or
						RobloxGui.AbsoluteSize.X/2 - XBOX_CONTROLLER_IMAGE_OFFSET - distanceToCenter - TEXT_EDGE_DISTANCE
				else
					nameLabelSizeXOffset = parentFrame.AbsoluteSize.X/2 - distanceToCenter
				end

				if nameLabelSizeXOffset < minSizeXOffset then
					nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabelSizeXOffset, nameLabel.Size.Y.Scale, textVerticalSize * 2)
					nameLabel.TextScaled = true
				else
					nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabelSizeXOffset, nameLabel.Size.Y.Scale, textVerticalSize)
					nameLabel.FontSize = gamepadFontSize
					nameLabel.TextScaled = false
				end
			end

			local nameLabelChangeCn = parentGui:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
				updateNameLabelSize()
			end)

			updateNameLabelSize()
		end

		if gamepadImage == "rbxasset://textures/ui/Settings/Help/XboxController.png" then
			createGamepadLabel("Switch Tool", UDim2.new(0.5, -390, 0, 0), UDim2.new(0, 100, 0, textVerticalSize), true)
			createGamepadLabel("Game Menu Toggle", UDim2.new(0.5, -390, 0.15, 0), UDim2.new(0, 164, 0, textVerticalSize), true)
			createGamepadLabel("Move", UDim2.new(0.5, -390, 0.31, 0), UDim2.new(0, 46, 0, textVerticalSize), true)
			createGamepadLabel("Menu Navigation", UDim2.new(0.5, -390, 0.46, 0), UDim2.new(0, 164, 0, textVerticalSize), true)

			createGamepadLabel("Use Tool", UDim2.new(0.5, 330, 0, 0), UDim2.new(0, 73, 0, textVerticalSize))
			createGamepadLabel("Roblox Menu", UDim2.new(0.5, 330, 0.15, 0), UDim2.new(0, 122, 0, textVerticalSize))
			createGamepadLabel("Back", UDim2.new(0.5, 330, 0.31, 0), UDim2.new(0, 43, 0, textVerticalSize))
			createGamepadLabel("Jump", UDim2.new(0.5, 330, 0.46, 0), UDim2.new(0, 49, 0, textVerticalSize))
			createGamepadLabel("Rotate Camera", UDim2.new(0.5, 380, 0.62, 0), UDim2.new(0, 132, 0, textVerticalSize))
			createGamepadLabel("Camera Zoom", UDim2.new(0.5, 380, 0.77, 0), UDim2.new(0, 122, 0, textVerticalSize))
		else
			createGamepadLabel("Switch Tool", UDim2.new(0.5, -250, 0, 0), UDim2.new(0, 100, 0, textVerticalSize), true)
			createGamepadLabel("Game Menu Toggle", UDim2.new(0.5, -250, 0.15, 0), UDim2.new(0, 164, 0, textVerticalSize), true)
			createGamepadLabel("Move", UDim2.new(0.5, -250, 0.31, 0), UDim2.new(0, 46, 0, textVerticalSize), true)
			createGamepadLabel("Menu Navigation", UDim2.new(0.5, -250, 0.46, 0), UDim2.new(0, 143, 0, textVerticalSize), true)

			createGamepadLabel("Use Tool", UDim2.new(0.5, 215, 0, 0), UDim2.new(0, 73, 0, textVerticalSize))
			createGamepadLabel("Roblox Menu", UDim2.new(0.5, 215, 0.15, 0), UDim2.new(0, 122, 0, textVerticalSize))
			createGamepadLabel("Back", UDim2.new(0.5, 215, 0.31, 0), UDim2.new(0, 43, 0, textVerticalSize))
			createGamepadLabel("Jump", UDim2.new(0.5, 215, 0.46, 0), UDim2.new(0, 49, 0, textVerticalSize))
			createGamepadLabel("Rotate Camera", UDim2.new(0.5, 255, 0.62, 0), UDim2.new(0, 132, 0, textVerticalSize))
			createGamepadLabel("Camera Zoom", UDim2.new(0.5, 255, 0.77, 0), UDim2.new(0, 122, 0, textVerticalSize))
		end
		-- NOTE: On consoles we put the dev console in the settings menu. Only place
		-- owners can see this for now.
	end

	local function updateTouchLayout(scheme) -- adjust layout to work well with the various touch control schemes
		this.ActiveHelpScheme = scheme
		local isPortrait = utility:IsPortrait()
		local helpFrame = this.HelpPages[TOUCH_TAG]

		if helpFrame then
			local helpElements = this.HelpPageContents[TOUCH_TAG]
			
			local function hideUneeded(list)
				if list then
					for name, item in pairs(helpElements) do
						item.Visible = not list[name]
					end
				end
			end
			
			local hidden
			if scheme == Enum.TouchMovementMode.DynamicThumbstick then
				-- show that movement is done by dragging
				-- show that tapping on bottom of the screen is to jump
				-- show that tapping on the top of the screen is to use tools
				-- show that dragging on the top of the screen is to pan camera
				hidden = {MoveImageCTM = true}
				helpElements["MoveLabel"].Position = isPortrait and UDim2.new(0.25,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.75,-50) or UDim2.new(0.15,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.85,-helpElements["MoveLabel"].AbsoluteSize.y)
				helpElements["JumpLabel"].Position = isPortrait and UDim2.new(0.75,-helpElements["JumpLabel"].AbsoluteSize.x/2,0.75,-50) or UDim2.new(0.85,-60,0.85,-helpElements["JumpLabel"].AbsoluteSize.y)
				helpElements["RotateLabel"].Position = isPortrait and UDim2.new(1,-helpElements["RotateLabel"].AbsoluteSize.x-20,0.02,0) or UDim2.new(0.85,-helpElements["RotateLabel"].AbsoluteSize.x/2,0.02,0)
				helpElements["UseToolLabel"].Position = isPortrait and UDim2.new(0.5,-helpElements["UseToolLabel"].AbsoluteSize.x/2,0.5,-100) or UDim2.new(0.5,-helpElements["UseToolLabel"].AbsoluteSize.x/2,0.5,-60)
				
				helpElements["EquipLabel"].Position = isPortrait and UDim2.new(0.5,-60,0.75,50) or UDim2.new(0.5,-60,0.64,0)
				helpElements["ZoomLabel"].Position = isPortrait and UDim2.new(0,20,0.02,0) or UDim2.new(0.15,-60,0.02,0)
				
			elseif scheme == Enum.TouchMovementMode.ClickToMove then
				-- show that dragging on the screen is to pan the camera
				-- show that tapping is to move
				hidden = {BottomHalfDisplay = true, MoveImageDTS = true, JumpLabel = true} -- cant manually jump on ctm
				helpElements["MoveLabel"].Position = isPortrait and UDim2.new(0.25,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.5,0) or UDim2.new(0.25,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.5,40)
				helpElements["RotateLabel"].Position = isPortrait and UDim2.new(1,-helpElements["RotateLabel"].AbsoluteSize.x-20,0.02,0) or UDim2.new(0.5,-60,0.02,0)
				helpElements["UseToolLabel"].Position = isPortrait and UDim2.new(0.75,-helpElements["UseToolLabel"].AbsoluteSize.x/2,0.5,0) or UDim2.new(0.85,-60,0.02,0)
				
				helpElements["EquipLabel"].Position = isPortrait and UDim2.new(0.5,-60,0.75,50) or UDim2.new(0.5,-60,0.64,0)
				helpElements["ZoomLabel"].Position = isPortrait and UDim2.new(0,20,0.02,0) or UDim2.new(0.15,-60,0.02,0)
			else
				-- keep the default style, but take portrait mode into account
				hidden = {BottomHalfDisplay = true, MoveImageDTS = true, MoveImageCTM = true, JumpImage = true} -- if theres a jump button we don't need to do touch gestures, same with thumbstick
				helpElements["MoveLabel"].Position = isPortrait and UDim2.new(0.06,0,1,-120) or UDim2.new(0.06,0,0.58,0)
				helpElements["JumpLabel"].Position = isPortrait and UDim2.new(0.94,-helpElements["JumpLabel"].AbsoluteSize.x,1,-120) or UDim2.new(0.8,0,0.58,0)
				helpElements["RotateLabel"].Position = isPortrait and UDim2.new(1,-helpElements["RotateLabel"].AbsoluteSize.x-20,0.02,0) or UDim2.new(0.5,-60,0.02,0)
				helpElements["UseToolLabel"].Position = isPortrait and UDim2.new(.5,-helpElements["UseToolLabel"].AbsoluteSize.x/2,0.25,50) or UDim2.new(0.85,-60,0.02,0)
				
				helpElements["EquipLabel"].Position = isPortrait and UDim2.new(0.5,-60,0.75,50) or UDim2.new(0.5,-60,0.64,0)
				helpElements["ZoomLabel"].Position = isPortrait and UDim2.new(0,20,0.02,0) or UDim2.new(0.15,-60,0.02,0)
			end
			hideUneeded(hidden)
		end
	end

	local function createTouchHelp(parentFrame)
		local createdElements = {} -- dictionary of buttons created
		local smallScreen = utility:IsSmallTouchScreen()
		local ySize = GuiService:GetScreenResolution().y - 350
		if smallScreen then
		  ySize = GuiService:GetScreenResolution().y - 100
		end
		parentFrame.Size = UDim2.new(1,0,0,ySize)

		local function createDisplayFrame(name, position, size, transparency, color, parent)
			local frame = utility:Create'Frame'
			{
			  BackgroundColor3 = color,
			  Position = position,
			  Size = size,
			  BackgroundTransparency = transparency,
			  Name = name,
			  ZIndex = 1,
			  Parent = parent
			};
			return frame
		end

		local function createTouchLabel(text, position, size, parent)
			local nameLabel = utility:Create'TextLabel'
			{
				Position = position,
				Size = size,
				BackgroundTransparency = 1,
				Text = text,
				Font = Enum.Font.SourceSansBold,
				FontSize = Enum.FontSize.Size14,
				TextColor3 = Color3.new(1,1,1),
				Name = text .. "Label",
				ZIndex = 3,
				Parent = parent,
				TextScaled = true,
				TextWrapped = true
			};
			
			if not smallScreen then
				nameLabel.FontSize = Enum.FontSize.Size18
				nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabel.Size.X.Offset, nameLabel.Size.Y.Scale, nameLabel.Size.Y.Offset + 4)
			end
			
			local nameBackgroundImage = utility:Create'ImageLabel'
			{
				Name = text .. "BackgroundImage",
				Size = UDim2.new(1.25,0,1.25,0),
				Position = UDim2.new(-0.125,0,-0.065,0),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/ui/Settings/Radial/RadialLabel.png",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(12,2,65,21),
				ZIndex = 2,
				Parent = nameLabel
			};

			local textSizeConstraint = Instance.new("UITextSizeConstraint",nameLabel)
			textSizeConstraint.MaxTextSize = 18

			return nameLabel
		end

		local function createTouchGestureImage(name, image, position, size, parent)
			local gestureImage = utility:Create'ImageLabel'
			{
			Name = name,
			Size = size,
			Position = position,
			BackgroundTransparency = 1,
			Image = image,
			ZIndex = 2,
			Parent = parent
			};

			return gestureImage
		end

		local xSizeOffset = 30
		local ySize = 25
		if smallScreen then xSizeOffset = 0 end

		createdElements["BottomHalfDisplay"] = createDisplayFrame("BottomHalfFrame", UDim2.new(0,0,0.5,-16), UDim2.new(1,0,1,0), 0.35, Color3.new(0,0,0), parentFrame)

		-- movement stuff
		createdElements["MoveLabel"] = createTouchLabel("Move", UDim2.new(0.06,0,0.58,0), UDim2.new(0,77 + xSizeOffset,0,ySize), parentFrame)
		createdElements["MoveImageDTS"] = createTouchGestureImage("MoveImageDTS", "rbxasset://textures/ui/Settings/Help/RotateCameraGesture.png", UDim2.new(0.5,-32,1,3), UDim2.new(0,65,0,48), createdElements["MoveLabel"])
		createdElements["MoveImageCTM"] = createTouchGestureImage("MoveImageCTM", "rbxasset://textures/ui/Settings/Help/UseToolGesture.png", UDim2.new(0.5,-19,1,3), UDim2.new(0,38,0,52), createdElements["MoveLabel"])

		-- jumping stuff
		createdElements["JumpLabel"] = createTouchLabel("Jump", UDim2.new(0.8,0,0.58,0), UDim2.new(0,77 + xSizeOffset,0,ySize), parentFrame)
		createdElements["JumpImage"] = createTouchGestureImage("JumpImage", "rbxasset://textures/ui/Settings/Help/UseToolGesture.png", UDim2.new(0.5,-19,1,3), UDim2.new(0,38,0,52), createdElements["JumpLabel"])

		createdElements["EquipLabel"] = createTouchLabel("Equip/Unequip Tools", UDim2.new(0.5,-60,0.64,0), UDim2.new(0,120 + xSizeOffset,0,ySize), parentFrame)

		createdElements["ZoomLabel"] = createTouchLabel("Zoom In/Out", UDim2.new(0.15,-60,0.02,0), UDim2.new(0,120,0,ySize), parentFrame)
		createdElements["ZoomImage"] = createTouchGestureImage("ZoomImage", "rbxasset://textures/ui/Settings/Help/ZoomGesture.png", UDim2.new(0.5,-26,1,3), UDim2.new(0,53,0,59), createdElements["ZoomLabel"])
		createdElements["RotateLabel"] = createTouchLabel("Rotate Camera", UDim2.new(0.5,-60,0.02,0), UDim2.new(0,120,0,ySize), parentFrame)
		createdElements["RotateImage"] = createTouchGestureImage("RotateImage", "rbxasset://textures/ui/Settings/Help/RotateCameraGesture.png", UDim2.new(0.5,-32,1,3), UDim2.new(0,65,0,48), createdElements["RotateLabel"])
		createdElements["UseToolLabel"] = createTouchLabel("Use Tool", UDim2.new(0.85,-60,0.02,0), UDim2.new(0,120,0,ySize), parentFrame)
		createdElements["ToolImage"] = createTouchGestureImage("ToolImage", "rbxasset://textures/ui/Settings/Help/UseToolGesture.png", UDim2.new(0.5,-19,1,3), UDim2.new(0,38,0,52), createdElements["UseToolLabel"])

		return createdElements
	end

	local function createHelpDisplay(typeOfHelp)
		local helpContents = nil
		local helpFrame = utility:Create'Frame'
		{
		  Size = UDim2.new(1,0,1,0),
		  BackgroundTransparency = 1,
		  Name = "HelpFrame" .. tostring(typeOfHelp)
		};


		if typeOfHelp == KEYBOARD_MOUSE_TAG then
		  createPCHelp(helpFrame)
		elseif typeOfHelp == GAMEPAD_TAG then
		  createGamepadHelp(helpFrame)
		elseif typeOfHelp == TOUCH_TAG then
		  helpContents = createTouchHelp(helpFrame)
		end

		return helpFrame, helpContents
	end

	local function displayHelp(currentPage)
		for i, helpPage in pairs(this.HelpPages) do
		  if helpPage == currentPage then
			helpPage.Parent = this.Page
			this.Page.Size = helpPage.Size
			if isTenFootInterface then
				this.Page.Size = UDim2.new(helpPage.Size.X.Scale, helpPage.Size.X.Offset, helpPage.Size.Y.Scale, 0)
			end
		  else
			helpPage.Parent = nil
		  end
		end
		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
		  this.HubRef.PageViewClipper.ClipsDescendants = false
		  this.HubRef.PageView.ClipsDescendants = false
		end
	end

	local function switchToHelp(typeOfHelp)
		local helpPage = this.HelpPages[typeOfHelp]
		if helpPage then
		  displayHelp(helpPage)
			if typeOfHelp == TOUCH_TAG then
				-- update for the control scheme
				local scheme = GameSettings.TouchMovementMode
				if this.ActiveHelpScheme ~= scheme then
					updateTouchLayout(scheme)
				end
			end
		else
		  this.HelpPages[typeOfHelp], this.HelpPageContents[typeOfHelp] = createHelpDisplay(typeOfHelp)
		  switchToHelp(typeOfHelp)
		end
	end

	local function showTypeOfHelp()
		switchToHelp(this:GetCurrentInputType())
	end

	local function adjustForScreenLayout(givenSize) -- portrait mode was causing the help frame to be either too tall or short when changed between landscape mode and portrait.
		if this:GetCurrentInputType() == TOUCH_TAG then
			local scheme = GameSettings.TouchMovementMode
			local smallScreen = utility:IsSmallTouchScreen()
			local size = givenSize or GuiService:GetScreenResolution()
			local ySize = size.y - 350
			if smallScreen then
			  ySize = size.y - 100
			end
			this.HelpPages[TOUCH_TAG].Size = UDim2.new(1,0,0,ySize)
			updateTouchLayout(scheme)
		end
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "HelpTab"

	this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/HelpTab.png"
  
  if FFlagUseNotificationsLocalization then
    this.TabHeader.Title.Text = "Help"
  else
    this.TabHeader.Icon.Title.Text = "Help"
  end
	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "Help"

	UserInputService.InputBegan:connect(function(inputObject)
		local inputType = inputObject.UserInputType
		if inputType ~= Enum.UserInputType.Focus and inputType ~= Enum.UserInputType.None then
			lastInputType = inputObject.UserInputType
			showTypeOfHelp()
		end
	end)

	utility:OnResized(this, function(newSize, isPortrait)
		if this.HelpPages[TOUCH_TAG] then
			adjustForScreenLayout(newSize)
		end
	end)

	return this
end


----------- Public Facing API Additions --------------
do
  PageInstance = Initialize()

  PageInstance.Displayed.Event:connect(function()
      local isPortrait = utility:IsPortrait()
      if PageInstance:GetCurrentInputType() == TOUCH_TAG then
        if PageInstance.HubRef.BottomButtonFrame and not utility:IsSmallTouchScreen() and not isPortrait then
          PageInstance.HubRef.BottomButtonFrame.Visible = false
        end
      end
	  if PageInstance.HubRef.VersionContainer then
	    PageInstance.HubRef.VersionContainer.Visible = true
	  end
    end)

  PageInstance.Hidden.Event:connect(function()
      PageInstance.HubRef.PageViewClipper.ClipsDescendants = true
      PageInstance.HubRef.PageView.ClipsDescendants = true

      PageInstance.HubRef:ShowShield()

      local isPortrait = utility:IsPortrait()
      if PageInstance:GetCurrentInputType() == TOUCH_TAG then
        if PageInstance.HubRef.BottomButtonFrame and not utility:IsSmallTouchScreen() and not isPortrait then
          PageInstance.HubRef.BottomButtonFrame.Visible = true
        end
      end
	  if PageInstance.HubRef.VersionContainer then
		PageInstance.HubRef.VersionContainer.Visible = false
	  end
    end)
end


return PageInstance