local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules

local LuaChat = Modules.LuaChat

local Config = require(LuaChat.Config)
local Create = require(LuaChat.Create)

local SetFormFactor = require(LuaChat.Actions.SetFormFactor)

local STATUS_BAR_HEIGHT_IOS = 20
local NAV_BAR_HEIGHT_IOS = 44
local TAB_BAR_HEIGHT_IOS = 0
local STATUS_BAR_HEIGHT_ANDROID = 24
local NAV_BAR_HEIGHT_ANDROID = 48
local TAB_BAR_HEIGHT_ANDROID = 0

local Device = {}

--Have to pcall this to handle studio testing plugin which runs in a
--downgraded security context
local ok, Platform = pcall(function()
	return UserInputService:GetPlatform()
end)
if not ok then
	Platform = Enum.Platform.None
end

Device.Platform = Platform
if RunService:IsStudio() then
	Device.Platform = Config.SimulatePlatform
end

Device.FormFactor = {
	UNKNOWN = "UNKNOWN",
	TABLET = "TABLET",
	PHONE = "PHONE",
}

local function simulateIOS()
	local statusBarSize = Vector2.new(0, STATUS_BAR_HEIGHT_IOS)
	local navBarSize = Vector2.new(0, NAV_BAR_HEIGHT_IOS)
	local bottomBarSize = Vector2.new(0, TAB_BAR_HEIGHT_IOS)
	--Pcall because Tests have a lower security context
	pcall(function() UserInputService:SendAppUISizes(statusBarSize, navBarSize, bottomBarSize) end)
end

local function simulateAndroid()

	local statusBarSize = Vector2.new(0, STATUS_BAR_HEIGHT_ANDROID)
	local navBarSize = Vector2.new(0, NAV_BAR_HEIGHT_ANDROID)
	local bottomBarSize = Vector2.new(0, TAB_BAR_HEIGHT_ANDROID)
	--Pcall because Tests have a lower security context
	pcall(function() UserInputService:SendAppUISizes(statusBarSize, navBarSize, bottomBarSize) end)

	local screenGui = Create.new "ScreenGui" {
		Name = "StudioShellSimulation",
		DisplayOrder = 10,

		Create.new "Frame" {
			Name = "StatusBar",
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 0, UserInputService.StatusBarSize.Y),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(117, 117, 117),
		}
	}
	screenGui.Parent = CoreGui

end

function Device.Init(store)

	local formFactor = Device.FormFactor.PHONE
	local function setFormFactor(viewportSize)
		if viewportSize.X == 1 then
			--Camera.ViewportSize hasn't been properly set yet
			formFactor = Device.FormFactor.UNKNOWN
		elseif viewportSize.Y > viewportSize.X then
			formFactor = Device.FormFactor.PHONE
		else
			formFactor = Device.FormFactor.TABLET
		end
		store:Dispatch(SetFormFactor(formFactor))
	end
	local camera = game.Workspace:WaitForChild("Camera")
	setFormFactor(camera.ViewportSize)
	camera.Changed:Connect(function(prop)
		if prop == "ViewportSize" then
			setFormFactor(camera.ViewportSize)
		end
	end)

	if RunService:IsStudio() then
		if Config.SimulatePlatform == Enum.Platform.IOS then
			simulateIOS()
		elseif Config.SimulatePlatform == Enum.Platform.Android then
			simulateAndroid()
		end
	end
end

return Device