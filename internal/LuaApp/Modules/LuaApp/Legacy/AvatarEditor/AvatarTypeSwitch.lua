local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local ToggleAvatarType = require(Modules.LuaApp.Actions.ToggleAvatarType)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local Tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

return function(AvatarTypeFrame)
	local avatarTypeButton = AvatarTypeFrame.ButtonSoak
	local toggleLabel = AvatarTypeFrame.Switch
	local r6Label = AvatarTypeFrame.R6Label
	local r15Label = AvatarTypeFrame.R15Label

	AvatarTypeFrame.Position = LayoutInfo.AvatarTypeSwitchInitialPosition
	r6Label.TextSize = LayoutInfo.AvatarTypeSwitchTextSize
	r15Label.TextSize = LayoutInfo.AvatarTypeSwitchTextSize

	-- not sure if this will need to be cleaned up, will depend on what we do when we get multiple apps hooked up together
	-- but for now, this toggle is always on screen so no need to clean up right now
	local isInitialized = false

	local function updateAvatarType(avatarType)
		if avatarType == "R6" then
			r6Label.TextColor3 = LayoutInfo.AvatarTypeSwitchOnColor
			r15Label.TextColor3 = LayoutInfo.AvatarTypeSwitchOffColor
		else
			r6Label.TextColor3 = LayoutInfo.AvatarTypeSwitchOffColor
			r15Label.TextColor3 = LayoutInfo.AvatarTypeSwitchOnColor
		end

		local positionGoal = avatarType == "R6" and UDim2.new(0, 2, 0, 2) or UDim2.new(1, -32, 0, 2)

		-- don't tween when we first set this up
		if not isInitialized then
			isInitialized = true
			toggleLabel.Position = positionGoal
			return
		end

		local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
		local tweenGoals = {
			Position = positionGoal
		}
		Tween(toggleLabel, tweenInfo, tweenGoals)
	end

	local function updateOnFullViewChanged(isFullView)
		local finalPosition = isFullView and
			LayoutInfo.AvatarTypeSwitchPositionFullView or
			LayoutInfo.AvatarTypeSwitchPosition

		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

		local tweenGoals = {
			Position = finalPosition
		}
		Tween(AvatarTypeFrame, tweenInfo, tweenGoals)
	end

	AppState.Store.Changed:Connect(function(newState, oldState)
		if newState.Character.AvatarType ~= oldState.Character.AvatarType then
			updateAvatarType(newState.Character.AvatarType)
		elseif newState.FullView ~= oldState.FullView then
			updateOnFullViewChanged(newState.FullView)
		end
	end)

	local function onAvatarTypeClicked()
		AppState.Store:Dispatch(ToggleAvatarType())
	end

	avatarTypeButton.MouseButton1Click:connect(onAvatarTypeClicked)
end
