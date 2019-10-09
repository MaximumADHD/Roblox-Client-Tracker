local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Reducers = Plugin.Src.Reducers
local Tools = require(Reducers.Tools)

local AddTool = require(Reducers.AddTool)
local ErodeTool = require(Reducers.ErodeTool)
local FillTool = require(Reducers.FillTool)
local GenerateTool = require(Reducers.GenerateTool)
local GrowTool = require(Reducers.GrowTool)
local ImportTool = require(Reducers.ImportTool)
local RegionTool = require(Reducers.RegionTool)
local SmoothTool = require(Reducers.SmoothTool)
local SubtractTool = require(Reducers.SubtractTool)
local FlattenTool = require(Reducers.FlattenTool)
local PaintTool = require(Reducers.PaintTool)

local toolReducerTable = {
	GenerateTool = GenerateTool,
	ImportTool = ImportTool,
	AddTool = AddTool,
	SubtractTool = SubtractTool,
	GrowTool = GrowTool,
	ErodeTool = ErodeTool,
	SmoothTool = SmoothTool,
	FillTool = FillTool,
	RegionTool = RegionTool,
	PaintTool = PaintTool,
	FlattenTool = FlattenTool,
}

local Actions = Plugin.Src.Actions
local ApplyToolAction = Actions.ApplyToolAction

local MainReducer = function(state, action)
	local reducer = state or {
		Tools = Tools(state, action),

		AddTool = AddTool(state, action),
		ErodeTool = ErodeTool(state, action),
		FillTool = FillTool(state, action),
		GenerateTool = GenerateTool(state, action),
		GrowTool = GrowTool(state, action),
		ImportTool = ImportTool(state, action),
		RegionTool = RegionTool(state, action),
		SmoothTool = SmoothTool(state, action),
		SubtractTool = SubtractTool(state, action),
		FlattenTool = FlattenTool(state, action),

		-- special cased reducer, is used by a tab since
		-- there's no other paint tools under the paint category
		PaintTool = PaintTool(state, action),
	}

	-- ApplyToolAction is used to direct the same action across mutliple reducers
	-- This means actions that affect tool reducers must go through the
	-- ApplyToolAction in order to make changes to those reducers
	-- as a benifit, these reducers can share values keys.
	-- for example, brush size is used across all the brushes
	if action.type == ApplyToolAction.Name then
		local toolName = action.toolName

		reducer = Cryo.Dictionary.join(reducer, {
			[toolName] = toolReducerTable[toolName](reducer[toolName], action.toolAction),
		})
	else
		reducer = Cryo.Dictionary.join(reducer, {
			Tools = Tools(reducer.Tools, action),
		})
	end
	return reducer
end

return MainReducer