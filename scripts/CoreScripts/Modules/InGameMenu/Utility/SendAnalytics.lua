local AnalyticsService = game:GetService("RbxAnalyticsService")
local FFlagCollectAnalyticsForSystemMenu = settings():GetFFlag("CollectAnalyticsForSystemMenu")
local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)


return function(eventContext, eventName, eventTable, replaceEventNameWithGameSettings)
	local function reportSettingsForAnalytics()
		local UserInputService = game:GetService("UserInputService")
		local GameSettings =  UserSettings().GameSettings

		local stringTable = {}

		if UserInputService.TouchEnabled then
		  table.insert(stringTable, "camera_mode_touch=" .. tostring(GameSettings.TouchCameraMovementMode))
		else
		  table.insert(stringTable, "camera_mode_desktop=" .. tostring(GameSettings.ComputerCameraMovementMode))
		end

		if UserInputService.TouchEnabled then
		  table.insert(stringTable, "movement_mode_touch=" .. tostring(GameSettings.TouchMovementMode))
		else
		  table.insert(stringTable, "movement_mode_desktop=" .. tostring(GameSettings.ComputerMovementMode))
		end

		if UserInputService.MouseEnabled then
		  table.insert(stringTable, "shift_lock_enabled=" .. tostring(GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch))
		end

		if UserInputService.GamepadEnabled and GameSettings.IsUsingGamepadCameraSensitivity then
		  local sensitivity = GameSettings.GamepadCameraSensitivity
		  local formattedSensitivity = tonumber(string.format("%.2f", sensitivity))
		  table.insert(stringTable, "camera_sensitivity_gamepad=" .. formattedSensitivity)
		end
		if UserInputService.MouseEnabled then
		  local sensitivity = GameSettings.MouseSensitivityFirstPerson.X
		  local formattedSensitivity = tonumber(string.format("%.2f", sensitivity))
		  table.insert(stringTable, "camera_sensitivity_mouse=" .. formattedSensitivity)
		end

		table.insert(stringTable, "camera_y_inverted=" .. tostring(GameSettings.CameraYInverted))
		table.insert(stringTable, "show_performance_stats=" .. tostring(GameSettings.PerformanceStatsVisible))
		table.insert(stringTable, "volume=" .. tostring( math.floor((GameSettings.MasterVolume * 10) + 0.5) ))
		table.insert(stringTable, "gfx_quality_level=" .. tostring(settings().Rendering.QualityLevel))
		table.insert(stringTable, "fullscreen_enabled=" .. tostring(GameSettings:InFullScreen()))
		table.insert(stringTable, "microprofiler_enabled=" .. tostring(GameSettings.OnScreenProfilerEnabled))
		table.insert(stringTable, "microprofiler_webserver_enabled=" .. tostring(GameSettings.MicroProfilerWebServerEnabled))

		return table.concat(stringTable,"&")
	end

	if FFlagCollectAnalyticsForSystemMenu then
		if eventTable == nil then
			eventTable = {}
		end

		if replaceEventNameWithGameSettings == true then
			eventName = reportSettingsForAnalytics()
		end

		AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, eventContext, eventName, eventTable)
	end
end