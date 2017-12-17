--[[
		Filename: TenFootInterface.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Setups up some special UI for ROBLOX TV gaming
--]]
-------------- CONSTANTS --------------
local HEALTH_GREEN_COLOR = Color3.new(27/255, 252/255, 107/255)
local DISPLAY_POS_INIT_INSET = 0
local DISPLAY_ITEM_OFFSET = 4
local FORCE_TEN_FOOT_INTERFACE = false

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

------------------ VARIABLES --------------------
local tenFootInterfaceEnabled = false
do
	local platform = UserInputService:GetPlatform()

	tenFootInterfaceEnabled = (platform == Enum.Platform.XBoxOne or platform == Enum.Platform.WiiU or platform == Enum.Platform.PS4 or
		platform == Enum.Platform.AndroidTV or platform == Enum.Platform.XBox360 or platform == Enum.Platform.PS3 or
		platform == Enum.Platform.Ouya or platform == Enum.Platform.SteamOS)
end

if FORCE_TEN_FOOT_INTERFACE then
	tenFootInterfaceEnabled = true
end

local Util = {}
do
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
end

local function CreateModule()
	local this = {}
	local nextObjectDisplayYPos = DISPLAY_POS_INIT_INSET
	local displayStack = {}
	local displayStackChanged = Instance.new("BindableEvent")
	local healthContainerPropertyChanged = Instance.new("BindableEvent")

	-- setup base gui
	local function createContainer()
		if not this.Container then
			this.Container = Util.Create'ImageButton'
			{
				Name = "TopRightContainer";
				Size = UDim2.new(0, 350, 0, 100);
				Position = UDim2.new(1,-415,0,10);
				AutoButtonColor = false;
				Image = "";
				Active = false;
				BackgroundTransparency = 1;
				Parent = RobloxGui;
			};
		end
	end

	function removeFromDisplayStack(displayObject)
		local moveUpFromHere = nil

		for i = 1, #displayStack do
			if displayStack[i] == displayObject then
				moveUpFromHere = i + 1
				break
			end
		end

		local prevObject = displayObject
		for i = moveUpFromHere, #displayStack do
			local objectToMoveUp = displayStack[i]
			objectToMoveUp.Position = UDim2.new(objectToMoveUp.Position.X.Scale, objectToMoveUp.Position.X.Offset,
												objectToMoveUp.Position.Y.Scale, prevObject.AbsolutePosition.Y)
			prevObject = objectToMoveUp
		end
		displayStackChanged:Fire()
	end

	function addBackToDisplayStack(displayObject)
		local moveDownFromHere = 0

		for i = 1, #displayStack do
			if displayStack[i] == displayObject then
				moveDownFromHere = i + 1
				break
			end
		end

		local prevObject = displayObject
		for i = moveDownFromHere, #displayStack do
			local objectToMoveDown = displayStack[i]
			local nextDisplayPos = prevObject.AbsolutePosition.Y + prevObject.AbsoluteSize.Y + DISPLAY_ITEM_OFFSET
			objectToMoveDown.Position = UDim2.new(objectToMoveDown.Position.X.Scale, objectToMoveDown.Position.X.Offset,
												objectToMoveDown.Position.Y.Scale, nextDisplayPos)
			prevObject = objectToMoveDown
		end
		displayStackChanged:Fire()
	end

	function addToDisplayStack(displayObject)
		local lastDisplayed = nil
		if #displayStack > 0 then
			lastDisplayed = displayStack[#displayStack]
		end
		displayStack[#displayStack + 1] = displayObject

		local nextDisplayPos = DISPLAY_POS_INIT_INSET
		if lastDisplayed then
			nextDisplayPos = lastDisplayed.AbsolutePosition.Y + lastDisplayed.AbsoluteSize.Y + DISPLAY_ITEM_OFFSET
		end

		displayObject.Position = UDim2.new(displayObject.Position.X.Scale, displayObject.Position.X.Offset,
											displayObject.Position.Y.Scale, nextDisplayPos)

		createContainer()
		displayObject.Parent = this.Container

		displayObject.Changed:connect(function(prop)
			if prop == "Visible" then
				if not displayObject.Visible then
					removeFromDisplayStack(displayObject)
				else
					addBackToDisplayStack(displayObject)
				end
			end
		end)
		displayStackChanged:Fire()
	end

	function this:CreateHealthBar()
		this.HealthContainer = Util.Create'Frame'{
			Name = "HealthContainer";
			Size = UDim2.new(1, -86, 0, 50);
			Position = UDim2.new(0, 92, 0, 0);
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(0,0,0);
			BackgroundTransparency = 0.5;
		};

		local healthFillHolder = Util.Create'Frame'{
			Name = "HealthFillHolder";
			Size = UDim2.new(1, -10, 1, -10);
			Position = UDim2.new(0, 5, 0, 5);
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = 1.0;
			Parent = this.HealthContainer;
		};

		local healthFill = Util.Create'Frame'{
			Name = "HealthFill";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 0.0;
			BackgroundColor3 = HEALTH_GREEN_COLOR;
			Parent = healthFillHolder;
		};

		local healthText = Util.Create'TextLabel'{
			Name = "HealthText";
			Size = UDim2.new(0, 98, 0, 50);
			Position = UDim2.new(0, -100, 0, 0);
			BackgroundTransparency = 0.5;
			BackgroundColor3 = Color3.new(0,0,0);
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size36;
			Text = "Health";
			TextColor3 = Color3.new(1,1,1);
			BorderSizePixel = 0;
			Parent = this.HealthContainer;
		};

		local username = Util.Create'TextLabel'{
			Visible = false
		}

		local accountType = Util.Create'TextLabel'{
			Visible = false
		}

		addToDisplayStack(this.HealthContainer)
		createContainer()

		this.HealthContainer.Changed:connect(function()
			healthContainerPropertyChanged:Fire()
		end)

		return this.Container, username, this.HealthContainer, healthFill, accountType
	end

	function this:CreateAccountType(accountTypeTextShort)
		this.AccountTypeContainer = Util.Create'Frame'{
			Name = "AccountTypeContainer";
			Size = UDim2.new(0, 50, 0, 50);
			Position = UDim2.new(1, -55, 0, 10);
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(0,0,0);
			BackgroundTransparency = 0.5;
			Parent = RobloxGui;
		};

		local accountTypeTextLabel = Util.Create'TextLabel'{
			Name = "AccountTypeText";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			BackgroundColor3 = Color3.new(0,0,0);
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size36;
			Text = accountTypeTextShort;
			TextColor3 = Color3.new(1,1,1);
			BorderSizePixel = 0;
			Parent = this.AccountTypeContainer;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
		};
	end

	function this:SetupTopStat()
		local topStatEnabled = true
		local displayedStat = nil
		local displayedStatChangedCon = nil
		local displayedStatParentedCon = nil
		local leaderstatsChildAddedCon = nil
		local tenFootInterfaceStat = nil

		local function makeTenFootInterfaceStat()
			if tenFootInterfaceStat then return end

			tenFootInterfaceStat = Util.Create'Frame'{
				Name = "OneStatFrame";
				Size = UDim2.new(1, 0, 0, 36);
				Position = UDim2.new(0, 0, 0, 0);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
			};
			local statName = Util.Create'TextLabel'{
				Name = "StatName";
				Size = UDim2.new(0.5,0,0,36);
				BackgroundTransparency = 1;
				Font = Enum.Font.SourceSans;
				FontSize = Enum.FontSize.Size36;
				TextStrokeColor3 = Color3.new(104/255, 104/255, 104/255);
				TextStrokeTransparency = 0;
				Text = " StatName:";
				TextColor3 = Color3.new(1,1,1);
				TextXAlignment = Enum.TextXAlignment.Left;
				BorderSizePixel = 0;
				ClipsDescendants = true;
				Parent = tenFootInterfaceStat;
			};
			local statValue = statName:clone()
			statValue.Position = UDim2.new(0.5,0,0,0)
			statValue.Name = "StatValue"
			statValue.Text = "123,643,231"
			statValue.TextXAlignment = Enum.TextXAlignment.Right
			statValue.Parent = tenFootInterfaceStat

			addToDisplayStack(tenFootInterfaceStat)
		end

		local function setDisplayedStat(newStat)
			if displayedStatChangedCon then displayedStatChangedCon:disconnect() displayedStatChangedCon = nil end
			if displayedStatParentedCon then displayedStatParentedCon:disconnect() displayedStatParentedCon = nil end

			displayedStat = newStat

			if displayedStat then
				makeTenFootInterfaceStat()
				updateTenFootStat(displayedStat)
				displayedStatParentedCon = displayedStat.AncestryChanged:connect(function() updateTenFootStat(displayedStat, "Parent") end)
				displayedStatChangedCon = displayedStat.Changed:connect(function(prop) updateTenFootStat(displayedStat, prop) end)
			end
		end

		function updateTenFootStat(statObj, property)
			if property and property == "Parent" then
				tenFootInterfaceStat.StatName.Text = ""
				tenFootInterfaceStat.StatValue.Text = ""
				setDisplayedStat(nil)

				tenFootInterfaceChanged()
			else
				if topStatEnabled then
					tenFootInterfaceStat.StatName.Text = " " .. tostring(statObj.Name) .. ":"
					tenFootInterfaceStat.StatValue.Text = tostring(statObj.Value)
				else
					tenFootInterfaceStat.StatName.Text = ""
					tenFootInterfaceStat.StatValue.Text = ""
				end
			end
		end

		local function isValidStat(obj)
			return obj:IsA('StringValue') or obj:IsA('IntValue') or obj:IsA('BoolValue') or obj:IsA('NumberValue') or
				obj:IsA('DoubleConstrainedValue') or obj:IsA('IntConstrainedValue')
		end

		local function tenFootInterfaceNewStat( newStat )
			if not displayedStat and isValidStat(newStat) then
				setDisplayedStat(newStat)
			end
		end

		local localPlayer = Players.LocalPlayer
		while not localPlayer do
			Players.PlayerAdded:wait()
			localPlayer = Players.LocalPlayer
		end

		function tenFootInterfaceChanged()
			local leaderstats = localPlayer:FindFirstChild('leaderstats')
			if leaderstats then
				local statChildren = leaderstats:GetChildren()
				for i = 1, #statChildren do
					tenFootInterfaceNewStat(statChildren[i])
				end
				if leaderstatsChildAddedCon then leaderstatsChildAddedCon:disconnect() end
				leaderstatsChildAddedCon = leaderstats.ChildAdded:connect(function(newStat)
					tenFootInterfaceNewStat(newStat)
				end)
			end
		end

		local leaderstats = localPlayer:FindFirstChild('leaderstats')
		if leaderstats then
			tenFootInterfaceChanged()
		else
			localPlayer.ChildAdded:connect(tenFootInterfaceChanged)
		end

		--Top Stat Public API

		local topStatApiTable = {}

		function topStatApiTable:SetTopStatEnabled(value)
			topStatEnabled = value
			if displayedStat then
				updateTenFootStat(displayedStat, "")
			end
		end

		return topStatApiTable
	end

	return this
end


-- Public API

local moduleApiTable = {}

	local TenFootInterfaceModule = CreateModule()

	function moduleApiTable:IsEnabled()
		return tenFootInterfaceEnabled
	end

	function moduleApiTable:CreateHealthBar()
		return TenFootInterfaceModule:CreateHealthBar()
	end

	function moduleApiTable:CreateAccountType(accountTypeText)
		return TenFootInterfaceModule:CreateAccountType(accountTypeText)
	end

	function moduleApiTable:SetupTopStat()
		return TenFootInterfaceModule:SetupTopStat()
	end

return moduleApiTable
