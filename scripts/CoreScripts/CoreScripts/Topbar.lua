--[[
	// FileName: Topbar.lua
	// Written by: SolarCrane
	// Description: Code for lua side Top Menu items in ROBLOX.
]]

--[[ FFLAG VALUES ]]

local getNewNotificationPathSuccess, newNotificationPathValue = pcall(function() return settings():GetFFlag("UseNewNotificationPathLua") end)
local newNotificationPath = getNewNotificationPathSuccess and newNotificationPathValue

local enablePortraitModeSuccess, enablePortraitModeValue = pcall(function() return settings():GetFFlag("EnablePortraitMode") end)
local enablePortraitMode = enablePortraitModeSuccess and enablePortraitModeValue

--[[ END OF FFLAG VALUES ]]


--[[ SERVICES ]]

local CoreGuiService = game:GetService('CoreGui')
local PlayersService = game:GetService('Players')
local GuiService = game:GetService('GuiService')
local InputService = game:GetService('UserInputService')
local StarterGui = game:GetService('StarterGui')
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService('RunService')
local TextService = game:GetService('TextService')
local ChatService = game:GetService('Chat')

--[[ END OF SERVICES ]]

--[[ MODULES ]]--
local GuiRoot = CoreGuiService:WaitForChild('RobloxGui')
local TopbarConstants = require(GuiRoot.Modules.TopbarConstants)
local Utility = require(GuiRoot.Modules.Settings.Utility)
--[[ END OF MODULES ]]

local topbarEnabled = true
local topbarEnabledChangedEvent = Instance.new('BindableEvent')

local function isTopbarEnabled()
	return topbarEnabled and not InputService.VREnabled
end

StarterGui:RegisterSetCore("TopbarEnabled", function(enabled) -- registers a placeholder setcore function that keeps track of players enabling/disabling the topbar before it's ready.
	if type(enabled) == "boolean" then
		topbarEnabled = enabled
	end
end)
local lookMenuEnabled = true

local settingsActive = false

local GameSettings = UserSettings().GameSettings
local Player = PlayersService.LocalPlayer
while not Player do
	PlayersService.ChildAdded:wait()
	Player = PlayersService.LocalPlayer
end

local canChat = true

local accountTypeText = "Account: <13"
local accountTypeTextShort = "<13"

function calculateAccountText()
	accountTypeText = "Account: 13+"
	accountTypeTextShort = "13+"
	if Player:GetUnder13() then
		accountTypeText = "Account: <13"
		accountTypeTextShort = "<13"
	end
end

local TenFootInterface = require(GuiRoot.Modules.TenFootInterface)
local isTenFootInterface = TenFootInterface:IsEnabled()

local Panel3D = require(GuiRoot.Modules.VR.Panel3D)
local TopbarPanel3D = Panel3D.Get("Topbar3D")
local VRHub = require(GuiRoot.Modules.VR.VRHub)

local Util = {}
do
	-- Check if we are running on a touch device
	function Util.IsTouchDevice()
		return InputService.TouchEnabled
	end

	function Util.IsSmallTouchScreen()
		local screenResolution = GuiService:GetScreenResolution()
		return InputService.TouchEnabled and (screenResolution.Y < 500 or screenResolution.X < 700)
	end

	function Util.Create(instanceType)
		return function(data)
			local obj = Instance.new(instanceType)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					obj[k] = v
				end
			end
			return obj
		end
	end

	function Util.Clamp(low, high, input)
		return math.max(low, math.min(high, input))
	end

	function Util.DisconnectEvent(conn)
		if conn then
			conn:disconnect()
		end
		return nil
	end

	function Util.SetGUIInsetBounds(x1, y1, x2, y2)
		GuiService:SetGlobalGuiInset(x1, y1, x2, y2)
		if GuiRoot:FindFirstChild("GuiInsetChanged") then
			GuiRoot.GuiInsetChanged:Fire(x1, y1, x2, y2)
		end
	end

	local humanoidCache = {}
	function Util.FindPlayerHumanoid(player)
		local character = player and player.Character
		if character then
			local resultHumanoid = humanoidCache[player]
			if resultHumanoid and resultHumanoid.Parent == character then
				return resultHumanoid
			else
				humanoidCache[player] = nil -- Bust Old Cache
				for _, child in pairs(character:GetChildren()) do
					if child:IsA('Humanoid') then
						humanoidCache[player] = child
						return child
					end
				end
			end
		end
	end
end

local selectionRing = Util.Create "ImageLabel" {
	Name = "SelectionRing",
	Position = UDim2.new(0.5, -23, 0.5, -23),
	Size = UDim2.new(0, 46, 0, 46),
	BackgroundTransparency = 1,
	Image = "rbxasset://textures/ui/VR/buttonHover.png"
}

local function CreateTopBar()
	local this = {}

	local playerGuiChangedConn = nil

	local topbarContainer = Util.Create'Frame'{
		Name = "TopBarContainer";
		Size = UDim2.new(1, 0, 0, TopbarConstants.TOPBAR_THICKNESS);
		Position = UDim2.new(0, 0, 0, -TopbarConstants.TOPBAR_THICKNESS);
		BackgroundTransparency = TopbarConstants.TOPBAR_OPAQUE_TRANSPARENCY;
		BackgroundColor3 = TopbarConstants.TOPBAR_BACKGROUND_COLOR;
		BorderSizePixel = 0;
		Active = true;
		Parent = GuiRoot;
	};

	local topbarShadow = Util.Create'ImageLabel'{
		Name = "TopBarShadow";
		Size = UDim2.new(1, 0, 0, 3);
		Position = UDim2.new(0, 0, 1, 0);
		Image = "rbxasset://textures/ui/TopBar/dropshadow.png";
		BackgroundTransparency = 1;
		Active = false;
		Visible = false;
		Parent = topbarContainer;
	};

	local function ComputeTransparency()
		if not isTopbarEnabled() then
			return 1
		end

		local playerGui = Player:FindFirstChild('PlayerGui')
		if playerGui then
			return playerGui:GetTopbarTransparency()
		end

		return TopbarConstants.TOPBAR_TRANSLUCENT_TRANSPARENCY
	end

	function this:UpdateBackgroundTransparency()
		if settingsActive and not InputService.VREnabled then
			topbarContainer.BackgroundTransparency = TopbarConstants.TOPBAR_OPAQUE_TRANSPARENCY
			topbarShadow.Visible = false
		else
			topbarContainer.BackgroundTransparency = ComputeTransparency()
			topbarContainer.Active = (topbarContainer.BackgroundTransparency ~= 1)
			topbarShadow.Visible = (topbarContainer.BackgroundTransparency == 0)
		end
	end

	function this:GetInstance()
		return topbarContainer
	end

	spawn(function()
		local playerGui = Player:WaitForChild('PlayerGui', 86400) or Player:WaitForChild('PlayerGui')
		playerGuiChangedConn = Util.DisconnectEvent(playerGuiChangedConn)
		pcall(function()
			playerGuiChangedConn = playerGui.TopbarTransparencyChangedSignal:connect(this.UpdateBackgroundTransparency)
		end)
		this:UpdateBackgroundTransparency()
	end)

	return this
end


local BarAlignmentEnum =
{
	Right = 0;
	Left = 1;
	Middle = 2;
}

