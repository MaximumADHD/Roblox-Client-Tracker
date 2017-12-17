-- Written by Kip Turner, Copyright Roblox 2015

local TextService = game:GetService('TextService')

local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService('GuiService')
local RunService = game:GetService('RunService')
local ContextActionService = game:GetService("ContextActionService")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local GameOptionsSettings = settings():FindFirstChild("Game Options")

local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local GuiRoot = ScreenManager:GetGuiRoot()

local BACKGROUND_COLOR = Color3.new(3/255,3/255,3/255)
local START_EDGE_SIZE = UDim2.new(0.9,0,0.9,0)
local MIN_EDGE_SIZE = UDim2.new(0.85,0,0.85,0)
local MAX_EDGE_SIZE = UDim2.new(1,0,1,0)
local ZERO_VEC2 = Vector2.new(0,0)
local THUMBSTICK_BORDER_SENSITIVITY = 0.05
local MAX_STICK_ACCELERATION = 3
local ACCELERATION_RATE = 1
local DPAD_STEP_AMOUNT = 2
local DPAD_CODE_TO_EDGE_PUSH =
{
	[Enum.KeyCode.DPadDown] = Vector2.new(0.0, DPAD_STEP_AMOUNT);
	[Enum.KeyCode.DPadUp] = Vector2.new(0.0, -DPAD_STEP_AMOUNT);
	[Enum.KeyCode.DPadLeft] = Vector2.new(-DPAD_STEP_AMOUNT, 0.0);
	[Enum.KeyCode.DPadRight] = Vector2.new(DPAD_STEP_AMOUNT, 0.0);
}


