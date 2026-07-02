local Platform = require(script.Parent.Platform)
local getInputPlatform = require(script.Parent.getInputPlatform)
local PlatformIconMap = require(script.Parent.PlatformIconMap)
local UserInputService = require(script.Parent.Parent.Services).UserInputService
local GuiService = require(script.Parent.Parent.Services).GuiService

local ConsoleToEnginePlatformEnum = {
	[Platform.PS4] = Enum.Platform.PS4,
	[Platform.PS5] = Enum.Platform.PS5,
	[Platform.Xbox] = Enum.Platform.XBoxOne,
}

local function getPlatform(): Enum.Platform?
	local success, platform = pcall(UserInputService.GetPlatform, UserInputService)

	if success then
		return platform
	end

	-- fallback (only supports console)
	local isConsole = GuiService:IsTenFootInterface()
	local inputPlatform = getInputPlatform()

	return if isConsole then ConsoleToEnginePlatformEnum[inputPlatform] else nil
end

local function getBuilderIconForCurrentPlatform(): string?
	local platform = getPlatform()

	return PlatformIconMap[platform]
end

return getBuilderIconForCurrentPlatform