local function CreateMenuBar(barAlignment)
	local this = {}
	local thickness = TopbarConstants.TOPBAR_THICKNESS
	local alignment = barAlignment or BarAlignmentEnum.Right
	local items = {}
	local propertyChangedConnections = {}
	local dock = nil

	function this:ArrangeItems()
		local totalWidth = 0

		local spacing = TopbarConstants.ITEM_SPACING
		if InputService.VREnabled then
			spacing = TopbarConstants.VR_ITEM_SPACING
		end

		for i, item in ipairs(items) do
			local width = item:GetWidth()

			if alignment == BarAlignmentEnum.Left then
				item.Position = UDim2.new(0, totalWidth, 0, 0)
			elseif alignment == BarAlignmentEnum.Right then
				item.Position = UDim2.new(1, -totalWidth - width, 0, 0)
			end

			if i ~= #items then
				width = width + spacing
			end

			totalWidth = totalWidth + width
		end

		if alignment == BarAlignmentEnum.Middle then
			local currentX = -totalWidth / 2
			for _, item in ipairs(items) do
				item.Position = UDim2.new(0, currentX, 0, 0)

				currentX = currentX + item:GetWidth() + spacing
			end
		end

		return totalWidth
	end

	function this:GetThickness()
		return thickness
	end

	function this:GetNumberOfItems()
		return #items
	end

	function this:SetDock(newDock)
		dock = newDock
		for _, item in pairs(items) do
			item.Parent = dock
		end
	end

	function this:IndexOfItem(searchItem)
		for index, item in pairs(items) do
			if item == searchItem then
				return index
			end
		end
		return nil
	end

	function this:ItemAtIndex(index)
		return items[index]
	end

	function this:GetItems()
		return items
	end

	function this:AddItem(item, index)
		local numItems = self:GetNumberOfItems()
		index = Util.Clamp(1, numItems + 1, (index or numItems + 1))

		local alreadyFoundIndex = self:IndexOfItem(item)
		if alreadyFoundIndex then
			return item, index
		end

		table.insert(items, index, item)
		Util.DisconnectEvent(propertyChangedConnections[item])
		propertyChangedConnections[item] = item.Changed:connect(function(property)
			if property == 'AbsoluteSize' then
				self:ArrangeItems()
			end
		end)
		self:ArrangeItems()

		if dock then
			item.Parent = dock
		end

		return item, index
	end

	function this:RemoveItem(item)
		local index = self:IndexOfItem(item)
		if index then
			local removedItem = table.remove(items, index)

			removedItem.Parent = nil
			Util.DisconnectEvent(propertyChangedConnections[removedItem])

			self:ArrangeItems()
			return removedItem, index
		end
	end


	return this
end

local function CreateMenuBar3D(barAlignment, threeDPanel)
	local this = CreateMenuBar(barAlignment)

	local superArrangeItems = this.ArrangeItems
	function this:ArrangeItems()
		local totalWidth = superArrangeItems(self)
		if threeDPanel then
			threeDPanel:ResizePixels(totalWidth, 120)
		end
		for _, v in pairs(this:GetItems()) do
			v:UpdateHoverText()
		end
		return totalWidth
	end

	return this
end

local function CreateMenuChangedNotifier()
	local this = {}
	local notifier3D = require(GuiRoot.Modules.VR.NotifierHint3D)

	function this:PromptNotification()
		-- Don't show the notification if we are looking down at the menubar already
		if not (TopbarPanel3D:IsVisible() and TopbarPanel3D.isEnabled) then
			notifier3D:BeginNotification(notifier3D.DEFAULT_DURATION)
		end
	end

	Player.FriendStatusChanged:connect(function(fromPlayer, friendStatus)
		if friendStatus == Enum.FriendStatus.FriendRequestReceived then
			this:PromptNotification()
		end
	end)

	local function findScreenGuiAncestor(object)
		if not object then
			return nil
		end
		local parent = object.Parent
		if parent and parent:IsA('ScreenGui') then
			return parent
		end
		return findScreenGuiAncestor(parent)
	end


	local userGuiModuleName = require(GuiRoot.Modules.VR.UserGui).ModuleName
	GuiService.Changed:connect(function(prop)
		-- Notify if the selected object has changed and we are not observing it
		if prop == 'SelectedObject' and GuiService.SelectedObject then
			if findScreenGuiAncestor(GuiService.SelectedObject) then
				if not VRHub:IsModuleOpened(userGuiModuleName) then
					this:PromptNotification()
				end
			end
		end
	end)

	InputService.TextBoxFocused:connect(function(textbox)
		local myScreenGui = findScreenGuiAncestor(textbox)
		local myScreenGuiParent = myScreenGui and myScreenGui.Parent
		if myScreenGuiParent and myScreenGuiParent:IsA('PlayerGui') then
			this:PromptNotification()
		end
	end)

	return this
end


local function CreateMenuItem(origInstance)
	local this = {}
	local instance = origInstance

	function this:SetInstance(newInstance)
		if not instance then
			instance = newInstance
		else
			print("Trying to set an Instance of a Menu Item that already has an instance; doing nothing.")
		end
	end

	function this:GetWidth()
		return self.Size.X.Offset
	end

	-- We are extending a regular instance.
	do
		local mt =
		{
			__index = function (t, k)
				return instance[k]
			end;

			__newindex = function (t, k, v)
				--if instance[k] ~= nil then
					instance[k] = v
				--else
				--	rawset(t, k, v)
				--end
			end;
		}
		setmetatable(this, mt)
	end

	return this
end

