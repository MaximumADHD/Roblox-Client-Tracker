local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Create = require(LuaChat.Create)
local Functional = require(Common.Functional)
local Signal = require(Common.Signal)

local Components = LuaChat.Components
local UserEntry = require(Components.UserEntry)

local ICON_CELL_WIDTH = 60

local UserList = {}
UserList.__index = UserList

function UserList.new(appState, icon, filter)
	local self = {
		appState = appState,
		icon = icon,
		filter = filter,
	}
	setmetatable(self, UserList)

	self.users = nil
	self.userEntries = {}

	self.rbx = Create.new"Frame" {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		Create.new"UIListLayout" {
			Name = "ListLayout",
			SortOrder = "LayoutOrder",
			Padding = UDim.new(0, 0),
		},
	}

	self.userSelected = Signal.new()

	return self
end

function UserList:ResetFinalDivider()
	local children = self.rbx:GetChildren()
	local lastChild = nil
	for i = 1, #children do
		local child = children[#children-i+1]
		if child:IsA("GuiObject") and child.Visible then
			if lastChild == nil or lastChild.LayoutOrder < child.LayoutOrder then
				lastChild = child
			end
		end
	end
	if lastChild then
		local divider = lastChild.Divider
		divider.Size = UDim2.new(1, -ICON_CELL_WIDTH, 0, 1)
		divider.Position = UDim2.new(0, ICON_CELL_WIDTH, 1, -1)
	end
end

function UserList:FormatFinalDivider()
	local children = self.rbx:GetChildren()
	local lastChild = nil
	for i = 1, #children do
		local child = children[#children-i+1]
		if child:IsA("GuiObject") and child.Visible then
			if lastChild == nil or lastChild.LayoutOrder < child.LayoutOrder then
				lastChild = child
			end
		end
	end
	if lastChild then
		local divider = lastChild.Divider
		divider.Size = UDim2.new(1, -ICON_CELL_WIDTH, 0, 1)
		divider.Position = UDim2.new(0, ICON_CELL_WIDTH, 1, -1)
	end
end

function UserList:ApplySearch(searchTerm)
	searchTerm = searchTerm:upper()
	self:ResetFinalDivider()
	for _, userEntry in pairs(self.userEntries) do
		local name = userEntry.rbx.Label.Text:upper()
		local first = name:find(searchTerm)
		if first ~= nil then
			userEntry.rbx.LayoutOrder = first
			userEntry.rbx.Visible = true
		else
			userEntry.rbx.Visible = false
		end
	end
	self.rbx.ListLayout:ApplyLayout()
	self:FormatFinalDivider()
end

function UserList:Update(users, selectedList)
	if self.users == users then
		return
	end
	self.users = users

	for _, userEntry in pairs(self.userEntries) do
		userEntry.rbx.Visible = false
	end

	local height = 0
	for _, user in pairs(users) do
		if self.filter == nil or self.filter(user) then
			local userEntry = self.userEntries[user.id]
			local selected = selectedList and Functional.Find(selectedList, user.id) or false

			if userEntry == nil then
				self:ResetFinalDivider()

				userEntry = UserEntry.new(self.appState, user, self.icon, selected)
				userEntry.tapped:Connect(function()
					userEntry.selected = not userEntry.selected
					self.userSelected:Fire(user)
				end)
				userEntry.rbx.Parent = self.rbx
				self.userEntries[user.id] = userEntry

				self:FormatFinalDivider()
			else
				userEntry.rbx.Visible = true
				userEntry:Update(user, selected)
			end
			height = height + userEntry.rbx.AbsoluteSize.Y
		end
	end
	self.rbx.Size = UDim2.new(1, 0, 0, height)
end

function UserList:Destruct()
	for _, userEntry in pairs(self.userEntries) do
		userEntry:Destruct()
	end

	self.users = {}
	self.userEntries = {}
	self.rbx:Destroy()
end

return UserList