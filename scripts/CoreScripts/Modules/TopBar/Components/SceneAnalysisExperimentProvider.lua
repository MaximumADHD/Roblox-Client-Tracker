local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Packages.Roact)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local ReactSceneUnderstanding = require(CorePackages.Packages.ReactSceneUnderstanding)
local IsExperienceMenuABTestEnabled = require(CoreGui.RobloxGui.Modules.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(CoreGui.RobloxGui.Modules.ExperienceMenuABTestManager)

local GetFStringSceneAnalysisLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringSceneAnalysisLayer
local GetFIntSceneAnalysisInstanceProcessingLimit
	= require(CorePackages.Workspace.Packages.SharedFlags).GetFIntSceneAnalysisInstanceProcessingLimit
local GetFIntSceneAnalysisMaxScreenDivisions
	= require(CorePackages.Workspace.Packages.SharedFlags).GetFIntSceneAnalysisMaxScreenDivisions
local GetFIntSceneAnalysisMaxDistance
	= require(CorePackages.Workspace.Packages.SharedFlags).GetFIntSceneAnalysisMaxDistance

export type Props = {
	children: any,
}

local function SceneAnalysisExperimentProvider(props: Props)
	local instanceProcessingLimit = RoactAppExperiment.useUserExperiment({ GetFStringSceneAnalysisLayer() }, function(layerVariables)
		local layer = layerVariables[GetFStringSceneAnalysisLayer()]
		if layer then
			return layer.instanceProcessingLimit
		end
		return nil
	end, false)

	return Roact.createElement(ReactSceneUnderstanding.SceneAnalysisProvider, {
		dataModelTraversalOptions = {
			instanceProcessingLimit = if instanceProcessingLimit
				then instanceProcessingLimit
				else GetFIntSceneAnalysisInstanceProcessingLimit()
		},
		viewportQueryOptions = {
			maxScreenDivisions = GetFIntSceneAnalysisMaxScreenDivisions(),
		},
		rangeQueryOptions = {
			maxDistance = GetFIntSceneAnalysisMaxDistance(),
		},
	}, props.children)
end

return SceneAnalysisExperimentProvider