local function CreateMenuItem3D(name)
	local menuItem = {}

	local backgroundButton = Util.Create 'ImageButton' {
		Name = name,
		Size = UDim2.new(0, 52, 0, 52),

		BackgroundTransparency = 1,
		SelectionImageObject = selectionRing:Clone(),

		ClipsDescendants = false
	}

	local isActive = false

	function menuItem:OnClicked(wasActive)
	end

	function menuItem:IsActive()
		return isActive
	end

	function menuItem:SetActive(active)
		isActive = active
		if active then
			backgroundButton.Image = "rbxasset://textures/ui/VR/buttonActive.png"
		else
			backgroundButton.Image = "rbxasset://textures/ui/VR/buttonBackground.png"
		end
		backgroundButton.SelectionImageObject.Visible = not active
	end

	function menuItem:GetWidth()
		return backgroundButton.AbsoluteSize.X
	end

	function menuItem:GetInstance()
		return backgroundButton
	end

	local function setTransparency(parent, transparency)
		if parent:IsA("ImageLabel") or parent:IsA("ImageButton") then
			parent.ImageTransparency = transparency
		elseif parent:IsA("TextLabel") or parent:IsA("TextButton") then
			parent.TextTransparency = transparency
		end
		for _, v in pairs(parent:GetChildren()) do
			if v:IsA("GuiObject") then
				setTransparency(v, transparency)
			end
		end
	end
	function menuItem:SetTransparency(transparency)
		setTransparency(backgroundButton, transparency)
	end

	menuItem:SetActive(false)

	local hoverTextFrame = Util.Create 'Frame' {
		Name = "ButtonHoverText",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		Position = UDim2.new(0.5, -45, 0, 55),
		Size = UDim2.new(0, 90, 0, 60),

		Visible = false,
		Parent = backgroundButton
	}
	local hoverMid = Util.Create 'ImageLabel' {
		Name = "HoverMid",
		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/hoverPopupMid.png",

		Position = UDim2.new(0.5, -12, 0, 0),
		Size = UDim2.new(0, 24, 1, 0),
		Parent = hoverTextFrame
	}
	local hoverLeft = Util.Create 'ImageLabel' {
		Name = "HoverLeft",
		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/hoverPopupLeft.png",

		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(0.5, -12, 1, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(1, 1, 33, 59),
		Parent = hoverTextFrame
	}
	local hoverRight = Util.Create 'ImageLabel' {
		Name = "HoverRight",
		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/hoverPopupRight.png",

		Position = UDim2.new(0.5, 12, 0, 0),
		Size = UDim2.new(0.5, -12, 1, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(0, 1, 32, 59),
		Parent = hoverTextFrame
	}

	local hoverTextLabel = Util.Create 'TextLabel' {
		Name = "ButtonHoverTextLabel",
		BackgroundTransparency = 1,

		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size24,
		Text = "",
		TextColor3 = Color3.new(1, 1, 1),

		Position = UDim2.new(0, 0, 0, 8),
		Size = UDim2.new(1, 0, 1, -5),

		Parent = hoverTextFrame
	}

	function menuItem:SetHoverText(text)
		hoverTextLabel.Text = text
		local textSize = TextService:GetTextSize(
			hoverTextLabel.Text,
			24,
			hoverTextLabel.Font,
			Vector2.new(1000, 10000))
		local frameWidth = textSize.x + 20
		hoverTextFrame.Position = UDim2.new(0.5, -frameWidth / 2, 0, 55)
		hoverTextFrame.Size = UDim2.new(0, frameWidth, 0, 60)
	end

	backgroundButton.SelectionGained:connect(function()
		hoverTextFrame.Visible = true
	end)
	backgroundButton.SelectionLost:connect(function()
		hoverTextFrame.Visible = false
	end)

	function menuItem:UpdateHoverText()
		self:SetHoverText(hoverTextLabel.Text)
	end

	backgroundButton.MouseButton1Click:connect(function()
		menuItem:OnClicked(menuItem:IsActive())
	end)

	setmetatable(menuItem, {
		__index = function(t, k)
			return backgroundButton[k]
		end,
		__newindex = function(t, k, v)
			backgroundButton[k] = v
		end
	})

	return menuItem
end

local function createNormalHealthBar()
	local container = Util.Create'ImageButton'
	{
		Name = "NameHealthContainer";
		Size = UDim2.new(0, TopbarConstants.USERNAME_CONTAINER_WIDTH, 1, 0);
		AutoButtonColor = false;
		Image = "";
		BackgroundTransparency = 1;
	}

	local username = Util.Create'TextLabel'{
		Name = "Username";
		Text = Player.Name;
		Size = UDim2.new(1, -14, 0, 18);
		Position = UDim2.new(0, 7, 0, 0);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size14;
		BackgroundTransparency = 1;
		TextColor3 = TopbarConstants.FONT_COLOR;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = container;
	};


	local accountType = Util.Create'TextLabel'{
		Name = "AccountType";
		Text = accountTypeText;
		Size = UDim2.new(1, -14, 0, 9);
		Position = UDim2.new(0, 7, 0, 20);
		Font = Enum.Font.SourceSans;
		TextSize = 11;
		BackgroundTransparency = 1;
		TextColor3 = TopbarConstants.FONT_COLOR;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = container;
	};

	spawn(function()
		wait()
		calculateAccountText()
		accountType.Text = accountTypeText
	end)

	local healthContainer = Util.Create'Frame'{
		Name = "HealthContainer";
		Size = UDim2.new(1, -14, 0, 3);
		Position = UDim2.new(0, 7, 1, -7);
		BorderSizePixel = 0;
		BackgroundColor3 = TopbarConstants.HEALTH_BACKGROUND_COLOR;
		Parent = container;
	};

	local healthFill = Util.Create'Frame'{
		Name = "HealthFill";
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		BackgroundColor3 = TopbarConstants.HEALTH_GREEN_COLOR;
		Parent = healthContainer;
	};

	if enablePortraitMode then
		local function onResized(viewportSize, isPortrait)
			if isPortrait then
				username.TextXAlignment = Enum.TextXAlignment.Right
				accountType.TextXAlignment = Enum.TextXAlignment.Right
				container.Size = UDim2.new(0.3, 0, 1, 0)
				container.AnchorPoint = Vector2.new(1, 0)
			else
				username.TextXAlignment = Enum.TextXAlignment.Left
				accountType.TextXAlignment = Enum.TextXAlignment.Left
				container.Size = UDim2.new(0, TopbarConstants.USERNAME_CONTAINER_WIDTH, 1, 0)
				container.AnchorPoint = Vector2.new(0, 0)
			end
		end
		Utility:OnResized(container, onResized)
	end

	return container, username, healthContainer, healthFill, accountType
end

----- HEALTH -----
local function CreateUsernameHealthMenuItem()

	local container, username, healthContainer, healthFill = nil

	if isTenFootInterface then
		container, username, healthContainer, healthFill, accountType = TenFootInterface:CreateHealthBar()
	else
		container, username, healthContainer, healthFill, accountType = createNormalHealthBar()
	end

	local hurtOverlay = Util.Create'ImageLabel'
	{
		Name = "HurtOverlay";
		BackgroundTransparency = 1;
		Image = TopbarConstants.HURT_OVERLAY_IMAGE;
		Position = UDim2.new(-10,0,-10,0);
		Size = UDim2.new(20,0,20,0);
		Visible = false;
		Parent = GuiRoot;
	};

	local this = CreateMenuItem(container)

	--- EVENTS ---
	local humanoidChangedConn, childAddedConn, childRemovedConn = nil
	--------------

	local HealthBarEnabled = true
	local CurrentHumanoid = nil

	local function AnimateHurtOverlay()
		if hurtOverlay and not InputService.VREnabled then
			local newSize = UDim2.new(20, 0, 20, 0)
			local newPos = UDim2.new(-10, 0, -10, 0)

			if hurtOverlay:IsDescendantOf(game) then
				-- stop any tweens on overlay
				hurtOverlay:TweenSizeAndPosition(newSize, newPos, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0, true, function()
					-- show the gui
					hurtOverlay.Size = UDim2.new(1,0,1,0)
					hurtOverlay.Position = UDim2.new(0,0,0,0)
					hurtOverlay.Visible = true
					-- now tween the hide
					if hurtOverlay:IsDescendantOf(game) then
						hurtOverlay:TweenSizeAndPosition(newSize, newPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 10, false, function()
							hurtOverlay.Visible = false
						end)
					else
						hurtOverlay.Size = newSize
						hurtOverlay.Position = newPos
					end
				end)
			end
		end
	end

	local healthColorToPosition = {
		[Vector3.new(TopbarConstants.HEALTH_RED_COLOR.r,
      TopbarConstants.HEALTH_RED_COLOR.g,
      TopbarConstants.HEALTH_RED_COLOR.b)] = 0.1;
		[Vector3.new(TopbarConstants.HEALTH_YELLOW_COLOR.r,
      TopbarConstants.HEALTH_YELLOW_COLOR.g,
      TopbarConstants.HEALTH_YELLOW_COLOR.b)] = 0.5;
		[Vector3.new(TopbarConstants.HEALTH_GREEN_COLOR.r,
      TopbarConstants.HEALTH_GREEN_COLOR.g,
      TopbarConstants.HEALTH_GREEN_COLOR.b)] = 0.8;
	}
	local min = 0.1
	local minColor = TopbarConstants.HEALTH_RED_COLOR
	local max = 0.8
	local maxColor = TopbarConstants.HEALTH_GREEN_COLOR

	local function HealthbarColorTransferFunction(healthPercent)
		if healthPercent < min then
			return minColor
		elseif healthPercent > max then
			return maxColor
		end

		-- Shepard's Interpolation
		local numeratorSum = Vector3.new(0,0,0)
		local denominatorSum = 0
		for colorSampleValue, samplePoint in pairs(healthColorToPosition) do
			local distance = healthPercent - samplePoint
			if distance == 0 then
				-- If we are exactly on an existing sample value then we don't need to interpolate
				return Color3.new(colorSampleValue.x, colorSampleValue.y, colorSampleValue.z)
			else
				local wi = 1 / (distance*distance)
				numeratorSum = numeratorSum + wi * colorSampleValue
				denominatorSum = denominatorSum + wi
			end
		end
		local result = numeratorSum / denominatorSum
		return Color3.new(result.x, result.y, result.z)
	end

	local function UpdateHealthVisible()
		local isEnabled = HealthBarEnabled and CurrentHumanoid and CurrentHumanoid.Health ~= CurrentHumanoid.MaxHealth
		healthContainer.Visible = isEnabled
	end

	local function OnHumanoidAdded(humanoid)
		CurrentHumanoid = humanoid
		local lastHealth = humanoid.Health
		local function OnHumanoidHealthChanged(health)
			UpdateHealthVisible()
			if humanoid then
				local healthDelta = lastHealth - health
				local healthPercent = health / humanoid.MaxHealth
				if humanoid.MaxHealth <= 0 then
					healthPercent = 0
				end
				healthPercent = Util.Clamp(0, 1, healthPercent)
				local healthColor = HealthbarColorTransferFunction(healthPercent)
				local thresholdForHurtOverlay =
          humanoid.MaxHealth * TopbarConstants.HEALTH_PERCANTAGE_FOR_OVERLAY

				if healthDelta >= thresholdForHurtOverlay and health ~= humanoid.MaxHealth and StarterGui:GetCoreGuiEnabled("Health") == true then
					AnimateHurtOverlay()
				end

				healthFill.Size = UDim2.new(healthPercent, 0, 1, 0)
				healthFill.BackgroundColor3 = healthColor

				lastHealth = health
			end
		end
		Util.DisconnectEvent(humanoidChangedConn)
		humanoidChangedConn = humanoid.HealthChanged:connect(OnHumanoidHealthChanged)
		OnHumanoidHealthChanged(lastHealth)
	end

	local function OnCharacterAdded(character)
		local humanoid = Util.FindPlayerHumanoid(Player)
		if humanoid then
			OnHumanoidAdded(humanoid)
		end

		local function onChildAddedOrRemoved()
			local tempHumanoid = Util.FindPlayerHumanoid(Player)
			if tempHumanoid and tempHumanoid ~= humanoid then
				humanoid = tempHumanoid
				OnHumanoidAdded(humanoid)
			end
		end
		Util.DisconnectEvent(childAddedConn)
		Util.DisconnectEvent(childRemovedConn)
		childAddedConn = character.ChildAdded:connect(onChildAddedOrRemoved)
		childRemovedConn = character.ChildRemoved:connect(onChildAddedOrRemoved)
	end

	rawset(this, "SetHealthbarEnabled",
		function(self, enabled)
			HealthBarEnabled = enabled
			UpdateHealthVisible()
		end)

	rawset(this, "SetNameVisible",
		function(self, visible)
			username.Visible = visible
			accountType.Visible = visible
		end)

	-- Don't need to disconnect this one because we never reconnect it.
	Player.CharacterAdded:connect(OnCharacterAdded)
	if Player.Character then
		OnCharacterAdded(Player.Character)
	end

	local PlayerlistModule = require(GuiRoot.Modules.PlayerlistModule)
	container.MouseButton1Click:connect(function()
		if isTopbarEnabled() then
			PlayerlistModule.ToggleVisibility()
		end
	end)

	return this
end
----- END OF HEALTH -----

----- LEADERSTATS -----
local function CreateLeaderstatsMenuItem()
	local PlayerlistModule = require(GuiRoot.Modules.PlayerlistModule)

	local leaderstatsContainer = Util.Create'ImageButton'
	{
		Name = "LeaderstatsContainer";
		Size = UDim2.new(0, 0, 1, 0);
		AutoButtonColor = false;
		Image = "";
		BackgroundTransparency = 1;
	};

	local this = CreateMenuItem(leaderstatsContainer)
	local columns = {}

	rawset(this, "SetColumns",
		function(self, columnsList)
			-- Should we handle is the screen dimensions change and it is no longer a small touch device after we set columns?
			local isSmallTouchDevice = Util.IsSmallTouchScreen()
			local numColumns = #columnsList

			-- Destroy old columns
			for _, oldColumn in pairs(columns) do
				oldColumn:Destroy()
			end
			columns = {}
			-- End destroy old columns
			local count = 0
			for index, columnData in pairs(columnsList) do  -- i = 1, numColumns do
				if not isSmallTouchDevice or index <= 1 then
					local columnName = columnData.Name
					local columnValue = columnData.Text

					local columnframe = Util.Create'Frame'
					{
						Name = "Column" .. tostring(index);
						Size = UDim2.new(0,
              TopbarConstants.COLUMN_WIDTH + (index == numColumns and 0 or TopbarConstants.NAME_LEADERBOARD_SEP_WIDTH),
              1, 0);
						Position = UDim2.new(0,
              TopbarConstants.NAME_LEADERBOARD_SEP_WIDTH + (TopbarConstants.COLUMN_WIDTH + TopbarConstants.NAME_LEADERBOARD_SEP_WIDTH) * (index-1),
              0, 0);
						BackgroundTransparency = 1;
						Parent = leaderstatsContainer;

						Util.Create'TextLabel'
						{
							Name = "ColumnName";
							Text = columnName;
							Size = UDim2.new(1, 0, 0, 10);
							Position = UDim2.new(0, 0, 0, 4);
							Font = Enum.Font.SourceSans;
							FontSize = Enum.FontSize.Size14;
							BorderSizePixel = 0;
							BackgroundTransparency = 1;
							TextColor3 = TopbarConstants.FONT_COLOR;
							TextYAlignment = Enum.TextYAlignment.Center;
							TextXAlignment = Enum.TextXAlignment.Center;
						};

						Util.Create'TextLabel'
						{
							Name = "ColumnValue";
							Text = columnValue;
							Size = UDim2.new(1, 0, 0, 10);
							Position = UDim2.new(0, 0, 0, 19);
							Font = Enum.Font.SourceSansBold;
							FontSize = Enum.FontSize.Size14;
							BorderSizePixel = 0;
							BackgroundTransparency = 1;
							TextColor3 = TopbarConstants.FONT_COLOR;
							TextYAlignment = Enum.TextYAlignment.Center;
							TextXAlignment = Enum.TextXAlignment.Center;
						};
					};
					columns[columnName] = columnframe
					count = count + 1
				end
			end
			leaderstatsContainer.Size = UDim2.new(0,
        TopbarConstants.COLUMN_WIDTH * count + TopbarConstants.NAME_LEADERBOARD_SEP_WIDTH * count,
        1, 0)
		end)

	rawset(this, "UpdateColumnValue",
		function(self, columnName, value)
			local column = columns[columnName]
			local columnValue = column and column:FindFirstChild('ColumnValue')
			if columnValue then
				columnValue.Text = tostring(value)
			end
		end)

	topbarEnabledChangedEvent.Event:connect(function(enabled)
		PlayerlistModule.TopbarEnabledChanged(enabled and not InputService.VREnabled) --We don't show the playerlist at all in VR
	end)

	this:SetColumns(PlayerlistModule.GetStats())
	PlayerlistModule.OnLeaderstatsChanged.Event:connect(function(newStatColumns)
		if not enablePortraitMode or not Utility:IsPortrait() then
			this:SetColumns(newStatColumns)
		end
	end)

	PlayerlistModule.OnStatChanged.Event:connect(function(statName, statValueAsString)
		this:UpdateColumnValue(statName, statValueAsString)
	end)

	leaderstatsContainer.MouseButton1Click:connect(function()
		if isTopbarEnabled() then
			PlayerlistModule.ToggleVisibility()
		end
	end)

	return this
end
----- END OF LEADERSTATS -----

--- SETTINGS ---
local function CreateSettingsIcon(topBarInstance)
	local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)

	local settingsIconButton = Util.Create'ImageButton'
	{
		Name = "Settings";
		Size = UDim2.new(0, 50, 0, TopbarConstants.TOPBAR_THICKNESS);
		Image = "";
		AutoButtonColor = false;
		BackgroundTransparency = 1;
	}

	local settingsIconImage = Util.Create'ImageLabel'
	{
		Name = "SettingsIcon";
		Size = UDim2.new(0, 32, 0, 25);
		Position = UDim2.new(0.5, -16, 0.5, -12);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Menu/Hamburger.png";
		Parent = settingsIconButton;
	};

	local function UpdateHamburgerIcon()
		if settingsActive then
			settingsIconImage.Image = "rbxasset://textures/ui/Menu/HamburgerDown.png";
		else
			settingsIconImage.Image = "rbxasset://textures/ui/Menu/Hamburger.png";
		end
	end

	local function toggleSettings()
		if settingsActive == false then
			settingsActive = true
		else
			settingsActive = false
		end

		MenuModule:ToggleVisibility()
		UpdateHamburgerIcon()

		return settingsActive
	end

	settingsIconButton.MouseButton1Click:connect(function() toggleSettings() end)

	MenuModule.SettingsShowSignal:connect(function(active)
		settingsActive = active
		topBarInstance:UpdateBackgroundTransparency()
		UpdateHamburgerIcon()
	end)

	local menuItem = CreateMenuItem(settingsIconButton)

	rawset(menuItem, "SetTransparency", function(self, transparency)
		settingsIconImage.ImageTransparency = transparency
	end)
	rawset(menuItem, "SetImage", function(self, image)
		settingsIconImage.Image = image
	end)
	rawset(menuItem, "SetSettingsActive", function(self, active)
		settingsActive = active
		MenuModule:ToggleVisibility(settingsActive)
		UpdateHamburgerIcon()

		return settingsActive
	end)

	return menuItem
end

local function CreateSettingsIcon3D(topBarInstance, panel, menubar)
	local VRHub = require(GuiRoot.Modules.VR.VRHub)

	local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
	local menuItem = CreateMenuItem3D(thisModuleName)
	menuItem:SetHoverText("Settings")

	local icon = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		Position = UDim2.new(0.5, -15, 0.5, -11),
		Size = UDim2.new(0, 30, 0, 22),

		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/hamburger.png"
	}

	function menuItem:OnClicked(wasActive)
		MenuModule:SetVisibility(not wasActive)
	end

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if moduleName == MenuModule.ModuleName then
			menuItem:SetActive(true)
		end
	end)
	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if moduleName == MenuModule.ModuleName then
			menuItem:SetActive(false)
		end
	end)

	return menuItem
