--[[
	Provides components access to either DraftsService or MockDraftsService, depending
	on what main has selected
--]]
local FFlagDraftsWidgetUseCreateContext = game:GetFastFlag("DraftsWidgetUseCreateContext")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

if FFlagDraftsWidgetUseCreateContext then	
	return Roact.createContext("DraftsService")
else
	local Symbol = require(Plugin.Src.Util.Symbol)

	local draftsServiceKey = Symbol.named("DraftsService")


	local DraftsServiceProvider = Roact.PureComponent:extend("DraftsServiceProvider")

	function DraftsServiceProvider:init()
		local draftsService = self.props.draftsService
		assert(draftsService ~= nil, "DraftsServiceProvider expected to be given draftsService")
		self._context[draftsServiceKey] = draftsService
	end

	function DraftsServiceProvider:render()
		return Roact.oneChild(self.props[Roact.Children])
	end


	local function getDraftService(component)
		assert(component ~= nil, "A component must be provided")
		assert(component._context[draftsServiceKey] ~= nil, "A DraftsServiceProvider was not put into the Roact tree")
		return component._context[draftsServiceKey]
	end


	return {
		Provider = DraftsServiceProvider,
		getDraftService = getDraftService,
	}
end
