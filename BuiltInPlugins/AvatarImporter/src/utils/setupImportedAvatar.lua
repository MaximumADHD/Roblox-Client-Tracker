local root = script.Parent.Parent.Parent

-- imports
local FastFlags = require(root.src.FastFlags)
local Constants = require(root.src.Constants)
local Globals = require(root.src.Globals)

-- configurer
local configurer = nil
if FastFlags:isBundleConfigurationEnabled() then
	local CoreGui = game:GetService("CoreGui")
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "AvatarImporterConfigurer"
	screenGui.Parent = CoreGui

	local Configurer = require(root.src.configurer.Configurer)
	configurer = Configurer.new(screenGui)
	configurer:createButtons(Globals.plugin, Globals.toolbar)
end

-- services
local Workspace = game:GetService("Workspace")
local Selection = game:GetService("Selection")

local function setCameraFocusToFirstHit(maxRange)
	local camera = Workspace:FindFirstChild("Camera")
	if camera then
		local ray = Ray.new(camera.CFrame.p, camera.CFrame.lookVector * maxRange)
		local _, pos = Workspace:FindPartOnRay(ray)
		camera.Focus = CFrame.new(pos)
		return pos
	else
		-- default position if they did weird stuff
		return Vector3.new(0, 5.2, 0)
	end
end

local function setupHumanoidScaleValues(humanoid, avatarType)
	local scaleValuesToAdd = Constants.SCALE_VALUES_DEFAULTS[avatarType]
	if not scaleValuesToAdd then
		return
	end

	humanoid.AutomaticScalingEnabled = false
	for valueName, valueDefault in pairs(scaleValuesToAdd) do
		local value = humanoid:FindFirstChild(valueName)
		if not value then
			value = Instance.new("NumberValue")
			value.Name = valueName
			value.Value = valueDefault
			value.Parent = humanoid
		end
	end
	humanoid.AutomaticScalingEnabled = true
end

local function addFace(avatar)
	local head = avatar:FindFirstChild("Head")

	-- Only add face object if the Head doesn't have built in texture
	if head and head.TextureID == "" and
		(not FastFlags:isFacialAnimationBetaFeatureEnabled()
			or head:FindFirstChildWhichIsA("FaceControls") == nil) then
		local face = Instance.new("Decal")
		face.Name = "face"
		face.Texture = "rbxasset://textures/face.png"
		face.Parent = head
	end
end

local function setupAvatarScaleTypeValues(avatar, avatarType)
	local scaleType = Constants.TYPE_TO_SCALE[avatarType]
	if scaleType then
		for _, child in pairs(avatar:GetChildren()) do
			if child:IsA("MeshPart") then
				local value = Instance.new("StringValue")
				value.Name = "AvatarPartScaleType"
				value.Value = scaleType
				value.Parent = child
			end
		end
	end
end

local function setupImportedAvatar(avatar, avatarType)
	local humanoid = avatar:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		avatar:MoveTo(setCameraFocusToFirstHit(10))
		return
	end

	avatar.Name = "Imported" .. avatarType .. "Rig"

	addFace(avatar)
	setupAvatarScaleTypeValues(avatar, avatarType)
	setupHumanoidScaleValues(humanoid, avatarType)

	-- set HipHeight to something non-zero
	if avatarType == Constants.AVATAR_TYPE.CUSTOM then
		humanoid.HipHeight = 2
	end

	avatar:MoveTo(setCameraFocusToFirstHit(10))
	Selection:Set({ avatar })

	if configurer and (not game:GetFastFlag("FixImporterCustomConfigurer") or avatarType ~= Constants.AVATAR_TYPE.CUSTOM) then
		configurer:ConfigureImportedAvatar(avatar)
	end
end

return setupImportedAvatar
