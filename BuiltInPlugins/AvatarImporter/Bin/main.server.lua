-- Avatar Importer

-- services
local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")
local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent
local Src = Plugin.src

-- load fast flags and early out
local FastFlags = require(Src.FastFlags)
if not FastFlags:isEnableAvatarImporterOn() then
	return
end

if FastFlags:isRoactEnabled() then
	local Globals = require(Src.Globals)
	Globals.plugin = plugin
	require(script.Parent.main2)
	return
end

-- imports
local Assets = require(Src.Assets)
local AvatarPrompt = require(Src.class.AvatarPrompt)
local ErrorPrompt = require(Src.class.ErrorPrompt)
local LoadingPrompt = require(Src.class.LoadingPrompt)

-- globals
local Globals = require(Src.Globals)
Globals.plugin = plugin
Globals.requirementsUrl = "articles/using-avatar-importer"

-- constants
local TOOLBAR_NAME = "Avatar"
local BUTTON_NAME = "Avatar Importer"
local BUTTON_TOOLTIP = "Import an Avatar with a .fbx file"
local ERROR_NO_FILE = "No FBX file selected"

-- shared gui objects
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AvatarImporter"
screenGui.Enabled = true
local existing = CoreGui:FindFirstChild("AvatarImporter")
if existing then
	existing:Destroy()
end
screenGui.Parent = CoreGui

-- plugin objects
local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
local importAvatarButton = toolbar:CreateButton(BUTTON_NAME, BUTTON_TOOLTIP, Assets.BUTTON_ICON)
importAvatarButton.ClickableWhenViewportHidden = true

-- class instances
local avatarPrompt = AvatarPrompt.new(screenGui)
local errorPrompt = ErrorPrompt.new(screenGui)
local loadingPrompt = LoadingPrompt.new(screenGui)
local configurer = nil
if FastFlags:isBundleConfigurationEnabled() then
	local Configurer = require(Src.configurer.Configurer)
	configurer = Configurer.new(screenGui)
	configurer:createButtons(plugin, toolbar)
end

-- utility functions
local function getLinesFromStr(str)
	local results = {}
	for match in string.gmatch(str, "[^\n]+") do
		results[#results + 1] = match
	end
	return results
end

local function getCameraLookAt(maxRange)
	local camera = Workspace:FindFirstChild("Camera")
	if camera then
		local ray = Ray.new(camera.CFrame.p, camera.CFrame.lookVector * maxRange)
		local _, pos = Workspace:FindPartOnRay(ray)
		camera.Focus = CFrame.new(pos)
		return pos
	else
		--Default position if they did weird stuff
		print("Unable to find default camera.")
		return Vector3.new(0, 5.2, 0)
	end
end

local function setupAvatarScaleTypeValues(avatar, avatarType)
	for _, child in pairs(avatar:GetChildren()) do
		if child:IsA("MeshPart") then
			local value = Instance.new("StringValue")
			value.Name = "AvatarPartScaleType"
			if avatarType == "Rthro" then
				value.Value = "ProportionsNormal"
			elseif avatarType == "RthroNarrow" then
				value.Value = "ProportionsSlender"
			elseif avatarType == "R15" then
				value.Value = "Classic"
			end
			value.Parent = child
		end
	end
end

local ScaleValuesDefaults = {
	R15 = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 0,
		BodyProportionScale = 0
	},
	Rthro = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 1,
		BodyProportionScale = 0
	},
	RthroNarrow = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 1,
		BodyProportionScale = 1
	}
}

local function setupHumanoidScaleValues(avatar, avatarType)
	local humanoid = avatar:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	local scaleValuesToAdd = ScaleValuesDefaults[avatarType]
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
	if head and head.TextureID == "" then
		local face = Instance.new("Decal")
		face.Name = "face"
		face.Texture = "rbxasset://textures/face.png"
		face.Parent = head
	end
end

local function setupImportedAvatar(avatar, avatarType)
	avatar.Name = "Imported" .. avatarType .. "Rig"
	addFace(avatar)
	setupAvatarScaleTypeValues(avatar, avatarType)
	setupHumanoidScaleValues(avatar, avatarType)
	avatar:MoveTo(getCameraLookAt(10))
	Selection:Set({ avatar })

	if configurer then
		configurer:ConfigureImportedAvatar(avatar)
	end
	print("Avatar Imported:", avatar:GetFullName(), avatarType)
end

-- ui state management
local connections = {}
local isOpen = false

-- ui state functions
local function clearConnections()
	for _, connection in pairs(connections) do
		connection:Disconnect()
	end
	connections = {}
end

local function closeUI()
	if not isOpen then
		return
	end
	isOpen = false
	clearConnections()
	avatarPrompt:setEnabled(false)
	errorPrompt:setEnabled(false)
	loadingPrompt:setEnabled(false)
	plugin:Deactivate()
	importAvatarButton:SetActive(false)
end

local function openUI()
	if isOpen then
		return
	end
	isOpen = true
	clearConnections()
	avatarPrompt:setEnabled(true)

	table.insert(connections, avatarPrompt.selected.Event:Connect(function(avatarType)
		avatarPrompt:setEnabled(false)
		loadingPrompt:setEnabled(true)

		local isR15 = avatarType ~= "Custom"
		local success, avatarOrError = pcall(function()
			return plugin:ImportFbxRig(isR15)
		end)

		loadingPrompt:setEnabled(false)

		if not success then
			if avatarOrError == ERROR_NO_FILE then
				closeUI()
				openUI()
			else
				local fileName = "<filename>"
				local requirements = avatarOrError
				local errors = getLinesFromStr(avatarOrError)
				if errors[1] == "FBX Import Error(s):" and #errors > 2 then
					fileName = errors[2]
					for i = 3, #errors do
						errors[i] = "- " .. errors[i]
					end
					requirements = table.concat(errors, "\n", 3)
				end
				errorPrompt:setRequirements(requirements)
				errorPrompt:setName(fileName)
				errorPrompt:setEnabled(true)
				table.insert(connections, errorPrompt.closed.Event:Connect(closeUI))
				table.insert(connections, errorPrompt.retried.Event:Connect(function()
					-- return to avatar menu
					closeUI()
					openUI()
				end))
			end
		else
			setupImportedAvatar(avatarOrError, avatarType)
			closeUI()
		end

	end))

	table.insert(connections, avatarPrompt.closed.Event:Connect(closeUI))
end

-- main event hook
importAvatarButton.Click:Connect(function()
	if not isOpen then
		openUI()
	else
		closeUI()
	end
end)
