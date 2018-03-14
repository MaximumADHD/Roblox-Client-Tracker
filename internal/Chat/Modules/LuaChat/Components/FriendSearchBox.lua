local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Functional = require(Common.Functional)
local Signal = require(Common.Signal)
local StringsLocale = require(LuaApp.StringsLocale)
local ToastModel = require(LuaChat.Models.ToastModel)

local Components = LuaChat.Components
local ListSection = require(Components.ListSection)
local UserList = require(Components.UserList)
local UserThumbnailBar = require(Components.UserThumbnailBar)

local ShowToast = require(LuaChat.Actions.ShowToast)

local FFlagTextBoxOverrideManualFocusRelease = settings():GetFFlag("TextBoxOverrideManualFocusRelease")

local CLEAR_TEXT_WIDTH = 44
local ICON_CELL_WIDTH = 60
local SEARCH_BOX_HEIGHT = 48

local FriendSearchBox = {}
FriendSearchBox.__index = FriendSearchBox

function FriendSearchBox.new(appState, participants, maxParticipantCount, filter)
	local self = {
		appState = appState,
		participants = participants,
		users = appState.store:GetState().Users,
		maxParticipantCount = maxParticipantCount,
	}
	self.connections = {}
	setmetatable(self, FriendSearchBox)

	self.friendThumbnails = UserThumbnailBar.new(appState, maxParticipantCount, 1)
	local removedConnection = self.friendThumbnails.removed:Connect(function(id)
		self:RemoveParticipant(id)
	end)
	table.insert(self.connections, removedConnection)

	self.userList = UserList.new(appState, nil, filter)
	local userSelectedConnection = self.userList.userSelected:Connect(function(user)
		local selected = Functional.Find(self.participants, user.id)
		if selected then
			self:RemoveParticipant(user.id)
		else
			self:AddParticipant(user.id)
		end
		self:ClearText()
	end)
	table.insert(self.connections, userSelectedConnection)

	self.rbx = Create.new"Frame" {
		Name = "FriendSearchBox",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),

		Create.new"UIListLayout" {
			Name = "ListLayout",
			SortOrder = "LayoutOrder",
		},
		self.friendThumbnails.rbx,
		Create.new"Frame" {
			Name = "Divider1",
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 1),
			LayoutOrder = 2,
		},
		ListSection.new(appState, nil, 3).rbx,
		Create.new"Frame" {
			Name = "SearchContainer",
			BackgroundTransparency = 0,
			BackgroundColor3 = Constants.Color.WHITE,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, SEARCH_BOX_HEIGHT),
			LayoutOrder = 4,

			Create.new"ImageLabel" {
				Name = "SearchIcon",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 24, 0, 24),
				Position = UDim2.new(0, ICON_CELL_WIDTH/2, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-search-gray.png",
			},
			Create.new"TextBox" {
				Name = "Search",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -CLEAR_TEXT_WIDTH-ICON_CELL_WIDTH, 1, 0),
				Position = UDim2.new(0, ICON_CELL_WIDTH, 0, 0),
				TextSize = Constants.Font.FONT_SIZE_18,
				TextColor3 = Constants.Color.GRAY1,
				Font = Enum.Font.SourceSans,
				Text = "",
				PlaceholderText = appState.localization:Format(StringsLocale.Keys.SEARCH_FOR_FRIENDS),
				PlaceholderColor3 = Constants.Color.GRAY3,
				TextXAlignment = Enum.TextXAlignment.Left,
				OverlayNativeInput = true,
				ClearTextOnFocus = false,
				ClipsDescendants = true,
			},
			Create.new"ImageButton" {
				Name = "Clear",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 16, 0, 16),
				Position = UDim2.new(1, -(CLEAR_TEXT_WIDTH/2), 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				AutoButtonColor = false,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-clear-solid.png",
				ImageTransparency = 1,
			},
		},
		Create.new"Frame" {
			Name = "Divider2",
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 1),
			LayoutOrder = 5,
		},
		Create.new"ScrollingFrame" {
			Name = "ScrollingFrame",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = 5,
			BottomImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
			MidImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
			TopImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
			LayoutOrder = 6,

			self.userList.rbx,
		},
	}

	self.searchContainer = self.rbx.SearchContainer
	local clearButton = self.searchContainer.Clear
	local search = self.searchContainer.Search
	self.search = search
	if FFlagTextBoxOverrideManualFocusRelease then
		search.ManualFocusRelease = true
	end

	local clearButtonConnection = clearButton.MouseButton1Click:Connect(function()
		self:ClearText()
	end)
	table.insert(self.connections, clearButtonConnection)

	self:Resize()

	local function updateClearButtonVisibility()
		-- If we were to set the visible property of the clear button on the textbox focus lost event
		-- it would disable the clear button, which in turn would stop the click event
		-- from being able to notify the button
		local visible = search:IsFocused() and (search.Text  ~= "")
		clearButton.ImageTransparency = visible and 0 or 1
	end

	self.searchChanged = Signal.new()
	self.addParticipant = Signal.new()
	self.removeParticipant = Signal.new()

	local searchChangedConnection = search:GetPropertyChangedSignal("Text"):Connect(function()
		updateClearButtonVisibility()
		self.userList:ApplySearch(search.Text)
		self:Resize()
		self:ResizeCanvas()
	end)
	table.insert(self.connections, searchChangedConnection)

	local focusedConnection = search.Focused:Connect(updateClearButtonVisibility)
	table.insert(self.connections, focusedConnection)
	local focusLostConnection = search.FocusLost:Connect(updateClearButtonVisibility)
	table.insert(self.connections, focusLostConnection)

	self:UpdateFriends(appState.store:GetState().Users, self.participants)

	local userListAddConnection = self.userList.rbx.ChildAdded:Connect(function(child)
		self:ResizeCanvas();
	end)
	table.insert(self.connections, userListAddConnection)

	local userListRemoveConnection = self.userList.rbx.ChildRemoved:Connect(function(child)
		self:ResizeCanvas();
	end)
	table.insert(self.connections, userListRemoveConnection)

	local userListSizeConnection = self.userList.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:ResizeCanvas()
	end)
	table.insert(self.connections, userListSizeConnection)

	return self
