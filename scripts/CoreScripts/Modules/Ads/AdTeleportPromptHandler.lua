local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local AdTeleportPrompt = require(RobloxGui.Modules.Ads.AdTeleportPromptUI)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local AdTeleportPromptHandler = {}
AdTeleportPromptHandler.__index = AdTeleportPromptHandler

local transparencyBinding, updateTransparency = Roact.createBinding(1)
local MAX_TIME_SECONDS = 0.45 --Fade time

function AdTeleportPromptHandler.new(passedPortal: AdPortal, passedDestination: number)
	assert(passedPortal.Parent ~= nil, "Typechecker assurance, guaranteed by engine")
	local self = setmetatable({}, AdTeleportPromptHandler)
	self.window = nil :: any?
	self.portal = passedPortal :: AdPortal
	self.hasActiveWindow = false :: boolean
	self.destination = passedDestination :: number
	self.fadingIn = true :: boolean
	self.movedAway = false :: boolean
	local portalDoor = passedPortal.Parent :: Part
	self.maxDistance = portalDoor.Size.X / 2 + portalDoor.Size.Z + 2
	self.createTime = -1 :: number
	self.focusController = RoactGamepad.createFocusController() :: any

	return self
end

function AdTeleportPromptHandler:acceptPrompt()
	self.portal:TeleportConfirmed(self.destination, Players.LocalPlayer)
	self:closeWindow()
end

function AdTeleportPromptHandler:rejectButton()
	self:rejectPrompt(true, false) -- (Should cooldown, NOT rejected by distance)
end

function AdTeleportPromptHandler:rejectPrompt(shouldPrompt, rejectedByDistance)
	self.portal:TeleportRejected(shouldPrompt, rejectedByDistance)
	self:closeWindow()
end

local function getTransparencyFactor(scale: number, threshold: number)
	local factor = 1 - (1 - scale / threshold) ^ 3 -- Nice easing function
	if factor > 1 then
		factor = 1
	end
	return factor
end

function AdTeleportPromptHandler:onHeartbeat()
	assert(Players.LocalPlayer ~= nil, "Typechecker assurance")
	assert(self.portal.Parent ~= nil, "Typechecker assurance, guaranteed on engine side.")
	if
		Players.LocalPlayer.Character == nil
		or Players.LocalPlayer.Character.PrimaryPart == nil
		or self.portal == nil
		or self.portal.Parent.CFrame == nil
	then
		self:rejectPrompt(false, false) -- (Should NOT cooldown, NOT rejected by distance)
		return
	end

	if self.fadingIn then
		local maxTime = MAX_TIME_SECONDS * 1000
		local curTime = DateTime.now().UnixTimestampMillis
		local waited = curTime - self.createTime
		local isTimedOut = waited > maxTime

		updateTransparency(getTransparencyFactor(maxTime - waited, maxTime))

		if isTimedOut then
			self.fadingIn = false
			updateTransparency(0)
		end
	end

	assert(Players.LocalPlayer.Character ~= nil, "Typechecker assurance, guaranteed above.")
	assert(Players.LocalPlayer.Character.PrimaryPart ~= nil, "Typechecker assurance guaranteed above.")

	local portalPosition = self.portal.Parent.Position -- To check if moved away
	local userPosition = Players.LocalPlayer.Character.PrimaryPart.Position
	local distance = (userPosition - portalPosition).Magnitude

	if distance > self.maxDistance and not self.movedAway then --Start fade procedure
		self.createTime = DateTime.now().UnixTimestampMillis
		self.movedAway = true
		self.fadingIn = false
	end
	if self.movedAway then
		local maxTime = MAX_TIME_SECONDS * 1000
		local curTime = DateTime.now().UnixTimestampMillis
		local waited = curTime - self.createTime
		local isTimedOut = waited > maxTime

		updateTransparency(getTransparencyFactor(waited, maxTime))
		if isTimedOut then
			self:rejectPrompt(false, true) -- (Should NOT cooldown, WAS rejected by distance)
		end
	end
end

local function isGamepad(inputType: Enum.UserInputType)
	return inputType.Name:match("^Gamepad*") ~= nil
end

function AdTeleportPromptHandler:focusIfGamepad()
	if isGamepad(UserInputService:GetLastInputType()) then
		self.focusController:captureFocus()
	end
end

function AdTeleportPromptHandler:instantiatePrompt(experienceName: string, noButtonRequested: boolean)
	local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
	local StyleConstants = UIBlox.App.Style.Constants
	local DarkTheme = StyleConstants.ThemeName.Dark
	local Gotham = StyleConstants.FontName.Gotham

	local themes = {
		Dark = {
			themeName = DarkTheme,
			fontName = Gotham,
		},
	}

	local sizeBinding, updateSizeBinding = Roact.createBinding(UDim2.fromOffset(0, 0))

	local prompt = Roact.createElement(AdTeleportPrompt, {
		shouldRenderCancelButton = noButtonRequested,
		experienceName = experienceName,
		handler = self,
		onAbsoluteSizeChanged = function(rbx)
			updateSizeBinding(UDim2.fromOffset(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y))
		end,
	})
	local root = Roact.createElement(
		"ScreenGui",
		{
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			AutoLocalize = false,
		},
		Roact.createElement(AppStyleProvider, {
			style = themes["Dark"],
		}, {
			CanvasGroup = Roact.createElement(RoactGamepad.Focusable.CanvasGroup, {
				focusController = self.focusController,
				Selectable = false,
				GroupTransparency = transparencyBinding,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = sizeBinding,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}, {
				Prompt = prompt,
			}),
		})
	)
	self.window = Roact.mount(root, CoreGui, "AdTeleportPrompt")
	self.hasActiveWindow = true
	self:focusIfGamepad()
end

local function fetchExperienceName(id: number)
	return MarketplaceService:GetProductInfo(id).Name
end

function AdTeleportPromptHandler:fetchTitle()
	local experienceName = fetchExperienceName(self.destination)
	if experienceName == "Grey Adidas Shoes" then -- Temporary: this is the fallback option of the endpoint. (ADS-3572)
		error("Name not found.")
	else
		return experienceName
	end
end

function AdTeleportPromptHandler:closeWindow()
	assert(self.hasActiveWindow == true, "Only way unmounting makes sense is if window is active.")
	Roact.unmount(self.window)
	self.hasActiveWindow = false
end

function AdTeleportPromptHandler:updateCreateTime()
	self.createTime = DateTime.now().UnixTimestampMillis
end

return AdTeleportPromptHandler
