local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local SceneManagement = require(Packages.SceneManagement)
local useLighting = SceneManagement.useLighting
local useBackgroundScene = SceneManagement.useBackgroundScene

local backgroundSceneProps = {
	BackgroundConfigs = {
		BackgroundModelName = "TenFootUiBackgroundShapes",
		PositionOffset = Vector3.new(0, -2, 0),
		RotationOffset = Vector3.new(0, 90, 0),
	},
}

local function useTenFootUiSceneManager()
	useLighting()
	useBackgroundScene(backgroundSceneProps)
end

return useTenFootUiSceneManager
