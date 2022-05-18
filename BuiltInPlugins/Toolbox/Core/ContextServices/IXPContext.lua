local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local Framework = require(Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem
local Signal = Framework.Util.Signal

local IXPContext = ContextItem:extend("IXPContext")

function IXPContext.createMock(variables)
	return IXPContext.new({
		GetUserLayerLoadingStatus = function()
			return Enum.IXPLoadingStatus.Initialized
		end,
		GetUserLayerVariables = function()
			return variables or {}
		end,
		OnUserLayerLoadingStatusChanged = Signal.new(),
	})
end

function IXPContext.new(IXPService)
	local self = {
		IXPService = IXPService or game:GetService("IXPService"),
	}

	setmetatable(self, IXPContext)
	return self
end

--[[
	Specifies a signal which will fire when any consumers should be re-rendered.
]]
function IXPContext:getSignal()
	return self.IXPService.OnUserLayerLoadingStatusChanged
end

function IXPContext:isReady()
	return self.IXPService:GetUserLayerLoadingStatus() == Enum.IXPLoadingStatus.Initialized
end

function IXPContext:isError()
	local status = self.IXPService:GetUserLayerLoadingStatus()
	return status ~= Enum.IXPLoadingStatus.Initialized and status ~= Enum.IXPLoadingStatus.Pending
end

function IXPContext:getVariables()
	if not self:isReady() then
		return {}
	end
	return self.IXPService:GetUserLayerVariables("StudioMarketplace")
end

return IXPContext