end

------------

--- CHAT ---
local function CreateUnreadMessagesNotifier(ChatModule)
	local chatActive = false
	local lastMessageCount = 0

	local chatCounter = Util.Create'ImageLabel'
	{
		Name = "ChatCounter";
		Size = UDim2.new(0, 18, 0, 18);
		Position = UDim2.new(1, -12, 0, -4);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Chat/MessageCounter.png";
		Visible = false;
	};

	local chatCountText = Util.Create'TextLabel'
	{
		Name = "ChatCounterText";
		Text = '';
		Size = UDim2.new(0, 13, 0, 9);
		Position = UDim2.new(0.5, -7, 0.5, -7);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size14;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		TextColor3 = TopbarConstants.FONT_COLOR;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextXAlignment = Enum.TextXAlignment.Center;
		Parent = chatCounter;
	};

	local function OnUnreadMessagesChanged(count)
		if chatActive then
			lastMessageCount = count
		end
		local unreadCount = count - lastMessageCount

		if unreadCount <= 0 then
			chatCountText.Text = ""
			chatCounter.Visible = false
		else
			if unreadCount < 100 then
				chatCountText.Text = tostring(unreadCount)
			else
				chatCountText.Text = "!"
			end
			chatCounter.Visible = true
		end
	end

	local function onChatStateChanged(visible)
		chatActive = visible
		if ChatModule then
			OnUnreadMessagesChanged(ChatModule:GetMessageCount())
		end
	end


	if ChatModule then
		if ChatModule.VisibilityStateChanged then
			ChatModule.VisibilityStateChanged:connect(onChatStateChanged)
		end
		if ChatModule.MessagesChanged then
			ChatModule.MessagesChanged:connect(OnUnreadMessagesChanged)
		end

		onChatStateChanged(ChatModule:GetVisibility())
		OnUnreadMessagesChanged(ChatModule:GetMessageCount())
	end

	return chatCounter
