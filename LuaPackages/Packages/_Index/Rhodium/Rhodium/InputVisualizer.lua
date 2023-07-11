--!strict
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")

local InputVisualizer = {}
InputVisualizer.__index = InputVisualizer

function InputVisualizer.new()
	local self = {}

	local state, playerGui: BasePlayerGui = pcall(function()
		return CoreGui.Parent.CoreGui
	end)

	if state == false then
		repeat
			task.wait()
		until Players.LocalPlayer

		local LocalPlayer = Players.LocalPlayer :: Player

		playerGui = LocalPlayer:WaitForChild("PlayerGui") :: PlayerGui
	end

	local GuiName = "InputVisualizer"
	local guiRoot = playerGui:FindFirstChild(GuiName)
	if not guiRoot then
		-- FIXME Luau: Need to create a new variable instead of assigning
		-- `guiRoot = Instance.new("ScreenGui")`
		local newGuiRoot = Instance.new("ScreenGui")
		newGuiRoot.Name = GuiName
		newGuiRoot.DisplayOrder = 1000000
		newGuiRoot.Parent = playerGui

		guiRoot = newGuiRoot
	end

	self.guiRoot = guiRoot

	setmetatable(self, InputVisualizer)
	return self
end

function InputVisualizer:onInputBegan(input: InputObject)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		self:click(Vector2.new(input.Position.X, input.Position.Y))
	end
end

function InputVisualizer:click(vec2: Vector2, pluginGui: PluginGui?)
	if self.handler == nil then
		return
	end
	local delay = 0.5
	local image = nil
	if image == nil then
		image = Instance.new("ImageLabel")
		image.Image = "rbxassetid://1549893588"
		image.BackgroundTransparency = 1
		image.Parent = if pluginGui then pluginGui else self.guiRoot
		image.Size = UDim2.new(0, 20, 0, 20)
		image.Name = "MouseClick"
		image.ZIndex = 10
	end

	image.Visible = true
	image.Position = UDim2.new(0, vec2.X - image.Size.X.Offset / 2, 0, vec2.Y - image.Size.Y.Offset / 2)
	image.ImageTransparency = 0
	local goal = { ImageTransparency = 1 }
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false)
	local tween = TweenService:Create(image, tweenInfo, goal)
	tween:Play()
	Debris:AddItem(image, delay)
end

function InputVisualizer:enable()
	self.handler = UserInputService.InputBegan:Connect(function(input, _gameProcessed)
		self:onInputBegan(input)
	end)
end

function InputVisualizer:disable()
	local handler: RBXScriptConnection? = self.handler
	if handler then
		handler:Disconnect()
		self.handler = nil
	end
end

return InputVisualizer
