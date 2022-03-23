local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ContextItem = require(Packages.Framework).ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = require(Packages.Framework).ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local IXPContext = ContextItem:extend("IXPContext")

function IXPContext.createMock(variables)
	return IXPContext.new({
		GetUserLayerLoadingStatus = function()
			return Enum.IXPLoadingStatus.Initialized
		end,
		GetUserLayerVariables = function()
			return variables or {}
		end,
	})
end

function IXPContext.new(IXPService)
	local self = {
		IXPService = IXPService or game:GetService("IXPService"),
	}

	setmetatable(self, IXPContext)
	return self
end

if FFlagDevFrameworkUseCreateContext then
	--[[
		Specifies a signal which will fire when any consumers should be re-rendered.
	]]
	function IXPContext:getSignal()
		return self.IXPService.OnUserLayerLoadingStatusChanged
	end
else
	function IXPContext:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, { root })
	end
end

function IXPContext:isReady()
	return self.IXPService:GetUserLayerLoadingStatus() == Enum.IXPLoadingStatus.Initialized
end

function IXPContext:getVariables()
	if not self:isReady() then
		return {}
	end
	return self.IXPService:GetUserLayerVariables("StudioMarketplace")
end

return IXPContext
