local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local HttpDebug = require(script.Parent.HttpDebug)
local ActionDebug = require(script.Parent.ActionDebug)

local DebugManager = {
	connections = {},
	screenGui = nil,
	container = nil,
	root = nil,

	http = nil,
	action = nil,

	running = false,
	open = false
}

function DebugManager:Initialize(root)
	self.root = root

	HttpDebug:SetEnabled(true)
	ActionDebug:SetEnabled(true)
end

function DebugManager:Start()
	if self.running then
		warn("DebugManager is already running!")
		return
	end

	self.running = true
	self.httpDirty = false
	self.actionDirty = false

	self.screenGui = Instance.new("ScreenGui")
	self.screenGui.Name = "ChatDebugScreen"
	self.screenGui.DisplayOrder = 1e6
	self.screenGui.Parent = self.root

	self.container = Create "Frame" {
		Name = "DebugContainer",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,

		Create "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Top
		}
	}
	self.container.Parent = self.screenGui

	do
		local connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.H and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
					self:ToggleOpen()
				end
			end
		end)
		table.insert(self.connections, connection)
	end

	do
		local connection = HttpDebug.Updated:Connect(function()
			if not self.open then
				return
			end

			self.httpDirty = true
		end)
		table.insert(self.connections, connection)
	end

	do
		local connection = ActionDebug.Updated:Connect(function()
			if not self.open then
				return
			end

			self.actionDirty = true
		end)
		table.insert(self.connections, connection)
	end

	do
		local connection = RunService.Heartbeat:Connect(function()
			if not self.open then
				return
			end

			if self.httpDirty then
				self.httpDirty = false

				if self.http then
					self.http:Destroy()
				end

				self.http = HttpDebug:Render()
				self.http.LayoutOrder = 2
				self.http.Parent = self.container
			end

			if self.actionDirty then
				self.actionDirty = false

				if self.action then
					self.action:Destroy()
				end

				self.action = ActionDebug:Render()
				self.action.LayoutOrder = 1
				self.action.Parent = self.container
			end
		end)
		table.insert(self.connections, connection)
	end
end

function DebugManager:Stop()
	if not self.running then
		warn("DebugManager is already stopped!")
		return
	end

	self.running = false

	self:Close()

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}

	self.screenGui:Destroy()
	self.screenGui = nil
	self.container = nil
end

function DebugManager:Open()
	if self.open then
		return
	end

	self.open = true

	if self.action then
		self.action:Destroy()
	end

	self.action = ActionDebug:Render()
	self.action.LayoutOrder = 1
	self.action.Parent = self.container

	if self.http then
		self.http:Destroy()
	end

	self.http = HttpDebug:Render()
	self.http.LayoutOrder = 2
	self.http.Parent = self.container

	self.container.Visible = true
end

function DebugManager:Close()
	if not self.open then
		return
	end

	self.open = false

	self.container.Visible = false
end

function DebugManager:ToggleOpen()
	if self.open then
		self:Close()
	else
		self:Open()
	end
end

return DebugManager