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

function Region:init()
	self.updateProperties = function()
		TerrainRegionEditor.ChangeProperties({
			mergeEmpty = self.props.mergeEmpty,
		})
	end
end

function Region:didUpdate()
	self.updateProperties()
end

function Region:didMount()
	self.updateProperties()
end

function Region:render()
	local mergeEmpty = self.props.mergeEmpty

	return Roact.createElement(EditSettings, {
		LayoutOrder = 1,
		mergeEmpty = mergeEmpty,
		setMergeEmpty = self.props.dispatchSetMergeEmpty,
	})
end

local function mapStateToProps(state, props)
	return {
		toolName = state.Tools.currentTool,
		mergeEmpty = state[REDUCER_KEY].mergeEmpty,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToRegion = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchSetMergeEmpty = function (mergeEmpty)
			dispatchToRegion(SetMergeEmpty(mergeEmpty))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Region)