end

function FriendSearchBox:Resize()

	local height = 0
	for _, element in pairs(self.rbx:GetChildren()) do
		if element:IsA("GuiObject") and element.Visible and element.Name ~= "ScrollingFrame" then
			height = height + element.AbsoluteSize.Y
		end
	end

	self.rbx.ScrollingFrame.Size = UDim2.new(1, 0, 1, -height)
end

function FriendSearchBox:ResizeCanvas()

	local height = 0
	for _, element in pairs(self.userList.rbx:GetChildren()) do
		if element:IsA("GuiObject") and element.Visible then
			height = height + element.AbsoluteSize.Y
		end
	end
	self.rbx.ScrollingFrame.CanvasSize = UDim2.new(1, 0, 0, height)
end

function FriendSearchBox:AddParticipant(userId)
	if #self.participants >= self.maxParticipantCount then

		if self.tooManyFriendsToastModel == nil then
			local messageKey = StringsLocale.Keys.TOO_MANY_PEOPLE
			local messageArguments = {
				MAX_GROUP_SIZE = tostring(Constants.MAX_PARTICIPANT_COUNT+1),
			}
			local toastModel = ToastModel.new(Constants.ToastIDs.TOO_MANY_PEOPLE, messageKey, messageArguments)
			self.tooManyFriendsToastModel = toastModel
		end

		self.appState.store:Dispatch(ShowToast(self.tooManyFriendsToastModel))
	else
		self.addParticipant:Fire(userId)
	end
end

function FriendSearchBox:RemoveParticipant(userId)
	self.removeParticipant:Fire(userId)
end

function FriendSearchBox:UpdateFriends(users, selectedList)
	local friends = {}
	for _, user in pairs(users) do
		table.insert(friends, user)
	end
	self.userList:Update(friends, selectedList)
	self:Resize()
end

function FriendSearchBox:ClearText()
	self.searchContainer.Search.Text = ""
	self:Resize()
end

function FriendSearchBox:Update(participants)
	local state = self.appState.store:GetState()
	local users = state.Users

	if participants ~= self.participants then
		self.friendThumbnails:Update(participants)
	end

	if participants ~= self.participants or users ~= self.users then
		self:UpdateFriends(users, participants)
	end

	self.participants = participants
	self.users = users

	self:Resize()
end

function FriendSearchBox:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
	self.userList:Destruct()
	self.friendThumbnails:Destruct()
	self.rbx.Parent = nil
	self.rbx:Destroy()
end

return FriendSearchBox