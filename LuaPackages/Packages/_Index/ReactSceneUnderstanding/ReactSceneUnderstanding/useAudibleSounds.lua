local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)

--[=[
	Returns a list of Sounds in the Workspace sorted by how audible they are to
	the client.

	Sounds that are determined to be inaudible are not included in the resulting
	list.

	@within ReactSceneUnderstanding
	@tag internal
]=]
local function useAudibleSounds()
	local context: SceneAnalysisContext.SceneAnalysis = React.useContext(SceneAnalysisContext)
	return context.soundsByAudibility
end

return useAudibleSounds
