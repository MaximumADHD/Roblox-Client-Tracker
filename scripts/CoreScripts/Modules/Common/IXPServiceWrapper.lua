--[[
	A wrapper for IXPService that is intended to be used by in-game code (i.e. StarterScript)
	Prefer the functions on this Module rather than invoking IXPService directly

	IMPORTANT:
	- `InitializeAsync` should be invoked only once
	- `GetLayerData` will always immediately return, even if the underlying data are not initialized
--]]

local RunService = game:GetService("RunService")
local IXPService = game:GetService("IXPService")

local GetIXPServiceWrapperWaitRefactor = require(script.Parent.Flags.GetIXPServiceWrapperWaitRefactor)

local ModuleTable = {}

--[[
	Initialize the IXP Service with the appropriate User Layer data.
	Only User Layer initialization is supported from Lua
	Yields until Initialization is complete, as determined by IXPService:GetUserLayerLoadingStatus

	@param userId The User ID of the local player
	@param userLayers An array of user layer names to be registered

	@returns boolean, IXPLoadingStatus
	- whether init was successful
	- the terminal IXPLoadingStatus that was read from IXPService:GetUserLayerLoadingStatus
--]]
function ModuleTable:InitializeAsync(userId, userLayers)
	local success, result = pcall(function()
		if RunService:IsStudio() then
			IXPService:ClearUserLayers()
		end
		IXPService:RegisterUserLayers(userLayers)
		IXPService:InitializeUserLayers(userId)
		if GetIXPServiceWrapperWaitRefactor() then
			return self:WaitForInitialization()
		else
			local status = IXPService:GetUserLayerLoadingStatus()
			while status == Enum.IXPLoadingStatus.None or status == Enum.IXPLoadingStatus.Pending do
				IXPService.OnUserLayerLoadingStatusChanged:Wait()
				status = IXPService:GetUserLayerLoadingStatus()
			end

			return status
		end
	end)

	return success, result
end

--[[
	Yields until IXP is initialized

	returns IXPLoadingStatus
	-- The status of IXP after initalization
--]]
function ModuleTable:WaitForInitialization()
	local status = IXPService:GetUserLayerLoadingStatus()
	while status == Enum.IXPLoadingStatus.None or status == Enum.IXPLoadingStatus.Pending do
		IXPService.OnUserLayerLoadingStatusChanged:Wait()
		status = IXPService:GetUserLayerLoadingStatus()
	end

	return status
end

--[[
	Return the variables associated with the given user layer.
	** CAVEAT: Will return immediately even if the underlying data are not loaded! **

	@param userLayer (string) the name of the user layer

	@returns nullable table containing the data associated with the layer
--]]
function ModuleTable:GetLayerData(userLayer): { [string]: any }?
	local success, result = pcall(function()
		return IXPService:GetUserLayerVariables(userLayer)
	end)

	return success and result or nil
end

--[[
	Logs exposure for given user layer.

	@param layerName (string) the name of the layer
--]]
function ModuleTable:LogUserLayerExposure(layerName)
	pcall(function()
		IXPService:LogUserLayerExposure(layerName)
	end)
end

--[[
	Logs exposure for given browser tracker layer.

	@param layerName (string) the name of the layer
--]]
function ModuleTable:LogBrowserTrackerLayerExposure(layerName)
	pcall(function()
		IXPService:LogBrowserTrackerLayerExposure(layerName)
	end)
end

return ModuleTable