end

local function CreateChatIcon()
	local chatEnabled = game:GetService("UserInputService"):GetPlatform() ~= Enum.Platform.XBoxOne
	if not chatEnabled then return end

	local ChatModule = require(GuiRoot.Modules.ChatSelector)

	local debounce = 0

	local chatIconButton = Util.Create'ImageButton'
	{
		Name = "Chat";
		Size = UDim2.new(0, 50, 0, TopbarConstants.TOPBAR_THICKNESS);
		Image = "";
		AutoButtonColor = false;
		BackgroundTransparency = 1;
	};

	local chatIconImage = Util.Create'ImageLabel'
	{
		Name = "ChatIcon";
		Size = UDim2.new(0, 28, 0, 27);
		Position = UDim2.new(0.5, -14, 0.5, -13);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Chat/Chat.png";
		Parent = chatIconButton;
	};
	if not Util.IsTouchDevice() then
		local chatCounter = CreateUnreadMessagesNotifier(ChatModule)
		chatCounter.Parent = chatIconImage;
	end

	local function updateIcon(down)
		if down then
			chatIconImage.Image = "rbxasset://textures/ui/Chat/ChatDown.png";
		else
			chatIconImage.Image = "rbxasset://textures/ui/Chat/Chat.png";
		end
	end

	local function onChatStateChanged(visible)
		if not Util.IsTouchDevice() then
			updateIcon(visible)
            GameSettings.ChatVisible = visible
		end
	end

	local function toggleChat()
		if InputService.VREnabled then
			ChatModule:ToggleVisibility()
		elseif Util.IsTouchDevice() or ChatModule:IsBubbleChatOnly() then
			if debounce + TopbarConstants.DEBOUNCE_TIME < tick() then
				if Util.IsTouchDevice() then
					ChatModule:SetVisible(true)
				end
				ChatModule:FocusChatBar()
			end
		else
			ChatModule:ToggleVisibility()
		end
	end

	topbarEnabledChangedEvent.Event:connect(function(enabled)
		ChatModule:TopbarEnabledChanged(enabled)
	end)

	chatIconButton.MouseButton1Click:connect(function()
		toggleChat()
	end)

	if ChatModule.ChatBarFocusChanged then
		ChatModule.ChatBarFocusChanged:connect(function(isFocused)
			if Util.IsTouchDevice() or ChatModule:IsBubbleChatOnly() then
				updateIcon(isFocused)
				debounce = tick()
			end
		end)
	end

	if Util.IsTouchDevice() or ChatModule:IsBubbleChatOnly() then
		updateIcon(false)
	end

	if ChatModule.BubbleChatOnlySet then
		ChatModule.BubbleChatOnlySet:connect(function()
			if ChatModule:IsBubbleChatOnly() then
				updateIcon(false)
			elseif not Util.IsTouchDevice() then
				updateIcon(true)
			end
		end)
	end

	if ChatModule.VisibilityStateChanged then
		ChatModule.VisibilityStateChanged:connect(onChatStateChanged)
	end

	if not InputService.VREnabled then
		-- check to see if the chat was disabled
		local willEnableChat = true
        willEnableChat = GameSettings.ChatVisible
		if Util.IsSmallTouchScreen() then
			willEnableChat = false
		end
		ChatModule:SetVisible(willEnableChat)
	end

	local menuItem = CreateMenuItem(chatIconButton)

	rawset(menuItem, "ToggleChat", function(self)
		toggleChat()
	end)
	rawset(menuItem, "SetTransparency", function(self, transparency)
		chatIconImage.ImageTransparency = transparency
	end)
	rawset(menuItem, "SetImage", function(self, newImage)
		chatIconImage.Image = newImage
	end)

	return menuItem
end

local function CreateMobileHideChatIcon()
	local ChatModule = require(GuiRoot.Modules.ChatSelector)

	local chatHideIconButton = Util.Create'ImageButton'
	{
		Name = "ChatVisible";
		Size = UDim2.new(0, 50, 0, TopbarConstants.TOPBAR_THICKNESS);
		Image = "";
		AutoButtonColor = false;
		BackgroundTransparency = 1;
	};

	local chatIconImage = Util.Create'ImageLabel'
	{
		Name = "ChatVisibleIcon";
		Size = UDim2.new(0, 28, 0, 27);
		Position = UDim2.new(0.5, -14, 0.5, -13);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Chat/ToggleChat.png";
		Parent = chatHideIconButton;
	};

	local unreadMessageNotifier = CreateUnreadMessagesNotifier(ChatModule)
	unreadMessageNotifier.Parent = chatIconImage

	local function updateIcon(down)
		if down then
			chatIconImage.Image = "rbxasset://textures/ui/Chat/ToggleChatDown.png";
		else
			chatIconImage.Image = "rbxasset://textures/ui/Chat/ToggleChat.png";
		end
	end

	local function toggleChat()
		ChatModule:ToggleVisibility()
	end

	local function onChatStateChanged(visible)
		updateIcon(visible)
	end

	chatHideIconButton.MouseButton1Click:connect(function()
		toggleChat()
        GameSettings.ChatVisible = ChatModule:GetVisibility()
	end)

	if ChatModule.VisibilityStateChanged then
		ChatModule.VisibilityStateChanged:connect(onChatStateChanged)
	end
	onChatStateChanged(ChatModule:GetVisibility())

	return CreateMenuItem(chatHideIconButton)
