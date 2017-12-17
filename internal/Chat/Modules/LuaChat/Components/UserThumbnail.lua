local Modules = script.Parent.Parent
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local Signal = require(Modules.Signal)
local HeadshotLoader = require(Modules.HeadshotLoader)

local OVERLAY_IMAGE_SMALL = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-36x36.png"
local OVERLAY_IMAGE_BIG = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-48x48.png"

local UserThumbnail = {}

UserThumbnail.__index = UserThumbnail

function UserThumbnail.new(appState, userId, small)
	local self = {}
	self.connections = {}
	self.appState = appState
	self.userId = userId
	self.clicked = Signal.new()

	local size = small and 36 or 48
	local overlayImage = small and OVERLAY_IMAGE_SMALL or OVERLAY_IMAGE_BIG

	self.headshot = Create.new "ImageLabel" {
		Name = "Avatar",
		Image = "",
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
	}

	local mask = Create.new "ImageLabel" {
		Name = "Overlay",
		Image = overlayImage,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}

	local pIndicatorBg = Create.new "ImageLabel" {
		Name = "Presence",
		Size = UDim2.new(0, 14, 0, 14),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/LuaChat/graphic/indicator-background.png",
		Position = UDim2.new(1, -14, 1, -14),
		Visible = false,
	}
	self.pIndicatorBg = pIndicatorBg

	self.rbx = Create.new "ImageButton" {
		Name = "UserThumbnail",
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		Image = "",
		Size = UDim2.new(0, size, 0, size),
		AutoButtonColor = false,

		self.headshot,
		mask,
		pIndicatorBg
	}

	setmetatable(self, UserThumbnail)

	self:Update()

	self.rbx.AncestryChanged:Connect(function(rbx, parent)
		if rbx == self.rbx and parent == nil then
			self:Destruct()
		end
	end)

	do
		local connection = appState.store.Changed:Connect(function(state, oldState)
			if state.Users == oldState.Users then
				return
			end

			if state.Users[userId] == oldState.Users[userId] then
				return
			end

			self:Update()
		end)
		table.insert(self.connections, connection)
	end

	table.insert(self.connections,
		self.rbx.MouseButton1Click:Connect(function()
			self.clicked:Fire(self.user)
		end))

	return self
end

function UserThumbnail:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}

	self.rbx:Destroy()
end

function UserThumbnail:Update()
	local user = self.appState.store:GetState().Users[self.userId]

	if not user then
		return
	end

	if user == self.user then
		return
	end

	self.user = user

	HeadshotLoader:Load(self.headshot, self.userId)

	local presenceImage = Constants.PresenceIndicatorImages[user.presence]

	if presenceImage then
		self.pIndicatorBg.Visible = true
		self.pIndicatorBg.Image = presenceImage
	else
		self.pIndicatorBg.Visible = false
	end
end

return UserThumbnail