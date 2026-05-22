local character = script.Parent.Parent -- TODO more generic logic like find first parent with Humanoid as a child?
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
assert(localPlayer)

if localPlayer.Character == character then
	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")
	local runService = game:GetService("RunService")
	runService:SetPredictionMode(animator, Enum.PredictionMode.On)

	require(script.Parent).setupAnimation()
end