end


local function CreateChatIcon3D(topBarInstance, panel, menubar)
	local chatEnabled = game:GetService("UserInputService"):GetPlatform() ~= Enum.Platform.XBoxOne
	if not chatEnabled then return end

	local VRHub = require(GuiRoot.Modules.VR.VRHub)

	local ChatModule = require(GuiRoot.Modules.ChatSelector)
	local thisModuleName = ChatModule.ModuleName

	local menuItem = CreateMenuItem3D(thisModuleName)
	menuItem:SetHoverText("Chat")

	local icon = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		Position = UDim2.new(0.5, -14, 0.5, -12),
		Size = UDim2.new(0, 28, 0, 28),

		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/chat.png"
	}

	function menuItem:OnClicked(wasActive)
		ChatModule:SetVisible(not wasActive)
		if not wasActive then
			ChatModule:FocusChatBar()
		end
	end

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if moduleName == ChatModule.ModuleName then
			menuItem:SetActive(true)
		end
	end)

	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if moduleName == ChatModule.ModuleName then
			menuItem:SetActive(false)
		end
	end)

	local closedEventConn = nil
	local function OnVREnabled(prop)
		if prop == 'VREnabled' then
			if closedEventConn then
				closedEventConn:disconnect()
				closedEventConn = nil
			end
			if InputService.VREnabled then
				local VirtualKeyboardModule = require(GuiRoot.Modules.VR.VirtualKeyboard)
				closedEventConn = VirtualKeyboardModule.ClosedEvent:connect(function()
					if ChatModule:IsFocused(true) then
						ChatModule:SetVisible(false)
					end
				end)
				-- Chat should not be visible by default in VR
				ChatModule:SetVisible(false)
			end
		end
	end
	InputService.Changed:connect(OnVREnabled)
	spawn(function() OnVREnabled("VREnabled") end)

	return menuItem
end

local function CreateUserGuiToggleIcon3D(topBarInstance, panel, menubar)
	local UserGuiModule = require(GuiRoot.Modules.VR.UserGui)

	local menuItem = CreateMenuItem3D()
	menuItem:SetHoverText("2D UI")

	local icon = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		Position = UDim2.new(0.5, -14, 0.5, -14),
		Size = UDim2.new(0, 28, 0, 28),

		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/toggle2D.png"
	}

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if moduleName == UserGuiModule.ModuleName then
			menuItem:SetActive(true)
		end
	end)
	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if moduleName == UserGuiModule.ModuleName then
			menuItem:SetActive(false)
		end
	end)

	function menuItem:OnClicked(wasActive)
		UserGuiModule:SetVisible(not wasActive)
	end

	return menuItem
end

-----------

--- Backpack ---
local function CreateBackpackIcon()
	local BackpackModule = require(GuiRoot.Modules.BackpackScript)

	local backpackIconButton = Util.Create'ImageButton'
	{
		Name = "Backpack";
		Size = UDim2.new(0, 50, 0, TopbarConstants.TOPBAR_THICKNESS);
		Image = "";
		AutoButtonColor = false;
		BackgroundTransparency = 1;
	};

	local backpackIconImage = Util.Create'ImageLabel'
	{
		Name = "BackpackIcon";
		Size = UDim2.new(0, 22, 0, 28);
		Position = UDim2.new(0.5, -11, 0.5, -14);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Backpack/Backpack.png";
		Parent = backpackIconButton;
	};

	local function onBackpackStateChanged(open)
		if open then
			backpackIconImage.Image = "rbxasset://textures/ui/Backpack/Backpack_Down.png";
		else
			backpackIconImage.Image = "rbxasset://textures/ui/Backpack/Backpack.png";
		end
	end

	BackpackModule.StateChanged.Event:connect(onBackpackStateChanged)

	local function toggleBackpack()
		BackpackModule:OpenClose()
	end

	topbarEnabledChangedEvent.Event:connect(function(enabled)
		BackpackModule:TopbarEnabledChanged(enabled)
	end)

	backpackIconButton.MouseButton1Click:connect(function()
		BackpackModule:OpenClose()
	end)

	return CreateMenuItem(backpackIconButton)
end
--------------

----- Stop Recording --
local function CreateStopRecordIcon()
	local stopRecordIconButton = Util.Create'ImageButton'
	{
		Name = "StopRecording";
		Size = UDim2.new(0, 50, 0, TopbarConstants.TOPBAR_THICKNESS);
		Image = "";
		Visible = true;
		BackgroundTransparency = 1;
	};
	stopRecordIconButton:SetVerb("RecordToggle")

	local stopRecordIconLabel = Util.Create'ImageLabel'
	{
		Name = "StopRecordingIcon";
		Size = UDim2.new(0, 28, 0, 28);
		Position = UDim2.new(0.5, -14, 0.5, -14);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/RecordDown.png";
		Parent = stopRecordIconButton;
	};

	return CreateMenuItem(stopRecordIconButton)
end
-----------------------

---- Recenter VR --

local function CreateRecenterIcon3D(topBarInstance, panel, menubar)
	local RecenterModule = require(GuiRoot.Modules.VR.Recenter)

	local menuItem = CreateMenuItem3D(thisModuleName)
	menuItem:SetHoverText("Recenter")

	local icon = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		Position = UDim2.new(0.5, -17, 0.5, -17),
		Size = UDim2.new(0, 34, 0, 34),

		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/recenter.png"
	}

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if moduleName == RecenterModule.ModuleName then
			menuItem:SetActive(true)
		end
	end)
	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if moduleName == RecenterModule.ModuleName then
			menuItem:SetActive(false)
		end
	end)

	function menuItem:OnClicked(wasActive)
		RecenterModule:SetVisible(not wasActive)
	end

	return menuItem
end

-------------------

---- Notifications VR --

local function CreateNotificationsIcon3D(topBarInstance, panel, menubar)
	local NotificationHubModule = require(GuiRoot.Modules.VR.NotificationHub)

	local menuItem = CreateMenuItem3D(NotificationHubModule.ModuleName)
	menuItem:SetHoverText("Notifications")

	local icon = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		Position = UDim2.new(0.5, -12, 0.5, -16),
		Size = UDim2.new(0, 24, 0, 32),

		BackgroundTransparency = 1,

		Image = "rbxasset://textures/ui/VR/notifications.png"
	}

	local notificationBubble = Util.Create "ImageLabel" {
		Parent = menuItem:GetInstance(),

		BackgroundTransparency = 1,

		Position = UDim2.new(0.5, 0, 0.25, 0),
		Size = UDim2.new(0, 18, 0, 18),

		Image = "rbxasset://textures/ui/Chat/MessageCounter.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(9, 0, 9, 18),

		Visible = false
	}

	local notificationCount = Util.Create "TextLabel" {
		Parent = notificationBubble,

		BackgroundTransparency = 1,

		Text = "0",
		TextColor3 = Color3.new(1, 1, 1),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size14,

		Position = UDim2.new(0, -1, 0, -2),
		Size = UDim2.new(1, 0, 1, 0)
	}

	local function setCounter(number)
		if number == 0 then
			notificationBubble.Visible = false
		else
			notificationBubble.Visible = true
		end
		notificationCount.Text = tostring(number)
		notificationBubble.Size = UDim2.new(0, notificationCount.TextBounds.X + 11, 0, 18)
	end
	NotificationHubModule.UnreadCountChanged = setCounter

	function menuItem:OnClicked(wasActive)
		NotificationHubModule:SetVisible(not wasActive)
	end

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if moduleName == NotificationHubModule.ModuleName then
			menuItem:SetActive(true)
		end
	end)
	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if moduleName == NotificationHubModule.ModuleName then
			menuItem:SetActive(false)
		end
	end)

	return menuItem
