--!nonstrict

--[[
		Filename: Help.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the help page in Settings Menu
--]]

-------------- CONSTANTS --------------
local KEYBOARD_MOUSE_TAG = "KeyboardMouse"
local TOUCH_TAG = "Touch"
local GAMEPAD_TAG = "Gamepad"
local PC_TABLE_SPACING = 4
local CONTROLLER_IMAGE_OFFSET_X = 30
local CONTROLLER_IMAGE_OFFSET_Y = 7
local CONTROLLER_MIN_WIDTH = 270
local CONTROLLER_WIDTH_HEIGHT_RATIO = 0.64
local CONTROLLER_ABSOLUTE_SIZE_WIDTH_RATIO = 0.58
local TEXT_EDGE_DISTANCE = 20

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

------------ Variables -------------------
local PageInstance = nil
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

------------ FFLAGS -------------------
local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result
local GetFFlagOptimizeHelpMenuInputEvent = require(RobloxGui.Modules.Flags.GetFFlagOptimizeHelpMenuInputEvent)
local FFlagFixGamepadHelpImage = game:DefineFastFlag("FixGamepadHelpImage", false)
local GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu = require(RobloxGui.Modules.Settings.Flags.GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu)
local FFlagShowUpdatedScreenshotHotkey = game:DefineFastFlag("ShowUpdatedScreenshotHotkey_v2", false)
local GetFFlagFixIGMBottomBarVisibility = require(RobloxGui.Modules.Settings.Flags.GetFFlagFixIGMBottomBarVisibility)

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

		  local pcGroupFrame = Create'Frame'
		  {
			Size = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then UDim2.new(1/3,-PC_TABLE_SPACING,0,0) else UDim2.new(1/3,-PC_TABLE_SPACING,1,0),
			AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
			BackgroundTransparency = 1,
			Name = "PCGroupFrame" .. tostring(title)
		  };
		  if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 
			local _pcGroupLayout = Create'UIListLayout'
			{
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 2),
				Parent = pcGroupFrame,
				SortOrder = Enum.SortOrder.LayoutOrder
			};
		  end
		  local pcGroupTitle = Create'TextLabel'
		  {
			Position = UDim2.new(0,textIndent,0,0),
			Size = UDim2.new(1,-textIndent,0,30),
			AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
			BackgroundTransparency = 1,
			Text = title,
			Font = Theme.font(Enum.Font.SourceSansBold, "HelpTitle"),
			FontSize = Theme.fontSize(Enum.FontSize.Size18, "HelpTitle"),
			TextColor3 = Color3.new(1,1,1),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then true else nil, 
			Name = "PCGroupTitle" .. tostring(title),
			ZIndex = 2,
			LayoutOrder = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then 1 else nil,
			Parent = pcGroupFrame
		  };
		  if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			local _pcGroupTitlePadding = Create'UIPadding'
			{
				PaddingLeft = UDim.new(0, textIndent),
				Parent = pcGroupTitle,
			};
		  end

		  local count = 0
		  local frameHeight = 42
		  local spacing = 2
		  local offset = pcGroupTitle.Size.Y.Offset
		  for i = 1, #actionInputBindings do
			for actionName, inputName in pairs(actionInputBindings[i]) do
			  local actionInputFrame = Create'Frame'
			  {
				Size = UDim2.new(1,0,0,frameHeight),
				Position = UDim2.new(0,0,0, offset + ((frameHeight + spacing) * count)),
				BackgroundTransparency = Theme.transparency("InputActionBackground",0.65),
				AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
				LayoutOrder = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then i+1 else nil,
				BorderSizePixel = 0,
				ZIndex = 2,
				Name = "ActionInputBinding" .. tostring(actionName),
				Parent = pcGroupFrame
			  };

			  if Theme.UIBloxThemeEnabled then
				actionInputFrame.BackgroundColor3 = Theme.color("InputActionBackground")
				Create'UICorner'
				{
					CornerRadius = UDim.new(0, 3),
					Parent = actionInputFrame,
				}
			  end

			  local nameLabel = Create'TextLabel'
			  {
				Size = UDim2.new(0.4,-textIndent,0,frameHeight),
				AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
				Position = UDim2.new(0,textIndent,0,0),
				BackgroundTransparency = 1,
				Text = actionName,
				Font = Theme.font(Enum.Font.SourceSansBold, "HelpTitle"),
				FontSize = Theme.fontSize(Enum.FontSize.Size18, "HelpTitle"),
				TextColor3 = Color3.new(1,1,1),
				TextXAlignment = Enum.TextXAlignment.Left,
				Name = actionName .. "Label",
				ZIndex = 2,
				Parent = actionInputFrame,
				TextWrapped = true,
				TextScaled = if not GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then true else nil,
			  };
			do
				local textSizeConstraint = Instance.new("UITextSizeConstraint",nameLabel)
				if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
					textSizeConstraint.MaxTextSize = Theme.textSize(28)
				else 
					textSizeConstraint.MaxTextSize = Theme.textSize(18, "HelpText")
				end
			end
	


			  local inputLabel = Create'TextLabel'
			  {
				Size = UDim2.new(0.5,0,0,frameHeight),
				Position = UDim2.new(0.5,-4,0,0),
				BackgroundTransparency = 1,
				Text = inputName,
				Font = Theme.font(Enum.Font.SourceSans, "HelpText"),
				FontSize = Theme.fontSize(Enum.FontSize.Size18, "HelpText"),
				TextColor3 = Color3.new(1,1,1),
				TextXAlignment = Enum.TextXAlignment.Left,
				Name = inputName .. "Label",
				ZIndex = 2,
				Parent = actionInputFrame,
				TextWrapped = true,
				TextScaled = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then false else true,
				AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
			  };
			if not GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
				do
					local textSizeConstraint = Instance.new("UITextSizeConstraint",inputLabel)
					textSizeConstraint.MaxTextSize = Theme.textSize(18, "HelpText")
				end
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

		local charMoveFrame = createPCGroup( "Character Movement", {
			[1] = {["Move Forward"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.W) .. "/"
							..RobloxTranslator:FormatByKey("InGame.HelpMenu.UpArrow")},
			[2] = {["Move Backward"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.S) .. "/"
							..RobloxTranslator:FormatByKey("InGame.HelpMenu.DownArrow")},
			[3] = {["Move Left"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.A) .. "/"
							..RobloxTranslator:FormatByKey("InGame.HelpMenu.LeftArrow")},
			[4] = {["Move Right"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.D) .. "/"
							..RobloxTranslator:FormatByKey("InGame.HelpMenu.RightArrow")},
			[5] = {["Jump"] = "Space"}} )
		charMoveFrame.Parent = parentFrame
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			charMoveFrame.LayoutOrder = 1
		end

		local oneChar = UserInputService:GetStringForKeyCode(Enum.KeyCode.One)
		local twoChar = UserInputService:GetStringForKeyCode(Enum.KeyCode.Two)
		local threeChar = UserInputService:GetStringForKeyCode(Enum.KeyCode.Three)
		local toolKeys = oneChar .. "," .. twoChar .. "," .. threeChar .. "..."
		local accessoriesFrame = createPCGroup("Accessories", {
			[1] = {["Equip Tools"] = toolKeys},
			[2] = {["Unequip Tools"] = toolKeys},
			[3] = {["Drop Tool"] = "Backspace"},
			[4] = {["Use Tool"] = "Left Mouse Button"} })
		accessoriesFrame.Position = UDim2.new(1/3,PC_TABLE_SPACING,0,0)
		accessoriesFrame.Parent = parentFrame
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			accessoriesFrame.LayoutOrder = 2
		end

		local miscActions = {}

		table.insert(miscActions, {["UI Selection Toggle"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.BackSlash) })

		local canShowRecordAndStats = not PolicyService:IsSubjectToChinaPolicies()

		if canShowRecordAndStats then
			if FFlagShowUpdatedScreenshotHotkey then
				table.insert(miscActions, {["Screenshot"] = isOSX and "Opt + 1" or "Alt + 1"})
			else
				table.insert(miscActions, {["Screenshot"] = isOSX and "Cmd + Shift + 3" or "Print Screen"})
			end


			if not isOSX then
				table.insert(miscActions, {["Record Video"] = "F12"})
			end
		end

		if canShowRecordAndStats then
			table.insert(miscActions, {["Dev Console"] = isOSX and "F9/fn + F9" or "F9"})
		end
		table.insert(miscActions, {["Mouselock"] = "Shift"})
		if canShowRecordAndStats then
			table.insert(miscActions, {["Graphics Level"] = isOSX and "F10/fn + F10" or "F10"})
			table.insert(miscActions, {["Fullscreen"] = isOSX and "Ctrl + Cmd + F" or "F11"})
		end

		if canShowRecordAndStats then
			table.insert(miscActions, {["Perf. Stats"] = isOSX and "Fn+Opt+Cmd+F7" or "Ctrl + Shift + F7"})
		end
		local miscFrame = createPCGroup("Misc", miscActions)

		miscFrame.Position = UDim2.new(2/3,PC_TABLE_SPACING * 2,0,0)
		miscFrame.Parent = parentFrame
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			miscFrame.LayoutOrder = 3
		end

		local camFrame = createPCGroup("Camera Movement", {
			[1] = {["Rotate"] = "Right Mouse Button"},
			[2] = {["Zoom In/Out"] = "Mouse Wheel"},
			[3] = {["Zoom In"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.I)},
			[4] = {["Zoom Out"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.O)}
		})
		camFrame.Position = UDim2.new(0,0,charMoveFrame.Size.Y.Scale,charMoveFrame.Size.Y.Offset + rowOffset)
		camFrame.Parent = parentFrame
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			camFrame.LayoutOrder = 4
		end

		local menuFrame = createPCGroup("Menu Items", {
			[1] = {["Roblox Menu"] = "Esc"},
			[2] = {["Backpack"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.Backquote)},
			[3] = {["Playerlist"] = "Tab"},
			[4] = {["Chat"] = UserInputService:GetStringForKeyCode(Enum.KeyCode.Slash)} })
		menuFrame.Position = UDim2.new(1/3,PC_TABLE_SPACING,charMoveFrame.Size.Y.Scale,charMoveFrame.Size.Y.Offset + rowOffset)
		menuFrame.Parent = parentFrame
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then
			menuFrame.LayoutOrder = 5
		end

		parentFrame.Size = UDim2.new(parentFrame.Size.X.Scale, parentFrame.Size.X.Offset, 0,
		  menuFrame.Size.Y.Offset + menuFrame.Position.Y.Offset)
	end

	local function createGamepadHelp(parentFrame)
		local gamepadImage = "rbxasset://textures/ui/Settings/Help/PlatformController.png"
		local controllerWidth = math.max(this.Page.AbsoluteSize.X * CONTROLLER_ABSOLUTE_SIZE_WIDTH_RATIO, CONTROLLER_MIN_WIDTH)
		local imageSize = if FFlagFixGamepadHelpImage then UDim2.new(0, controllerWidth, 0, controllerWidth * CONTROLLER_WIDTH_HEIGHT_RATIO) else UDim2.new(0, 700, 0, 448)
		local imagePosition = UDim2.new(0.5, (-imageSize.X.Offset/2) + CONTROLLER_IMAGE_OFFSET_X, 0.5, -imageSize.Y.Offset/2 + CONTROLLER_IMAGE_OFFSET_Y)

		local gamepadImageLabel = Create'ImageLabel'
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

		local gamepadFontSize = isTenFootInterface and Theme.fontSize(Enum.FontSize.Size36) or Theme.fontSize(Enum.FontSize.Size24)
		local textVerticalSize = (gamepadFontSize == Theme.fontSize(Enum.FontSize.Size36)) and Theme.textSize(36) or Theme.textSize(24)
		local function createGamepadLabel(text, position, size, rightAligned)
			local nameLabel = nil
			if FFlagUseNotificationsLocalization == true then
				nameLabel = Create'TextLabel'{
				  Position = position,
				  Size = size,
				  BackgroundTransparency = 1,
				  Text = text,
				  TextXAlignment = rightAligned and Enum.TextXAlignment.Right or Enum.TextXAlignment.Left,
				  AnchorPoint = rightAligned and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				  Font = Theme.font(Enum.Font.SourceSansBold, "HelpGamepad"),
				  FontSize = gamepadFontSize,
				  TextColor3 = Color3.new(1,1,1),
				  Name = text .. "Label",
				  ZIndex = 2,
				  Parent = gamepadImageLabel,
				  TextScaled = true,
				  TextWrapped = true,
				  TextTruncate = if FFlagFixGamepadHelpImage then Enum.TextTruncate.AtEnd else nil,				
				};
			else
				nameLabel = Create'TextLabel'{
				  Position = position,
				  Size = size,
				  BackgroundTransparency = 1,
				  Text = text,
				  TextXAlignment = rightAligned and Enum.TextXAlignment.Right or Enum.TextXAlignment.Left,
				  AnchorPoint = rightAligned and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				  Font = Theme.font(Enum.Font.SourceSansBold, "HelpGamepad"),
				  FontSize = gamepadFontSize,
				  TextColor3 = Color3.new(1,1,1),
				  Name = text .. "Label",
				  ZIndex = 2,
				  Parent = gamepadImageLabel,
				  TextTruncate = if FFlagFixGamepadHelpImage then Enum.TextTruncate.AtEnd else nil,
				};
			end

			nameLabel.TextWrapped = true

			local textSize = TextService:GetTextSize(text, textVerticalSize, Theme.font(Enum.Font.SourceSansBold, "Bold"), Vector2.new(0, 0))
			local minSizeXOffset = textSize.X
			local distanceToCenter = math.abs(position.X.Offset)
			local parentGui = RobloxGui or parentFrame

			if FFlagFixGamepadHelpImage then
				parentGui = parentFrame
			end

			local function updateNameLabelSize()
				local nameLabelSizeXOffset = rightAligned and
					RobloxGui.AbsoluteSize.X/2 + CONTROLLER_IMAGE_OFFSET_X - distanceToCenter - TEXT_EDGE_DISTANCE or
					RobloxGui.AbsoluteSize.X/2 - CONTROLLER_IMAGE_OFFSET_X - distanceToCenter - TEXT_EDGE_DISTANCE

				if FFlagFixGamepadHelpImage then
					nameLabelSizeXOffset = rightAligned and
					parentGui.AbsoluteSize.X/2 + CONTROLLER_IMAGE_OFFSET_X - distanceToCenter or
					parentGui.AbsoluteSize.X/2 - CONTROLLER_IMAGE_OFFSET_X - distanceToCenter
				end

				if nameLabelSizeXOffset < minSizeXOffset then
					nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabelSizeXOffset, nameLabel.Size.Y.Scale, if FFlagFixGamepadHelpImage then textVerticalSize * 2 else textVerticalSize)
					nameLabel.TextScaled = if FFlagFixGamepadHelpImage then false else true
				else
					nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabelSizeXOffset, nameLabel.Size.Y.Scale, textVerticalSize * 2)
					nameLabel.FontSize = gamepadFontSize
					nameLabel.TextScaled = false
				end
			end

			local _nameLabelChangeCn = parentGui:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
				updateNameLabelSize()
			end)

			updateNameLabelSize()
		end

		local leftOffset = if FFlagFixGamepadHelpImage then (-gamepadImageLabel.Size.X.Offset / 2) - 20 else -390
		local rightOffset = if FFlagFixGamepadHelpImage then (gamepadImageLabel.Size.X.Offset / 2) - 20 else 330
		local rightOffsetAlt = if FFlagFixGamepadHelpImage then rightOffset + 40 else rightOffset + 50
		local cameraOffset = -10

		createGamepadLabel("Switch Tool", UDim2.new(0.5, leftOffset, 0, 15), UDim2.new(0, 100, 0, textVerticalSize), true)
		createGamepadLabel("Game Menu Toggle", UDim2.new(0.5, leftOffset, 0.15, 10), UDim2.new(0, 164, 0, textVerticalSize), true)
		createGamepadLabel("Move", UDim2.new(0.5, leftOffset, 0.31, 5), UDim2.new(0, 46, 0, textVerticalSize), true)
		createGamepadLabel("Menu Navigation", UDim2.new(0.5, leftOffset, 0.46, 0), UDim2.new(0, 164, 0, textVerticalSize), true)

		createGamepadLabel("Use Tool", UDim2.new(0.5, rightOffset, 0, 15), UDim2.new(0, 73, 0, textVerticalSize))
		createGamepadLabel("Roblox Menu", UDim2.new(0.5, rightOffset, 0.15, 10), UDim2.new(0, 122, 0, textVerticalSize))
		createGamepadLabel("Back", UDim2.new(0.5, rightOffset, 0.31, 5), UDim2.new(0, 43, 0, textVerticalSize))
		createGamepadLabel("Jump", UDim2.new(0.5, rightOffset, 0.46, 0), UDim2.new(0, 49, 0, textVerticalSize))
		createGamepadLabel("Rotate Camera", UDim2.new(0.5, rightOffsetAlt, 0.62, cameraOffset), UDim2.new(0, 132, 0, textVerticalSize))
		createGamepadLabel("Camera Zoom", UDim2.new(0.5, rightOffsetAlt, 0.77, cameraOffset), UDim2.new(0, 122, 0, textVerticalSize))
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
			if scheme == Enum.TouchMovementMode.DynamicThumbstick or scheme == Enum.TouchMovementMode.Default then
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
				hidden = {MoveImageDTS = true, JumpLabel = true} -- cant manually jump on ctm
				helpElements["MoveLabel"].Position = isPortrait and UDim2.new(0.25,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.5,0) or UDim2.new(0.25,-helpElements["MoveLabel"].AbsoluteSize.x/2,0.5,40)
				helpElements["RotateLabel"].Position = isPortrait and UDim2.new(1,-helpElements["RotateLabel"].AbsoluteSize.x-20,0.02,0) or UDim2.new(0.5,-60,0.02,0)
				helpElements["UseToolLabel"].Position = isPortrait and UDim2.new(0.75,-helpElements["UseToolLabel"].AbsoluteSize.x/2,0.5,0) or UDim2.new(0.85,-60,0.02,0)

				helpElements["EquipLabel"].Position = isPortrait and UDim2.new(0.5,-60,0.75,50) or UDim2.new(0.5,-60,0.64,0)
				helpElements["ZoomLabel"].Position = isPortrait and UDim2.new(0,20,0.02,0) or UDim2.new(0.15,-60,0.02,0)
			else
				-- keep the default style, but take portrait mode into account
				hidden = {MoveImageDTS = true, MoveImageCTM = true, JumpImage = true} -- if theres a jump button we don't need to do touch gestures, same with thumbstick
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

		local function createTouchLabel(text, position, size, parent)
			local nameFrame = Create'TextLabel'
			{
				Position = position,
				Size = size,
				BackgroundTransparency = 1,
				Name = text .. "Frame",
				Parent = parent,
			}

			local nameLabel = Create'TextLabel'
			{
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = text,
				Font = Theme.font(Enum.Font.SourceSansBold, "HelpTouch"),
				FontSize = Theme.fontSize(Enum.FontSize.Size14, "HelpTouch"),
				TextColor3 = Color3.new(1,1,1),
				Name = text .. "Label",
				ZIndex = 3,
				Parent = nameFrame,
				TextScaled = true,
				TextWrapped = true
			};

			if not smallScreen then
				nameLabel.FontSize = Theme.fontSize(Enum.FontSize.Size18, "HelpTitle")
				nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabel.Size.X.Offset, nameLabel.Size.Y.Scale, nameLabel.Size.Y.Offset + 4)
			end

			local _nameBackgroundImage = Create'ImageLabel'
			{
				Name = text .. "BackgroundImage",
				Size = UDim2.new(1.25,0,1.25,0),
				Position = UDim2.new(-0.125,0,-0.065,0),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/ui/Settings/Radial/RadialLabel.png",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(12,2,65,21),
				ZIndex = 2,
				Parent = nameFrame
			};

			local textSizeConstraint = Instance.new("UITextSizeConstraint",nameLabel)
			textSizeConstraint.MaxTextSize = Theme.textSize(18, "HelpText")

			return nameFrame
		end

		local function createTouchGestureImage(name, image, position, size, parent)
			local gestureImage = Create'ImageLabel'
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
		local helpFrame = Create'Frame'
		{
		  Size = if not GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then UDim2.new(1,0,0,0) else UDim2.new(1,0,1,0),
		  AutomaticSize = if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() then Enum.AutomaticSize.Y else nil,
		  BackgroundTransparency = 1,
		  Name = "HelpFrame" .. tostring(typeOfHelp)
		};
		if GetFFlagEnablePreferredTextSizeStyleFixesInExperienceMenu() and typeOfHelp == KEYBOARD_MOUSE_TAG then
			local _helpListLayout = Create'UIListLayout'
			{
				FillDirection = Enum.FillDirection.Horizontal,
				Wraps = true,
				Parent = helpFrame,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PC_TABLE_SPACING)
			};
		end


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

	function this:PageDisplayed()
		if not this.LastInputTypeChangedConnection then
			this.LastInputTypeChangedConnection = UserInputService.LastInputTypeChanged:Connect(function(inputType: Enum.UserInputType)
				if inputType ~= Enum.UserInputType.Focus and inputType ~= Enum.UserInputType.None then
					lastInputType = inputType
					showTypeOfHelp()
				end
			end)
		end
		lastInputType = UserInputService:GetLastInputType()
		showTypeOfHelp()
	end

	function this:PageHidden()
		if this.LastInputTypeChangedConnection then
			this.LastInputTypeChangedConnection:Disconnect()
			this.LastInputTypeChangedConnection = nil
		end
	end

	local function adjustForScreenLayout(givenSize) -- portrait mode was causing the help frame to be either too tall or short when changed between landscape mode and portrait.
		if this:GetCurrentInputType() == TOUCH_TAG then
			local scheme = GameSettings.TouchMovementMode
			local smallScreen = utility:IsSmallTouchScreen()
			local size = givenSize or GuiService:GetScreenResolution()
			local ySize = size.y - 350
			if smallScreen then
				if Theme.UIBloxThemeEnabled then
					ySize = size.y - 120
				else
					ySize = size.y - 100
				end
			end
			this.HelpPages[TOUCH_TAG].Size = UDim2.new(1,0,0,ySize)
			updateTouchLayout(scheme)
		end
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "HelpTab"

	if Theme.UIBloxThemeEnabled then
		this.TabHeader.TabLabel.Icon.Image ="rbxasset://textures/ui/Settings/MenuBarIcons/HelpTab.png"

		local icon = Theme.Images["icons/menu/help"]
		this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		this.TabHeader.TabLabel.Icon.Image = icon.Image

		this.TabHeader.TabLabel.Title.Text = "Help"
	else
		this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/HelpTab.png"

		if FFlagUseNotificationsLocalization then
			this.TabHeader.Title.Text = "Help"
		else
			this.TabHeader.Icon.Title.Text = "Help"
		end
	end

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "Help"

	if not GetFFlagOptimizeHelpMenuInputEvent() then
		UserInputService.InputBegan:connect(function(inputObject)
			local inputType = inputObject.UserInputType
			if inputType ~= Enum.UserInputType.Focus and inputType ~= Enum.UserInputType.None then
				lastInputType = inputObject.UserInputType
				showTypeOfHelp()
			end
		end)
	end

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
      if GetFFlagOptimizeHelpMenuInputEvent() then
        PageInstance:PageDisplayed()
      end
      if not GetFFlagFixIGMBottomBarVisibility() then
        local isPortrait = utility:IsPortrait()
        if PageInstance:GetCurrentInputType() == TOUCH_TAG then
            if PageInstance.HubRef.BottomButtonFrame and not utility:IsSmallTouchScreen() and not isPortrait then
                PageInstance.HubRef.BottomButtonFrame.Visible = false
            end
        end
      end
	  if PageInstance.HubRef.VersionContainer then
	    PageInstance.HubRef.VersionContainer.Visible = true
	  end
    end)

  PageInstance.Hidden.Event:connect(function()
      if GetFFlagOptimizeHelpMenuInputEvent() then
        PageInstance:PageHidden()
      end
      PageInstance.HubRef.PageViewClipper.ClipsDescendants = true
      PageInstance.HubRef.PageView.ClipsDescendants = true

      PageInstance.HubRef:ShowShield()
      
      if not GetFFlagFixIGMBottomBarVisibility() then
        local isPortrait = utility:IsPortrait()
        if PageInstance:GetCurrentInputType() == TOUCH_TAG then
            if PageInstance.HubRef.BottomButtonFrame and not utility:IsSmallTouchScreen() and not isPortrait then
                PageInstance.HubRef.BottomButtonFrame.Visible = true
            end
        end
      end
	  if PageInstance.HubRef.VersionContainer then
		PageInstance.HubRef.VersionContainer.Visible = false
	  end
    end)
end


return PageInstance
