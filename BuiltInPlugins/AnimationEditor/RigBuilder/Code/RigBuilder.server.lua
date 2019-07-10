--Startup
local InsertService = game:GetService("InsertService")

local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	"Rig Builder", -- The text next to the icon. Leave this blank if the icon is sufficient.
	"Insert rigs to animate", -- hover text
	settings():GetFFlag("StudioMoveWebAssetsToContent") and "rbxasset://textures/AnimationEditor/rig_builder_32x32.png" or "http://www.roblox.com/asset/?id=620849303" -- The icon file's name
)

--Environment
local GUIsFolder = InsertService:LoadLocalAsset("rbxasset://models/RigBuilder/RigBuilderGUI.rbxm")
local rigModule = require(script.Parent.RigCreator)

--Constants
local RIG_COLOR = BrickColor.new("Medium stone grey")

--Variables
local gui = nil
local open = false
local mode = "R15"
local options = {"Block Rig", "Mesh Rig", "Man Rig", "Woman Rig"}
local r15OnlyOptions = {"Anthro Normal", "Anthro Slender"}

--Functions
local function getCameraLookat(maxRange)
	if maxRange == nil then maxRange = 10 end
	local cam = workspace.CurrentCamera
	if cam then
		local ray = Ray.new(cam.CFrame.p, cam.CFrame.lookVector * maxRange)
		local _, pos = workspace:FindPartOnRay(ray)
		cam.Focus = CFrame.new(pos)
		return pos
	else
		--Default position if they did weird stuff
		print("Unable to find default camera.")
		return Vector3.new(0, 5.2, 0)
	end
end

local function closeGui()
	gui:Destroy()
	open = false
    plugin:Deactivate()
	button:SetActive(false)
end

local function insertRig(name)
	closeGui()

	local rig
	if mode == "R6" then
		if name == "Block Rig" then
			rig = rigModule.CreateR6Rig()
		elseif name == "Mesh Rig" then
			rig = rigModule.CreateR6MeshRig()
		elseif name == "Man Rig" then
			rig = rigModule.CreateR6MeshBoyRig()
		elseif name == "Woman Rig" then
			rig = rigModule.CreateR6MeshGirlRig()
		end
	elseif mode == "R15" then
		if name == "Block Rig" then
			rig = rigModule.BuildR15Rig()
		elseif name == "Man Rig" then
			rig = rigModule.BuildR15Rig(86500185)
		elseif name == "Woman Rig" then
			rig = rigModule.BuildR15Rig(86499905)
		elseif name == "Mesh Rig" then
			rig = rigModule.BuildR15Rig(27112438)
		elseif name == "Anthro Normal" then
			rig = rigModule.BuildAnthroRig("AnthroNormal")
		elseif name == "Anthro Slender" then
			rig = rigModule.BuildAnthroRig("AnthroSlender")
		end
	end

	--Some housekeeping
	rig.Name = "Dummy"
	rig.HumanoidRootPart.Anchored = true

	--Color it
	for _, v in pairs(rig:GetChildren()) do
		if v:IsA("BasePart") then
			v.BrickColor = RIG_COLOR
		end
	end

	--Here we go!
	rig:SetPrimaryPartCFrame(CFrame.new(getCameraLookat(10)))

	game.Selection:Set({rig})
end

local function rebuildOptions(guiFrameSize, optionsFrameSize)
	gui.Frame.Options:ClearAllChildren()

	local function addOption(optionNumber, optionName)
		local btn = gui.Frame.ListTemplate:Clone()
		btn.Visible = true
		btn.Text = optionName
		btn.Position = UDim2.new(0, 0, 0, (btn.Size.Y.Offset + 5) * optionNumber)
		btn.Parent = gui.Frame.Options
		btn.MouseButton1Click:connect(function() insertRig(optionName) end)
	end

	local optionNumber = 0
	for _, v in pairs(options) do
		addOption(optionNumber, v)
		optionNumber = optionNumber + 1
	end

	if mode == "R15" then
		for _, v in pairs(r15OnlyOptions) do
			addOption(optionNumber, v)
			optionNumber = optionNumber + 1
		end

		local additionalY = #r15OnlyOptions * (gui.Frame.ListTemplate.Size.Y.Offset + 5)
		gui.Frame.Size = guiFrameSize + UDim2.new(0, 0, 0, additionalY)
		gui.Frame.Options.Size = optionsFrameSize + UDim2.new(0, 0, 0, additionalY)
	else
		gui.Frame.Size = guiFrameSize
		gui.Frame.Options.Size = optionsFrameSize
	end
end

local function openGui()
	gui = GUIsFolder.RigBuilder:clone()

	local guiFrameSize = gui.Frame.Size
	local optionsFrameSize = gui.Frame.Options.Size

	rebuildOptions(guiFrameSize, optionsFrameSize)

	--Slider
	local sl = gui.Frame.Slider
	sl.R15.MouseButton1Click:connect(function()
		sl.R15.BackgroundTransparency = 0
		sl.R6.BackgroundTransparency = 1
		sl.Slider:TweenPosition(UDim2.new(0, 0, 1, -3), "Out", "Quad", 0.15)
		mode = "R15"
		rebuildOptions(gui, guiFrameSize, optionsFrameSize)
	end)
	sl.R6.MouseButton1Click:connect(function()
		sl.R15.BackgroundTransparency = 1
		sl.R6.BackgroundTransparency = 0
		sl.Slider:TweenPosition(UDim2.new(0.5, 0, 1, -3), "Out", "Quad", 0.15)
		mode = "R6"
		rebuildOptions(gui, guiFrameSize, optionsFrameSize)
	end)
	gui.Frame.Close.MouseButton1Click:connect(closeGui)
	gui.Frame.Options.CanvasSize = UDim2.new(0, 0, 0, (gui.Frame.ListTemplate.Size.Y.Offset + 5) * (#options-1))
	gui.Parent = game.CoreGui
	open = true
	plugin:Activate(true)
	button:SetActive(true)
end

--Code
button.Click:connect(function()
	mode = "R15"
	if not open then
		openGui()
	else
		closeGui()
	end
end)
