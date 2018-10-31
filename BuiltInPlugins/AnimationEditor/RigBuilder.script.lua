--Startup
local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	"Rig Builder", -- The text next to the icon. Leave this blank if the icon is sufficient.
	"Insert rigs to animate", -- hover text
	"http://www.roblox.com/asset/?id=620849303" -- The icon file's name
)

--Environment
local env = script ~= nil and script or game.Workspace.Plugin["RigBuilder"] --For easy rapid testing
local rigModule = script ~= nil and require(script.Parent.RigCreator) or require(game.Workspace.Plugin.RigCreator:clone())

--Constants
local RIG_COLOR = BrickColor.new"Medium stone grey"

--Variables
local gui = nil
local open = false
local mode = "R15"
local options = {"Block Rig", "Mesh Rig", "Man Rig", "Woman Rig"}

--Functions
function insertRig(name)
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
		end
	end
	--Some housekeeping
	rig.Name = "Dummy"
	rig.HumanoidRootPart.Anchored = true
	rig.HumanoidRootPart.Transparency = 0.5
	--Color it
	for i, v in pairs(rig:GetChildren()) do
		if v:IsA("BasePart") then
			v.BrickColor = RIG_COLOR
		end
	end
	--Here we go!
	rig:MoveTo(getCameraLookat(10))
	game.Selection:Set({rig})
end

function openGui()
	gui = env.RigBuilder:clone()
	--Build options
	for i, v in pairs(options) do
		local btn = gui.Frame.ListTemplate:clone()
		btn.Visible = true
		btn.Text = v
		btn.Position = UDim2.new(0,0,0, (btn.Size.Y.Offset + 5) * (i-1))
		btn.Parent = gui.Frame.Options
		btn.MouseButton1Click:connect(function() insertRig(v) end)
	end
	--Slider
	local sl = gui.Frame.Slider
	sl.R15.MouseButton1Click:connect(function()
		sl.R15.BackgroundTransparency = 0
		sl.R6.BackgroundTransparency = 1
		sl.Slider:TweenPosition(UDim2.new(0,0,1,-3), "Out", "Quad", 0.15)
		mode = "R15"
	end)
	sl.R6.MouseButton1Click:connect(function()
		sl.R15.BackgroundTransparency = 1
		sl.R6.BackgroundTransparency = 0
		sl.Slider:TweenPosition(UDim2.new(0.5,0,1,-3), "Out", "Quad", 0.15)
		mode = "R6"
	end)
	gui.Frame.Close.MouseButton1Click:connect(closeGui)
	gui.Frame.Options.CanvasSize = UDim2.new(0,0,0, (gui.Frame.ListTemplate.Size.Y.Offset + 5) * (#options-1))
	gui.Parent = game.CoreGui
	open = true
	plugin:Activate(true)
	button:SetActive(true)
end

function closeGui()
	gui:Destroy()
	open = false
    plugin:Deactivate()
	button:SetActive(false)
end

function getCameraLookat(maxRange)
	if maxRange == nil then maxRange = 10 end
	local cam = game.Workspace:findFirstChild("Camera")
	if cam then
		local ray = Ray.new(cam.CFrame.p, cam.CFrame.lookVector * maxRange)
		local hit, pos = game.Workspace:FindPartOnRay(ray)
		cam.Focus = CFrame.new(pos)
		return pos
	else
		--Default position if they did weird stuff
		print("Unable to find default camera.")
		return Vector3.new(0,5.2,0)
	end
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
