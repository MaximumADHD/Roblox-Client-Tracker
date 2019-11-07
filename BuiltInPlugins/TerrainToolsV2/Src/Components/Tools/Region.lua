--[[
	Displays panels associated with the Region tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local EditSettings = require(ToolParts.EditSettings)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetMergeEmpty = require(Actions.SetMergeEmpty)

local TerrainRegionEditor = require(Plugin.Src.Components.Functions.TerrainRegionEditor)

local REDUCER_KEY = "RegionTool"

local Region = Roact.PureComponent:extend(script.Name)

function Region:init(initialProps)
		self.toggleButton = function(containter)
			self.props.dispatchSetMergeEmpty(not self.props.mergeEmpty)
		end
end

function Region:didUpdate()
	TerrainRegionEditor.ChangeProperties({
		mergeEmpty = self.props.mergeEmpty,
	})
end

function Region:render()
	local mergeEmpty = self.props.mergeEmpty

	return Roact.createElement(EditSettings,{
		mergeEmpty = mergeEmpty,
		toggleButton = self.toggleButton,
	})
end

local function MapStateToProps (state, props)
	return {
		mergeEmpty = state.RegionTool.mergeEmpty,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToRegion = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end
	return {
		dispatchSetMergeEmpty = function (mergeEmpty)
			dispatchToRegion(SetMergeEmpty(mergeEmpty))
		end,
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Region)
