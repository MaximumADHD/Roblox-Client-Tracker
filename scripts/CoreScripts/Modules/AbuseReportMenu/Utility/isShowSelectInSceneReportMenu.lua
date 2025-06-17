local root = script:FindFirstAncestor("AbuseReportMenu")
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")

local Constants = require(root.Components.Constants)
local isInSelectInSceneReportMenuOverrideList = require(root.Utility.isInSelectInSceneReportMenuOverrideList)

local overrideEnabled = false
task.defer(function()
	overrideEnabled = isInSelectInSceneReportMenuOverrideList()
end)

return function(analyticsDispatch: (action: { type: string }) -> ())
	--------------------------------------
	-- Required for the feature to work --
	if not game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
		return false
	end

	if not game:GetEngineFeature("CaptureModeEnabled") then
		return false
	end

	if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") then
		if not ExperienceStateCaptureService:CanEnterCaptureMode() then
			-- log if user's device meets memory requirement for select in scene
			-- can change per experience
			analyticsDispatch({
				type = Constants.AnalyticsActions.SetMemoryRequirementMet,
				memoryRequirementMet = 0,
			})
			return false
		end
		analyticsDispatch({
			type = Constants.AnalyticsActions.SetMemoryRequirementMet,
			memoryRequirementMet = 1,
		})
	end

	if not game:GetEngineFeature("ExperienceStateCaptureHiddenSelection") then
		return false
	end

	----------------------------------
	-- Gating access to the feature --
	if overrideEnabled then
		return true
	end

	return true
end
