--!nonstrict
-- ChannelUpdatePrompt: Shows an in-experience modal when a private channel
-- or beta program update is required during a protocol launch.
-- Listens for the "ChannelUpdateRequired" event from NotificationService
-- and displays an ErrorPrompt with a "Restart Now" button that triggers
-- the native updater via AppUpdateService:PerformManagedUpdate().

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local HttpService = game:GetService("HttpService")
local AppUpdateService = game:GetService("AppUpdateService")

local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local BETA_PROGRAM_MESSAGE_KEY = "InGame.ChannelUpdatePrompt.Message.BetaProgram"
local BOUND_CHANNEL_MESSAGE_KEY = "InGame.ChannelUpdatePrompt.Message.BoundChannel"

local function translateOrFallback(key, fallback, parameters)
	local ok, result = pcall(function()
		return RobloxTranslator:FormatByKey(key, parameters)
	end)
	return ok and result or fallback
end

local function performUpdate()
	AppUpdateService:PerformManagedUpdate()
end

local function resolveUpdateName(updateType, detail)
	if updateType == "BetaProgram" then
		return detail.betaProgramName
	elseif updateType == "BoundChannel" then
		return detail.channelName
	end
	return nil
end

local ChannelUpdatePrompt = {}

function ChannelUpdatePrompt.init()
	local extraConfiguration = {
		MessageTextScaled = true,
		HideErrorCode = true,
		MenuIsOpenKey = "ChannelUpdatePrompt",
	}
	local prompt = ErrorPrompt.new("Default", extraConfiguration)
	prompt:setParent(RobloxGui)

	-- This prompt will need to be modified for platforms that do not support
	-- installer and require a manual force restart to join private flag channel
	-- (i.e. every platform other than Windows + Mac). Currently, engine only
	-- triggers this prompt for Mac and Windows for the web workflow, so the
	-- prompt is fine.
	local function showUpdatePrompt(updateType, updateName)
		local name = updateName or ""
		local message
		if updateType == "BetaProgram" then
			message = translateOrFallback(
				BETA_PROGRAM_MESSAGE_KEY,
				"An update is required for the Beta Program you are in: \"" .. name .. "\".",
				{ RBX_NAME = name }
			)
		elseif updateType == "BoundChannel" then
			message = translateOrFallback(
				BOUND_CHANNEL_MESSAGE_KEY,
				"An update is required for the channel you are bound to: \"" .. name .. "\".",
				{ RBX_NAME = name }
			)
		else
			warn("ChannelUpdatePrompt: unknown updateType '" .. tostring(updateType) .. "', skipping prompt")
			return
		end
		prompt:_open(message)
	end

	local buttonList = {
		{
			Text = "Restart Now",
			LocalizationKey = "InGame.CommonUI.Button.RestartNow",
			LayoutOrder = 1,
			Callback = performUpdate,
			Primary = true,
		},
	}

	prompt:updateButtons(buttonList)
	prompt:setErrorTitle("Update Required", "InGame.CommonUI.Title.UpdateRequired")

	local screenWidth = RobloxGui.AbsoluteSize.X
	local screenHeight = RobloxGui.AbsoluteSize.Y

	local function onScreenSizeChanged()
		local newWidth = RobloxGui.AbsoluteSize.X
		local newHeight = RobloxGui.AbsoluteSize.Y
		if screenWidth ~= newWidth or screenHeight ~= newHeight then
			screenWidth = newWidth
			screenHeight = newHeight
			prompt:resizeWidthAndHeight(screenWidth, screenHeight)
		end
	end

	RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(onScreenSizeChanged)
	onScreenSizeChanged()

	NotificationService.RobloxEventReceived:Connect(function(eventData)
		if eventData.namespace == "ChannelUpdateRequired" then
			local detail = HttpService:JSONDecode(eventData.detail)
			local updateName = resolveUpdateName(detail.updateType, detail)
			showUpdatePrompt(detail.updateType, updateName)
		end
	end)

	-- Safety net: if the C++ signal fired before this script loaded, check cached result
	local ok, cachedUpdateType = pcall(function()
		return AppUpdateService:GetProtocolLaunchUpdateType()
	end)
	local nameOk, cachedUpdateName = pcall(function()
		return AppUpdateService:GetProtocolLaunchUpdateName()
	end)
	if ok and cachedUpdateType ~= "" then
		local resolvedName = nameOk and cachedUpdateName or ""
		showUpdatePrompt(cachedUpdateType, resolvedName)
	end
end

return ChannelUpdatePrompt
