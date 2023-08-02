--!strict
local StarterGui = game:GetService("StarterGui")
local CorePackages = game:GetService("CorePackages")
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)

local function coreGuiEnabled(): boolean
	return (
		StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
	)
end

local coreGuiChangedSignal = SignalLib.Signal.new()

StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType: Enum.CoreGuiType, newState: boolean)
	if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.SelfView then
		coreGuiChangedSignal:fire(newState)
	end
end)

return {
	coreGuiEnabled = coreGuiEnabled,
	coreGuiChangedSignal = coreGuiChangedSignal,
}
