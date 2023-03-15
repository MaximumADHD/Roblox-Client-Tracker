local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

local layerName = "Engine.Interactivity.UICreation.NotchScreenSupport"
local variableName = "notchEnabled"

local experimentEnabled: boolean = false

local module = {}
module.initialize = function()
	task.spawn(function()
		IXPServiceWrapper:WaitForInitialization()
		local layerData = IXPServiceWrapper:GetLayerData(layerName)
		
		if layerData then
			experimentEnabled = layerData[variableName]
		end
	end)
end

module.enabled = function(): boolean?
	return experimentEnabled
end

return module