end

local function CreateNoTopBarAccountType()
	local container = Util.Create'ImageButton'
	{
		Name = "AccountTypeContainer";
		Size = UDim2.new(0, 0, 0, 0);
		AutoButtonColor = false;
		Image = "";
		BackgroundTransparency = 1;
	}

	local accountTypeTextLabel = Util.Create'TextLabel'{
		Name = "AccountTypeText";
		Text = accountTypeTextShort;
		Size = UDim2.new(1, -12, 1, -12);
		Position = UDim2.new(0, 0, 0, 6);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size14;
		BackgroundTransparency = 1;
		TextColor3 = TopbarConstants.FONT_COLOR;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = container;
	};

	spawn(function()
		wait()
		calculateAccountText()
		accountTypeTextLabel.Text = accountTypeTextShort
		if container.Visible then
			local textBounds = accountTypeTextLabel.TextBounds.X
			local containerSize = textBounds
			container.Size = UDim2.new(0, containerSize, 1, 0)
		end
	end)

	local function UpdateNoTopBarAccountType()
		if isTopbarEnabled() then
			container.Visible = false
			container.Size = UDim2.new(0, 0, 0, 0)
		else
			container.Visible = true
			local textBounds = accountTypeTextLabel.TextBounds.X
			local containerSize = textBounds
			container.Size = UDim2.new(0, containerSize, 1, 0)
		end
	end

	topbarEnabledChangedEvent.Event:connect(UpdateNoTopBarAccountType)
	UpdateNoTopBarAccountType()

	local menuItem = CreateMenuItem(container)

	return menuItem
end

------------------------

local TopBar = CreateTopBar()
local LeftMenubar = CreateMenuBar(BarAlignmentEnum.Left)
local RightMenubar = CreateMenuBar(BarAlignmentEnum.Right)
local Menubar3D = CreateMenuBar3D(BarAlignmentEnum.Left, TopbarPanel3D)

local settingsIcon = CreateSettingsIcon(TopBar)
local noTopBarAccountType = nil

if isTenFootInterface then
	spawn(function()
		wait()
		calculateAccountText()
		TenFootInterface:CreateAccountType(accountTypeTextShort)
	end)
elseif not isTenFootInterface then
	noTopBarAccountType = CreateNoTopBarAccountType()
end

local mobileShowChatIcon = Util.IsTouchDevice() and CreateMobileHideChatIcon() or nil
local chatIcon = CreateChatIcon()
local backpackIcon = CreateBackpackIcon()
local stopRecordingIcon = CreateStopRecordIcon()

local leaderstatsMenuItem = CreateLeaderstatsMenuItem()
local nameAndHealthMenuItem = CreateUsernameHealthMenuItem()

local settingsIcon3D = CreateSettingsIcon3D(TopBar, TopbarPanel3D, Menubar3D)
local chatIcon3D = CreateChatIcon3D(TopBar, TopbarPanel3D, Menubar3D)
local recenterIcon3D = CreateRecenterIcon3D(TopBar, TopbarPanel3D, Menubar3D)
local notificationsIcon3D = CreateNotificationsIcon3D(TopBar, TopbarPanel3D, Menubar3D)
local userGuiIcon3D = CreateUserGuiToggleIcon3D(TopBar, TopbarPanel3D, Menubar3D)
local menuChangedNotifier3D = nil

local LEFT_ITEM_ORDER = {}
local RIGHT_ITEM_ORDER = {}
local ITEM_ORDER_3D = {}


-- Set Item Orders
if settingsIcon then
	LEFT_ITEM_ORDER[settingsIcon] = 1
end
if noTopBarAccountType then
	LEFT_ITEM_ORDER[noTopBarAccountType] = 2
end
if mobileShowChatIcon then
	LEFT_ITEM_ORDER[mobileShowChatIcon] = 3
end
if chatIcon then
	LEFT_ITEM_ORDER[chatIcon] = 4
end
if backpackIcon then
	LEFT_ITEM_ORDER[backpackIcon] = 5
end
if stopRecordingIcon then
	LEFT_ITEM_ORDER[stopRecordingIcon] = 6
end

if leaderstatsMenuItem then
	RIGHT_ITEM_ORDER[leaderstatsMenuItem] = 1
end
if nameAndHealthMenuItem and not isTenFootInterface then
	RIGHT_ITEM_ORDER[nameAndHealthMenuItem] = 2
end

if settingsIcon3D then
	ITEM_ORDER_3D[settingsIcon3D] = 1
end
if userGuiIcon3D then
	ITEM_ORDER_3D[userGuiIcon3D] = 2
end
if recenterIcon3D then
	ITEM_ORDER_3D[recenterIcon3D] = 3
end
if chatIcon3D then
	ITEM_ORDER_3D[chatIcon3D] = 4
end
if notificationsIcon3D then
	ITEM_ORDER_3D[notificationsIcon3D] = 5
end

-------------------------


local function AddItemInOrder(Bar, Item, ItemOrder)
	local index = 1
	while ItemOrder[Bar:ItemAtIndex(index)] and ItemOrder[Bar:ItemAtIndex(index)] < ItemOrder[Item] do
		index = index + 1
	end
	Bar:AddItem(Item, index)
end

local ChatModule = require(GuiRoot.Modules.ChatSelector)

local function OnCoreGuiChanged(coreGuiType, coreGuiEnabled)
	local enabled = coreGuiEnabled and topbarEnabled
	local vrEnabled = InputService.VREnabled
	if coreGuiType == Enum.CoreGuiType.PlayerList or coreGuiType == Enum.CoreGuiType.All then
		if leaderstatsMenuItem then
			if enabled and not vrEnabled then
				AddItemInOrder(RightMenubar, leaderstatsMenuItem, RIGHT_ITEM_ORDER)
			else
				RightMenubar:RemoveItem(leaderstatsMenuItem)
			end
		end
	end
	if coreGuiType == Enum.CoreGuiType.Health or coreGuiType == Enum.CoreGuiType.All then
		if nameAndHealthMenuItem then
			nameAndHealthMenuItem:SetHealthbarEnabled(enabled)
		end
	end
	if coreGuiType == Enum.CoreGuiType.Backpack or coreGuiType == Enum.CoreGuiType.All then
		if backpackIcon then
			if enabled and not vrEnabled then
				AddItemInOrder(LeftMenubar, backpackIcon, LEFT_ITEM_ORDER)
			else
				LeftMenubar:RemoveItem(backpackIcon)
			end
		end
	end
	if coreGuiType == Enum.CoreGuiType.Chat or coreGuiType == Enum.CoreGuiType.All then
		enabled = enabled and (not ChatModule:IsDisabled())
		local ChatSelector = require(GuiRoot.Modules.ChatSelector)
		local showTopbarChatIcon = enabled
		local showThree3DChatIcon = coreGuiEnabled and InputService.VREnabled and (Player.ChatMode == Enum.ChatMode.TextAndMenu or RunService:IsStudio())

		if showThree3DChatIcon then
			if chatIcon3D then
				AddItemInOrder(Menubar3D, chatIcon3D, ITEM_ORDER_3D)
			end
		else
			if chatIcon3D then
				Menubar3D:RemoveItem(chatIcon3D)
			end
		end
		if showTopbarChatIcon then
			if Util.IsTouchDevice() or ChatModule:IsBubbleChatOnly() then
				if chatIcon and canChat then
					AddItemInOrder(LeftMenubar, chatIcon, LEFT_ITEM_ORDER)
				end
			else
				if chatIcon then
					AddItemInOrder(LeftMenubar, chatIcon, LEFT_ITEM_ORDER)
				end
			end
			if mobileShowChatIcon and ChatModule:ClassicChatEnabled() then
				AddItemInOrder(LeftMenubar, mobileShowChatIcon, LEFT_ITEM_ORDER)
			end
		else
			if chatIcon then
				LeftMenubar:RemoveItem(chatIcon)
			end
			if mobileShowChatIcon then
				LeftMenubar:RemoveItem(mobileShowChatIcon)
			end
		end
	end

	if nameAndHealthMenuItem then
		local playerListOn = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		local healthbarOn = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health)
		-- Left-align the player's name if either playerlist or healthbar is shown
		nameAndHealthMenuItem:SetNameVisible(topbarEnabled)
	end
