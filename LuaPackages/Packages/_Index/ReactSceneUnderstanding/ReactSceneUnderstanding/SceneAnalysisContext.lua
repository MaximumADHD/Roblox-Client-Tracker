local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)

export type SceneAnalysis = {
	-- List of Source Assets that are currently visible in the Workspace
	assetsInView: { Instance },

	-- List of Source Assets that are in the Workspace and in range of the Camera.
	assetsInRange: { Instance },

	-- List of Sound instances sorted by how audible the sound is to the user
	soundsByAudibility: { Sound },
}

local defaultValue: SceneAnalysis = {
	assetsInView = {},
	assetsInRange = {},
	soundsByAudibility = {},
}

local SceneAnalysisContext = React.createContext(defaultValue)

return SceneAnalysisContext
