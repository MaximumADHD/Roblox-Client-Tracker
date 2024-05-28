local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")

local ChromeService = require(script.Parent.Parent.Parent.Service)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local ChromeUtils = require(script.Parent.Parent.Parent.Service.ChromeUtils)

local GetFFlagChromeCapturesToggle = require(script.Parent.Parent.Parent.Flags.GetFFlagChromeCapturesToggle)
local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

local cameraEntrypointIntegration = GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "camera_entrypoint",
			label = "Feature.SettingsHub.Label.Captures",
			activated = function(self)
				ChromeService:toggleCompactUtility("camera_utility")
			end,
			components = {
				Icon = function(props)
					return CommonIcon("icons/controls/cameraOff")
				end,
			},
		})
	or nil

if GetFFlagChromeCapturesToggle() then
	StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, _enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.Captures then
			local integration: any = cameraEntrypointIntegration
			if integration == nil then
				return
			end
			ChromeUtils.setCoreGuiAvailability(integration, coreGuiType, function(enabled)
				local cameraEntryPointAvailabilitySignal: any = integration.availability
				if enabled then
					cameraEntryPointAvailabilitySignal:available()
				else
					if ChromeService:getCurrentUtility():get() == "camera_utility" then
						ChromeService:toggleCompactUtility("camera_utility")
					end
					cameraEntryPointAvailabilitySignal:unavailable()
				end
			end)
		end
	end)
end

-- function _toggleCaptures()
-- 	while true do
-- 		task.wait(3)
-- 		StarterGui:SetCoreGuiEnabled(
-- 			Enum.CoreGuiType.Captures,
-- 			not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Captures)
-- 		)
-- 	end
-- end

-- coroutine.resume(coroutine.create(_toggleCaptures))

return cameraEntrypointIntegration
