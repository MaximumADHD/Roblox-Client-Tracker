--[[
	Displays panels associated with the Select tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local EditSettings = require(ToolParts.EditSettings)

local Actions = Plugin.Src.Actions
local SetMergeEmpty = require(Actions.SetMergeEmpty)

local Select = Roact.PureComponent:extend(script.Name)

local REDUCER_KEY = "SelectTool"

function Select:render()
	local mergeEmpty = self.props.mergeEmpty

	return Roact.createElement(EditSettings,{
		mergeEmpty = mergeEmpty,
		toggleButton = function(containter)
			self.props.dispatchSetMergeEmpty(not mergeEmpty)
		end,
	})
end


local function MapStateToProps (state, props)
	return {
		mergeEmpty = state[REDUCER_KEY].mergeEmpty,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToSelect = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end
	return {
		dispatchSetMergeEmpty = function (mergeEmpty)
			dispatchToSelect(SetMergeEmpty(mergeEmpty))
		end,
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Select)
