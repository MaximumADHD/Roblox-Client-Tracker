--!nonstrict

-- Shared factory for the ability ImageButtons used by TouchAbilities and AbilitiesOverflowMenu.

local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserAbilitiesUserInterfaceD = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceD")
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)

local SELECTION_ACTIVATE_BINDING_NAME = "SelectionActivateBinding"

local UI_STATE_HIDDEN = 0
local UI_STATE_DISABLED = 1
local UI_STATE_ACTIVE = 3

local AbilityButton = {}

-- `owner` must expose parentUIFrame (Frame), enabled (boolean), enabledChangedEvent (BindableEvent).
-- `positioning` = { small/large = {size, insetX, insetY} }, insets from the top-right corner;
-- `topAligned` anchors insetY to the top edge instead of the bottom.
-- `showHiddenAsDisabled` draws a Hidden ability greyed out, as if Disabled, instead of hiding the button.
--
-- Returns a controller:
--   .instance                the ImageButton (e.g. for parenting the selection ring).
--   :Destroy()               destroys the button and disconnects its signals.
--   :SetSelectionPressed(b)  selection-nav hold(true)/release(false); fires through a binding that
--                            outlives the button, so it is safe to call after :Destroy().
function AbilityButton.create(owner, actionName, abilityConfig, action, positioning, topAligned, showHiddenAsDisabled)
	local buttonAssetId = "rbxassetid://136780077406114"
	local buttonPressedAssetId = "rbxassetid://76895455502876"
	local buttonInvalidAssetId = nil
	local buttonPressed = false
	local selectionPressed = false
	if abilityConfig.ButtonAssetId then
		buttonAssetId = abilityConfig.ButtonAssetId
	end
	if abilityConfig.ButtonPressedAssetId then
		buttonPressedAssetId = abilityConfig.ButtonPressedAssetId
	end
	if abilityConfig.ButtonInvalidAssetId then
		buttonInvalidAssetId = abilityConfig.ButtonInvalidAssetId
	end

	local button = Instance.new("ImageButton")
	button.Name = actionName .. "Button"
	button.Visible = false
	button.BackgroundTransparency = 1
	button.Image = buttonAssetId
	button.Parent = owner.parentUIFrame

	for _, child in action:GetChildren() do
		if string.find(child.Name, "Touch") and child:IsA("InputBinding") then
			child.UIButton = button
			break
		end
	end

	local function ResizeButton()
		local minAxis = math.min(owner.parentUIFrame.AbsoluteSize.x, owner.parentUIFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500

		local insetAndSize = isSmallScreen and positioning.small or positioning.large

		local buttonSize = insetAndSize[1]
		local insetX = insetAndSize[2]
		local insetY = insetAndSize[3]

		local buttonPositionFromCornerX = -insetX - buttonSize

		button.Size = UDim2.new(0, buttonSize, 0, buttonSize)

		if topAligned then
			button.Position = UDim2.new(1, buttonPositionFromCornerX, 0, insetY)
		else
			local buttonPositionFromCornerY = -insetY - buttonSize
			button.Position = UDim2.new(1, buttonPositionFromCornerX, 1, buttonPositionFromCornerY)
		end
	end

	ResizeButton()

	local connections = {}
	table.insert(connections, owner.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeButton))

	local function UpdateButtonState()
		if button.Parent == nil then
			return
		end
		if FFlagUserAbilitiesUserInterfaceD then
			local uiState = avatarAbilitiesInterface:GetAbilityUIState(actionName)
			local held = buttonPressed or selectionPressed
			local hidden = uiState == UI_STATE_HIDDEN
			button.Visible = owner.enabled and action.Enabled and (showHiddenAsDisabled or not hidden)

			if button.Visible then
				if uiState == UI_STATE_DISABLED or hidden then
					if buttonInvalidAssetId then
						button.Image = buttonInvalidAssetId
						button.ImageTransparency = 0
					else
						button.Image = buttonAssetId
						button.ImageTransparency = 0.6
					end
				elseif uiState == UI_STATE_ACTIVE or held then
					button.Image = buttonPressedAssetId
					button.ImageTransparency = 0
				else -- UI_STATE_NORMAL
					button.Image = buttonAssetId
					button.ImageTransparency = 0
				end
			end
		else
			local valid = avatarAbilitiesInterface:GetAbilityValid(actionName)
			local active = avatarAbilitiesInterface:GetAbilityActive(actionName)
			local held = buttonPressed or selectionPressed
			button.Visible = owner.enabled and action.Enabled

			if button.Visible then
				if active or (held and valid) then
					button.Image = buttonPressedAssetId
					button.ImageTransparency = 0
				elseif valid then
					button.Image = buttonAssetId
					button.ImageTransparency = 0
				else
					if buttonInvalidAssetId then
						button.Image = buttonInvalidAssetId
						button.ImageTransparency = 0
					else
						button.Image = buttonAssetId
						button.ImageTransparency = 0.6
					end
				end
			end
		end
	end
	UpdateButtonState()

	local function FireSelectionActivation(value)
		local binding = action:FindFirstChild(SELECTION_ACTIVATE_BINDING_NAME)
		if not binding then
			binding = Instance.new("InputBinding")
			binding.Name = SELECTION_ACTIVATE_BINDING_NAME
			binding.Type = Enum.InputBindingType.Scriptable
			binding.Parent = action
		end
		binding:Fire(value)
	end

	button.MouseButton1Down:Connect(function()
		buttonPressed = true
		UpdateButtonState()
	end)

	button.MouseButton1Up:Connect(function()
		buttonPressed = false
		UpdateButtonState()
	end)

	button.MouseLeave:Connect(function()
		buttonPressed = false
		UpdateButtonState()
	end)

	if FFlagUserAbilitiesUserInterfaceD then
		table.insert(
			connections,
			avatarAbilitiesInterface:GetAbilityUIStateChangedSignal(actionName):Connect(UpdateButtonState)
		)
	else
		table.insert(
			connections,
			avatarAbilitiesInterface:GetAbilityActiveChangedSignal(actionName):Connect(UpdateButtonState)
		)
		table.insert(
			connections,
			avatarAbilitiesInterface:GetAbilityValidChangedSignal(actionName):Connect(UpdateButtonState)
		)
	end
	table.insert(connections, owner.enabledChangedEvent.Event:Connect(UpdateButtonState))
	table.insert(connections, action:GetPropertyChangedSignal("Enabled"):Connect(UpdateButtonState))

	button.Destroying:Connect(function()
		for _, connection in connections do
			connection:Disconnect()
		end
		table.clear(connections)
	end)

	local controller = {
		instance = button,
	}

	function controller:Destroy()
		button:Destroy()
	end

	function controller:SetSelectionPressed(pressed)
		if selectionPressed == pressed then
			return
		end
		selectionPressed = pressed
		FireSelectionActivation(pressed)
		UpdateButtonState()
	end

	return controller
end

return AbilityButton
