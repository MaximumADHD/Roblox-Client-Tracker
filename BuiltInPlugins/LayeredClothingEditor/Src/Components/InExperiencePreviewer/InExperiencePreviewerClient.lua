local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game.Workspace

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Contexts = AvatarToolsShared.Contexts
local PreviewContext = Contexts.PreviewContext

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local InExperiencePreviewFrame = require(script.Parent.InExperiencePreviewFrame)

local Constants = require(Plugin.Src.Util.Constants)

local InExperiencePreviewerClient = {}

function InExperiencePreviewerClient:focusCamera()
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	if not character then
		return
	end

	-- reset camera
	local camera = Workspace.CurrentCamera
	camera.CameraType = Enum.CameraType.Custom
	camera.CameraSubject = character
end

function InExperiencePreviewerClient:initRemoteConnections()
	self.connections = {}

	local previewChangedEvent = ReplicatedStorage:WaitForChild(Constants.PREVIEW_REMOTE_EVENT_NAME)

	table.insert(self.connections, self.previewContext:getPreviewModelChangedSignal():Connect(function()
		previewChangedEvent:FireServer(self.previewContext:getCurrentPreviewAvatarIndex())
	end))

	table.insert(self.connections, previewChangedEvent.OnClientEvent:Connect(function()
		self:focusCamera()
	end))
end

function InExperiencePreviewerClient:initUI()
	local root = ContextServices.provide({
		PluginTheme.makePluginTheme(),
		self.previewContext,
	}, {
		InExperiencePreviewFrame = Roact.createElement(InExperiencePreviewFrame),
	})

	self.roactHandle = Roact.mount(root, CoreGui)
end

function InExperiencePreviewerClient:initPreviewContext()
	local previewAvatarsFolder = ReplicatedStorage:FindFirstChild(Constants.PREVIEW_FOLDER_NAME)
	if not previewAvatarsFolder then
		return
	end

	local userAvatarsFolder
	for _, child in ipairs(previewAvatarsFolder:GetChildren()) do
		local userId = tonumber(child.Name)
		if userId == LocalPlayer.UserId then
			userAvatarsFolder = child
		end
	end
	if not userAvatarsFolder then
		return
	end

	self.previewContext = PreviewContext.new()
	local avatars = {}
	for _, child in ipairs(userAvatarsFolder:Clone():GetChildren()) do
		avatars[tonumber(child.Name)] = child
	end
	self.previewContext:setAvatars(avatars)
end

function InExperiencePreviewerClient:init()
	if #Players:GetPlayers() > 1 then
		return
	end

	self:initPreviewContext()
	if not self.previewContext then
		return
	end

	self:initRemoteConnections()
	self:initUI()
end

function InExperiencePreviewerClient:shutdown()
	if not self.connections then
		return
	end
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	if self.roactHandle then
		Roact.unmount(self.roactHandle)
		self.roactHandle = nil
	end
end

return InExperiencePreviewerClient
