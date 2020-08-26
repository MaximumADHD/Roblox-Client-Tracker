local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Reducers = Plugin.Src.Reducers
local Tools = require(Reducers.Tools)

local AddTool = require(Reducers.AddTool)
local ConvertPartTool = require(Reducers.ConvertPartTool)
local ErodeTool = require(Reducers.ErodeTool)
local FillTool = require(Reducers.FillTool)
local FlattenTool = require(Reducers.FlattenTool)
local GenerateTool = require(Reducers.GenerateTool)
local GrowTool = require(Reducers.GrowTool)
local ImportTool = require(Reducers.ImportTool)
local PaintTool = require(Reducers.PaintTool)
local RegionTool = require(Reducers.RegionTool)
local SeaLevelTool = require(Reducers.SeaLevelTool)
local ReplaceTool = require(Reducers.ReplaceTool)
local SmoothTool = require(Reducers.SmoothTool)
local SubtractTool = require(Reducers.SubtractTool)

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

local toolReducerTable = {
	GenerateTool = GenerateTool,
	ImportTool = ImportTool,
	ConvertPartTool = FFlagTerrainToolsConvertPartTool and ConvertPartTool or nil,
	RegionTool = RegionTool,
	FillTool = FillTool,
	AddTool = AddTool,
	SubtractTool = SubtractTool,
	GrowTool = GrowTool,
	ErodeTool = ErodeTool,
	SmoothTool = SmoothTool,
	FlattenTool = FlattenTool,
	SeaLevelTool = SeaLevelTool,
	ReplaceTool = ReplaceTool,
	PaintTool = PaintTool,
}

local Actions = Plugin.Src.Actions
local ApplyToolAction = Actions.ApplyToolAction

local MainReducer = function(state, action)
	local reducer = state or {
		Tools = Tools(state, action),

		GenerateTool = GenerateTool(state, action),
		ImportTool = ImportTool(state, action),

		ConvertPartTool = FFlagTerrainToolsConvertPartTool and ConvertPartTool(state, action) or nil,

		RegionTool = RegionTool(state, action),
		FillTool = FillTool(state, action),

		AddTool = AddTool(state, action),
		SubtractTool = SubtractTool(state, action),

		GrowTool = GrowTool(state, action),
		ErodeTool = ErodeTool(state, action),
		SmoothTool = SmoothTool(state, action),
		FlattenTool = FlattenTool(state, action),
		SeaLevelTool = SeaLevelTool(state, action),
		ReplaceTool = ReplaceTool(state, action),

		-- special cased reducer, is used by a tab since
		-- there's no other paint tools under the paint category
		PaintTool = PaintTool(state, action),
	}

	-- ApplyToolAction is used to direct the same action across multiple reducers
	-- This means actions that affect tool reducers must go through the
	-- ApplyToolAction in order to make changes to those reducers
	-- as a benefit, these reducers can share values keys.
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
