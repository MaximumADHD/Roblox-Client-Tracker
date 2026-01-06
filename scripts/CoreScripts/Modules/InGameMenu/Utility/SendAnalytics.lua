--!nonstrict
local UserInputService = game:GetService("UserInputService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local InputTypeMap = Constants.InputTypeMap

return function(eventContext, eventName, eventTable, replaceEventNameWithGameSettings, analyticsServiceImpl)
	-- This parameter is only used to mock in testing
	if analyticsServiceImpl == nil then
		analyticsServiceImpl = AnalyticsService
	end

	local function reportSettingsForAnalytics()
		local GameSettings =  UserSettings().GameSettings

		local stringTable = {}

		if UserInputService.TouchEnabled then
			stringTable["camera_mode_touch"] = tostring(GameSettings.TouchCameraMovementMode)
		else
			stringTable["camera_mode_desktop"] = tostring(GameSettings.ComputerCameraMovementMode)
		end

		if UserInputService.TouchEnabled then
			stringTable["movement_mode_touch"] = tostring(GameSettings.TouchMovementMode)
		else
			stringTable["movement_mode_desktop"] = tostring(GameSettings.ComputerMovementMode)
		end

		if UserInputService.MouseEnabled then
			stringTable["shift_lock_enabled"] = tostring(GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch)
		end

		if UserInputService.GamepadEnabled and GameSettings.IsUsingGamepadCameraSensitivity then
			stringTable["camera_sensitivity_gamepad"] = string.format("%.2f", GameSettings.GamepadCameraSensitivity)
		end
		if UserInputService.MouseEnabled then
			stringTable["camera_sensitivity_mouse"] = string.format("%.2f", GameSettings.MouseSensitivityFirstPerson.X)
		end

		stringTable["camera_y_inverted"] = tostring(GameSettings.CameraYInverted)
		stringTable["show_performance_stats"] = tostring(GameSettings.PerformanceStatsVisible)
		stringTable["volume"] = tostring( math.floor((GameSettings.MasterVolume * 10) + 0.5) )
		stringTable["gfx_quality_level"] = tostring(settings().Rendering.QualityLevel)
		stringTable["fullscreen_enabled"] = tostring(GameSettings:InFullScreen())
		stringTable["microprofiler_enabled"] = tostring(GameSettings.OnScreenProfilerEnabled)
		stringTable["microprofiler_webserver_enabled"] = tostring(GameSettings.MicroProfilerWebServerEnabled)

		return stringTable
	end

	if replaceEventNameWithGameSettings == true then
		eventTable = reportSettingsForAnalytics()
		eventName = Constants.AnalyticsSettingsChangeName
		eventContext = Constants.AnalyticsInGameMenuName
	end

	if not eventTable then
		eventTable = {}
	end
	eventTable["universeid"] = tostring(game.GameId)

	local lastUsedInputType = InputTypeMap[UserInputService:GetLastInputType()] or UserInputService:GetLastInputType()
	eventTable["inputDevice"] = tostring(lastUsedInputType)

	if eventTable["playsessionid"] == nil and EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		eventTable["playsessionid"] = AnalyticsService:GetPlaySessionId()
	end

	analyticsServiceImpl:SetRBXEventStream(Constants.AnalyticsTargetName, eventContext, eventName, eventTable)
end