local function CreateOverscanAdjustmentScreen(parent)
	local this = {}

	this.StickPosition = ZERO_VEC2
	this.StickAcceleration = 1
	local lastUpdate = nil
	local lastParent = parent

	local lastSavedOverscanPX = START_EDGE_SIZE.X.Scale
	local lastSavedOverscanPY = START_EDGE_SIZE.Y.Scale

	local function StorePreviousOverscanValues()
		local success, errormsg = pcall(function()
			lastSavedOverscanPX = GameOptionsSettings.OverscanPX
			lastSavedOverscanPY = GameOptionsSettings.OverscanPY
		end)
		if not success then
			Utility.DebugLog("Error, StorePreviousOverscanValues: OverscanPX and OverscanPY" , errormsg)
		end
	end
	StorePreviousOverscanValues()

	local MainContainer = Utility.Create'Frame'
	{
		Name = 'OverscanAdjustmentScreen';
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 1;
		BackgroundTransparency = 0;
		BackgroundColor3 = BACKGROUND_COLOR;
		Visible = false;
	}

		local BackgroundImage = Utility.Create'ImageLabel'
		{
			Name = 'BackgroundImage';
			Image = 'rbxasset://textures/ui/Shell/ScreenAdjustment/Background.png';
			Size = UDim2.new(1,0,1,0);
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};

		local Title = Utility.Create'TextLabel'
		{
			Name = 'Title';
			Text = Strings:LocalizedString('ScreenSizeWord');
			Position = UDim2.new(0, 230, 0, 175);
			TextXAlignment = 'Left';
			TextColor3 = GlobalSettings.WhiteTextColor;
			Font = GlobalSettings.LightFont;
			FontSize = GlobalSettings.HeaderSize;
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};
		do
			local titleTextSize = TextService:GetTextSize(Title.Text, Utility.ConvertFontSizeEnumToInt(Title.FontSize), Title.Font, Vector2.new())
			Title.Size = UDim2.new(0, titleTextSize.X, 0, titleTextSize.Y)
		end

		local Prompt = Utility.Create'TextLabel'
		{
			Name = 'Prompt';
			Text = Strings:LocalizedString('ResizeScreenPrompt');
			Position = UDim2.new(0,230,0,225);
			TextXAlignment = 'Left';
			TextColor3 = GlobalSettings.WhiteTextColor;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};


		do
			local ControllerImage = Utility.Create'ImageLabel'
			{
				Name = 'ControllerImage';
				BackgroundTransparency = 1;
				Image = 'rbxasset://textures/ui/Shell/ScreenAdjustment/Controller@1080.png';
				Size = UDim2.new(0,599,0,404);
				Parent = MainContainer;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
			};

				local Line = Utility.Create'Frame'
				{
					Name = 'Line';
					Size = UDim2.new(0.4,0,0,1);
					Position = UDim2.new(0.73, 0, 0.545, 0);
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					BackgroundTransparency = 0;
					Parent = ControllerImage;
				};
					local InputHint = Utility.Create'TextLabel'
					{
						Name = 'InputHint';
						Text = Strings:LocalizedString('ResizeScreenInputHint');
						Size = UDim2.new(0,0,0,0);
						Position = UDim2.new(1, 3, 0, -1);
						TextXAlignment = 'Left';
						TextColor3 = GlobalSettings.WhiteTextColor;
						Font = GlobalSettings.RegularFont;
						FontSize = GlobalSettings.ButtonSize;
						BackgroundTransparency = 1;
						Parent = Line;
					};
		end

		local AcceptButtonImage = Utility.Create'ImageLabel'
		{
			Name = 'AcceptButtonImage';
			Size = UDim2.new(0,65,0,65);
			Position = UDim2.new(0.5, 25, 0.75, 0);
			Image = 'rbxasset://textures/ui/Shell/ButtonIcons/AButton.png';
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};
			local AcceptHint = Utility.Create'TextLabel'
			{
				Name = 'AcceptHint';
				Text = Utility.Upper(Strings:LocalizedString('AcceptWord'));
				Size = UDim2.new(0,0,1,0);
				Position = UDim2.new(1, 5, 0, -3);
				TextXAlignment = 'Left';
				TextColor3 = GlobalSettings.WhiteTextColor;
				Font = GlobalSettings.RegularFont;
				FontSize = GlobalSettings.ButtonSize;
				BackgroundTransparency = 1;
				Parent = AcceptButtonImage;
			};

		local ResetButtonImage = Utility.Create'ImageLabel'
		{
			Name = 'ResetButtonImage';
			Size = UDim2.new(0,65,0,65);
			Image = 'rbxasset://textures/ui/Shell/ButtonIcons/XButton.png';
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};
			local ResetHint = Utility.Create'TextLabel'
			{
				Name = 'ResetHint';
				Text = Utility.Upper(Strings:LocalizedString('ResetWord'));
				Size = UDim2.new(0,0,1,0);
				Position = UDim2.new(1, 5, 0, -3);
				TextXAlignment = 'Left';
				TextColor3 = GlobalSettings.WhiteTextColor;
				Font = GlobalSettings.RegularFont;
				FontSize = GlobalSettings.ButtonSize;
				BackgroundTransparency = 1;
				Parent = ResetButtonImage;
			};

		local Edges = Utility.Create'Frame'
		{
			Name = 'Edges';
			Size = START_EDGE_SIZE;
			BackgroundTransparency = 1;
			Parent = MainContainer;
		};
		do
			local edgesSelectionImage = Utility.Create'ImageLabel'
			{
				Name = 'EdgesSelectionImage';
				Size = UDim2.new(1,2,1,2);
				Position = UDim2.new(0,-1,0,-1);
				Image = 'rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenRangeOverlay.png';
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(21,21,41,41);
				BackgroundTransparency = 1;
			};
			edgesSelectionImage.Parent = Edges
		end
		for i = 0, 3 do
			local CornerImage = Utility.Create'ImageLabel'
			{
				Name = 'CornerImage';
				Size = UDim2.new(0, 95, 0, 95);
				BackgroundTransparency = 1;
				Rotation = 90 * i;
				Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenAdjustmentArrow.png";
				Parent = Edges;
			};

			if i == 0 then
				CornerImage.AnchorPoint = Vector2.new(0, 0)
				CornerImage.Position = UDim2.new(0, 0, 0, 0)
			elseif i == 1 then
				CornerImage.AnchorPoint = Vector2.new(1, 0)
				CornerImage.Position = UDim2.new(1, 0, 0, 0)
			elseif i == 2 then
				CornerImage.AnchorPoint = Vector2.new(1, 1)
				CornerImage.Position = UDim2.new(1, 0, 1, 0)
			elseif i == 3 then
				CornerImage.AnchorPoint = Vector2.new(0, 1)
				CornerImage.Position = UDim2.new(0, 0, 1, 0)
			end
		end

	local function RefreshLayout()
		ResetButtonImage.Position = UDim2.new(0.5 - ResetButtonImage.Size.X.Scale, -ResetHint.TextBounds.X - 25 - ResetButtonImage.Size.X.Offset, 0.75, 0);
		Prompt.Size = UDim2.new(0, Prompt.TextBounds.X, 0, Prompt.TextBounds.Y)
	end
	local closedEvent = Instance.new("BindableEvent")
  	closedEvent.Name = "ClosedEvent"
	this.Closed = closedEvent.Event

	local EdgePercent = Vector2.new(START_EDGE_SIZE.X, START_EDGE_SIZE.Y)
	function this:GetAdjustmentEdgesPercent()
		return EdgePercent
	end

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('OverscanScreenId')}
	end

	function this:SetAdjustmentEdges(newEdgeSize)
		EdgePercent = Utility.ClampVector2(Vector2.new(MIN_EDGE_SIZE.X.Scale, MIN_EDGE_SIZE.Y.Scale), Vector2.new(1,1), newEdgeSize)

		local guiSize = GuiRoot.AbsoluteSize
		local absoluteEdgeSize = EdgePercent * guiSize

		-- Round to nearest 2 so that we can evenly space above and below
		local roundedAbsoluteEdgeSize = Vector2.new(Utility.Round(absoluteEdgeSize.X/2), Utility.Round(absoluteEdgeSize.Y/2)) * 2
		roundedAbsoluteEdgeSize = Utility.ClampVector2(Vector2.new(), guiSize, roundedAbsoluteEdgeSize)

		Edges.Size = UDim2.new(0, roundedAbsoluteEdgeSize.X, 0, roundedAbsoluteEdgeSize.Y)
		Edges.Position = UDim2.new(0, (guiSize.X - roundedAbsoluteEdgeSize.X) / 2, 0, (guiSize.Y - roundedAbsoluteEdgeSize.Y) / 2)
	end

	function this:PushAdjustmentEdges(pushAmount)
		self:SetAdjustmentEdges(self:GetAdjustmentEdgesPercent() + pushAmount)
	end

	function this:PushAdjustmentEdgesByPixels(pixelPushAmount)
		local guiSize = GuiRoot.AbsoluteSize
		local pushAmount = pixelPushAmount / guiSize

		if Utility.IsFinite(pushAmount.X) and Utility.IsFinite(pushAmount.Y) then
			self:SetAdjustmentEdges(self:GetAdjustmentEdgesPercent() + pushAmount)
		end
	end

	function this:Update()
		local now = tick()
		if lastUpdate and self.StickPosition ~= ZERO_VEC2 then
			local delta = now - lastUpdate
			local transformedStick = Utility.GamepadLinearToCurve(self.StickPosition, 0.2)
			self:PushAdjustmentEdges(Vector2.new(transformedStick.X, -transformedStick.Y) * self.StickAcceleration * delta * THUMBSTICK_BORDER_SENSITIVITY)
			if transformedStick ~= ZERO_VEC2 then
				self.StickAcceleration = math.min(self.StickAcceleration + delta * ACCELERATION_RATE, MAX_STICK_ACCELERATION)
			else
				self.StickAcceleration = 1
			end
		end
		lastUpdate = now
	end

	function this:ResetEdges()
		self:SetAdjustmentEdges(Vector2.new(START_EDGE_SIZE.X, START_EDGE_SIZE.Y))
	end

	local GuiRootChangedConn = nil
	function this:Show()
		MainContainer.Visible = true
		MainContainer.Parent = lastParent
		RefreshLayout()
		self.StickAcceleration = 1

		if not UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows and GameOptionsSettings.OverscanPX > 0 and GameOptionsSettings.OverscanPY > 0 then
			this:SetAdjustmentEdges(Vector2.new(GameOptionsSettings.OverscanPX, GameOptionsSettings.OverscanPY))
		else
			self:ResetEdges()
		end

		local success, errormsg = pcall(function()
			StorePreviousOverscanValues()
			-- Need to do this step so that the player
			-- can accurately estimate their TV's overscan
			GameOptionsSettings.OverscanPX = 1
			GameOptionsSettings.OverscanPY = 1
		end)
		if not success then
			Utility.DebugLog("Error resetting Overscan Screen Resolution:" , errormsg)
		end

		Utility.DisconnectEvent(GuiRootChangedConn)
		GuiRootChangedConn = GuiRoot:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
			self:PushAdjustmentEdgesByPixels(ZERO_VEC2)
		end)
		self:PushAdjustmentEdgesByPixels(ZERO_VEC2)

	end

	function this:Hide()
		MainContainer.Visible = false
		MainContainer.Parent = nil
		GuiRootChangedConn = Utility.DisconnectEvent(GuiRootChangedConn)
	end

	function this:Focus()
		Utility.SetSelectedCoreObject(nil)
		RefreshLayout()

		self.StickPosition = ZERO_VEC2
		self.StickAcceleration = 1

		local beginSeen = false

		ContextActionService:BindCoreAction("ResetAdjustmentScreen",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					self:ResetEdges()
				end
			end,
			false,
			Enum.KeyCode.ButtonX)

		ContextActionService:BindCoreAction("AcceptAdjustmentScreen",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					beginSeen = true
				elseif inputState == Enum.UserInputState.End and beginSeen then
					local success, errormsg = pcall(function()
						GameOptionsSettings.OverscanPX = math.min(1, self:GetAdjustmentEdgesPercent().X)
						GameOptionsSettings.OverscanPY = math.min(1, self:GetAdjustmentEdgesPercent().Y)
						StorePreviousOverscanValues()
					end)
					if not success then
						Utility.DebugLog("Error setting Overscan Screen Resolution:" , errormsg)
					end
					if self == ScreenManager:GetTopScreen() then
						ScreenManager:CloseCurrent()
						closedEvent:Fire()
					end
				end
			end,
			false,
			Enum.KeyCode.ButtonA)

		ContextActionService:BindCoreAction("ThumbstickAdjustmentScreen",
			function(actionName, inputState, inputObject)
				self.StickPosition = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
			end,
			false,
			Enum.KeyCode.Thumbstick2)

		ContextActionService:BindCoreAction("DPadAdjustmentScreen",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					local pushAmount = DPAD_CODE_TO_EDGE_PUSH[inputObject.KeyCode]
					if pushAmount then
						self:PushAdjustmentEdgesByPixels(pushAmount)
					end
				end
			end,
			false,
			Enum.KeyCode.DPadDown, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight)

		RunService:BindToRenderStep("UpdateAdjustmentScreen", Enum.RenderPriority.Input.Value, function() self:Update() end)
	end

	function this:RemoveFocus()
		self.StickPosition = ZERO_VEC2
		lastUpdate = nil

		ContextActionService:UnbindCoreAction("ResetAdjustmentScreen")
		ContextActionService:UnbindCoreAction("AcceptAdjustmentScreen")
		ContextActionService:UnbindCoreAction("ThumbstickAdjustmentScreen")
		ContextActionService:UnbindCoreAction("DPadAdjustmentScreen")

		RunService:UnbindFromRenderStep("UpdateAdjustmentScreen")
	end

	function this:SetPosition(newPosition)
		MainContainer.Position = newPosition
	end

	function this:SetParent(newParent)
		MainContainer.Parent = newParent
		lastParent = newParent
	end

	function this:SetStyleForInGame()
		BackgroundImage.Visible = false
		MainContainer.BackgroundTransparency = 0.2

		local function setZIndex(guiObject, newZIndex)
			if not guiObject:IsA("GuiObject") then return end

			guiObject.ZIndex = newZIndex

			local children = guiObject:GetChildren()
			for i = 1, #children do
				setZIndex(children[i], newZIndex)
			end
		end

		setZIndex(MainContainer, 9)
	end


	if not UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
		pcall(function() PlatformService.Suspended:connect(function()
				GameOptionsSettings.OverscanPX = lastSavedOverscanPX
				GameOptionsSettings.OverscanPY = lastSavedOverscanPY
			end)
		end)
	end

	return this
end


return CreateOverscanAdjustmentScreen