end

local function OnChatModuleDisabled()
	if chatIcon3D then
		Menubar3D:RemoveItem(chatIcon3D)
	end
	if chatIcon then
		LeftMenubar:RemoveItem(chatIcon)
	end
	if mobileShowChatIcon then
		LeftMenubar:RemoveItem(mobileShowChatIcon)
	end
end

if ChatModule.ChatDisabled then
	ChatModule.ChatDisabled:connect(function()
		OnChatModuleDisabled()
	end)
end

TopBar:UpdateBackgroundTransparency()

LeftMenubar:SetDock(TopBar:GetInstance())
RightMenubar:SetDock(TopBar:GetInstance())
Menubar3D:SetDock(TopbarPanel3D:GetGUI())

if not isTenFootInterface then
	Util.SetGUIInsetBounds(0, TopbarConstants.TOPBAR_THICKNESS, 0, 0)
end

if settingsIcon then
	AddItemInOrder(LeftMenubar, settingsIcon, LEFT_ITEM_ORDER)
end
if noTopBarAccountType and not isTenFootInterface then
	AddItemInOrder(LeftMenubar, noTopBarAccountType, LEFT_ITEM_ORDER)
end
if nameAndHealthMenuItem and isTopbarEnabled() and not isTenFootInterface then
	AddItemInOrder(RightMenubar, nameAndHealthMenuItem, RIGHT_ITEM_ORDER)
end

if userGuiIcon3D then
	local function FindScreenGuiChild(object)
		for _, child in pairs(object:GetChildren()) do
			if child:IsA('ScreenGui') then
				return child
			end
		end
	end

	local function onPlayerGuiAdded(playerGui)
		playerGui.ChildAdded:connect(function(child)
			if child:IsA('ScreenGui') and FindScreenGuiChild(playerGui) then
				AddItemInOrder(Menubar3D, userGuiIcon3D, ITEM_ORDER_3D)
			end
		end)
		playerGui.ChildRemoved:connect(function(child)
			if child:IsA('ScreenGui') and not FindScreenGuiChild(playerGui) then
				Menubar3D:RemoveItem(userGuiIcon3D)
			end
		end)
		if FindScreenGuiChild(playerGui) then
			AddItemInOrder(Menubar3D, userGuiIcon3D, ITEM_ORDER_3D)
		end
	end
	Player.ChildAdded:connect(function(child)
		if child:IsA('PlayerGui') then
			onPlayerGuiAdded(child)
		end
	end)
	if Player:FindFirstChild('PlayerGui') then
		onPlayerGuiAdded(Player:FindFirstChild('PlayerGui'))
	end
end

local function lookMenuEnabledChanged()
	if InputService.VREnabled then
		TopbarPanel3D:SetVisible(lookMenuEnabled)
	end
end

local function EnableVR()
	local VRHub = require(GuiRoot.Modules.VR.VRHub)

	TopbarPanel3D:SetType(Panel3D.Type.Fixed)

	function TopbarPanel3D:PreUpdate(cameraCF, cameraRenderCF, userHeadCF, lookRay)
		if self.transparency == 1 then
			local headForwardCF = Panel3D.GetHeadLookXZ()
			local panelOriginCF = CFrame.new(userHeadCF.p) * headForwardCF
			self.localCF = panelOriginCF * TopbarConstants.TOPBAR_LOCAL_CFRAME_3D
		end
	end

	function TopbarPanel3D:OnUpdate()
		for _, item in pairs(Menubar3D:GetItems()) do
			item:SetTransparency(self.transparency)
		end
	end

	VRHub.ModuleOpened.Event:connect(function(moduleName)
		if VRHub:KeepVRTopbarOpen() then
			TopbarPanel3D:SetCanFade(false)
			TopbarPanel3D:SetVisible(true)
		end
	end)
	VRHub.ModuleClosed.Event:connect(function(moduleName)
		if not VRHub:KeepVRTopbarOpen() then
			TopbarPanel3D:SetCanFade(true)
			lookMenuEnabledChanged()
		end
	end)


	menuChangedNotifier3D = menuChangedNotifier3D or CreateMenuChangedNotifier()

	LeftMenubar:RemoveItem(settingsIcon)
	AddItemInOrder(Menubar3D, settingsIcon3D, ITEM_ORDER_3D)
	AddItemInOrder(Menubar3D, recenterIcon3D, ITEM_ORDER_3D)
	if newNotificationPath then
		AddItemInOrder(Menubar3D, notificationsIcon3D, ITEM_ORDER_3D)
	end
end

local gameOptions = settings():FindFirstChild("Game Options")
if gameOptions and not isTenFootInterface then
	local success, result = pcall(function()
		gameOptions.VideoRecordingChangeRequest:connect(function(recording)
			if recording and isTopbarEnabled() then
				AddItemInOrder(LeftMenubar, stopRecordingIcon, LEFT_ITEM_ORDER)
			else
				LeftMenubar:RemoveItem(stopRecordingIcon)
			end
		end)
	end)
end

local function topbarEnabledChanged()
	if InputService.VREnabled then
		lookMenuEnabled = topbarEnabled
		lookMenuEnabledChanged()
		Util.SetGUIInsetBounds(0, 0, 0, 0)
	else
		lookMenuEnabled = false
		if not isTenFootInterface then
			Util.SetGUIInsetBounds(0, TopbarConstants.TOPBAR_THICKNESS, 0, 0)
		end
	end


	topbarEnabledChangedEvent:Fire(topbarEnabled)
	TopBar:UpdateBackgroundTransparency()
	for _, enumItem in pairs(Enum.CoreGuiType:GetEnumItems()) do
		-- The All enum will be false if any of the coreguis are false
		-- therefore by force updating it we are clobbering the previous sets
		if enumItem ~= Enum.CoreGuiType.All then
			OnCoreGuiChanged(enumItem, StarterGui:GetCoreGuiEnabled(enumItem))
		end
	end
end

local UISChanged;
local function OnVREnabled(prop)
	if prop == "VREnabled" then
		if InputService.VREnabled then
			EnableVR()
		else
			--TODO: finish making this work with toggling VR
			topbarEnabledChanged()
		end
	end
end
UISChanged = InputService.Changed:connect(OnVREnabled)

if enablePortraitMode then
	--Temporarily disable the leaderstats while in portrait mode.
	--Will come back to this when a new design is ready.
	local PlayerlistModule = require(GuiRoot.Modules.PlayerlistModule)
	local function onResized(viewportSize, isPortrait)
		if isPortrait then
			leaderstatsMenuItem:SetColumns({})
		else
			leaderstatsMenuItem:SetColumns(PlayerlistModule.GetStats())
		end
		RightMenubar:ArrangeItems()
	end
	Utility:OnResized(leaderstatsMenuItem, onResized)
end

topbarEnabledChanged() -- if it was set before this point, enable/disable it now
StarterGui:RegisterSetCore("TopbarEnabled", function(enabled)
	if type(enabled) == "boolean" then
		topbarEnabled = enabled
		topbarEnabledChanged()
	end
end)

spawn(function()
	local success, localUserCanChat = pcall(function()
		return ChatService:CanUserChatAsync(Player.UserId)
	end)
	canChat = RunService:IsStudio() or (success and localUserCanChat)
	if canChat == false then
		if Util.IsTouchDevice() or ChatModule:IsBubbleChatOnly() then
			if chatIcon then
				LeftMenubar:RemoveItem(chatIcon)
			end
			if ChatModule:IsBubbleChatOnly() and mobileShowChatIcon then
				LeftMenubar:RemoveItem(mobileShowChatIcon)
			end
		end
		ChatModule:SetVisible(false)
	end
end)

-- Hook-up coregui changing
StarterGui.CoreGuiChangedSignal:connect(OnCoreGuiChanged)
OnVREnabled("VREnabled")
