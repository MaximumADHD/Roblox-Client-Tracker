local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)

local ListEntry = {}

ListEntry.__index = ListEntry

function ListEntry.new(appState, height)
	local self = {}
	self.connections = {}
	setmetatable(self, ListEntry)

	self.rbx = Create.new"TextButton" {
		Name = "Entry",
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.WHITE,
		Size = UDim2.new(1, 0, 0, height),
		AutoButtonColor = false,
		Text = "",
	}

	self.tapped = Signal.new()
	self.beginHover = Signal.new()
	self.endHover = Signal.new()

	local beginningInput = nil
	local function onInputBegan(input)
		if input.UserInputType ~= Enum.UserInputType.Touch or
			(input.UserInputState ~= Enum.UserInputState.Begin and input ~= beginningInput) then
			return
		end
		beginningInput = input
		self.rbx.BackgroundColor3 = Constants.Color.GRAY5
		self.beginHover:Fire()
		return
	end

	local function onInputEnded(input, processed)
		if input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		beginningInput = nil
		self.rbx.BackgroundColor3 = Constants.Color.WHITE
		self.endHover:Fire()
		return
	end

	local inputBeganConnection = self.rbx.InputBegan:Connect(onInputBegan)
	table.insert(self.connections, inputBeganConnection)
	local inputEndedConnection = self.rbx.InputEnded:Connect(onInputEnded)
	table.insert(self.connections, inputEndedConnection)

	local mouseClickedConnection = self.rbx.MouseButton1Click:connect(function()
		self.tapped:Fire()
	end)
	table.insert(self.connections, mouseClickedConnection)

	return self
end

function ListEntry:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	self.rbx:Destroy()
end

return ListEntry