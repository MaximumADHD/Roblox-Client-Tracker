local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMenuHover = require(Actions.SetMenuHover)
local SetPath = require(Actions.SetPath)
local SetSearch = require(Actions.SetSearch)
local SetViewType = require(Actions.SetViewType)

export type State = {
	Material: _Types.Material?,
	MaterialTileSize: number,
	MenuHover: boolean,
	Path: _Types.Path,
	Search: string,
	ViewType: string,
}

local initialState: State = {
	Search = "",
	MaterialTileSize = 130,
	MenuHover = false,
	Path = {},
	ViewType = "Grid",
}

return (Rodux.createReducer(initialState, {
	[SetMaterial.name] = function(state: State, action: SetMaterial.Payload)
		return Cryo.Dictionary.join(state, {
			Material = action.Material,
		})
	end,

	[SetPath.name] = function(state: State, action: SetPath.Payload)
		return Cryo.Dictionary.join(state, {
			Path = action.Path,
		})
	end,

	[SetSearch.name] = function(state: State, action: SetSearch.Payload)
		return Cryo.Dictionary.join(state, {
			Search = action.Search,
		})
	end,

	[ClearMaterial.name] = function(state, action: ClearMaterial.Payload)
		return Cryo.Dictionary.join(state, {
			Material = Cryo.None,
		})
	end,

	[SetMaterialTileSize.name] = function(state, action : SetMaterialTileSize.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialTileSize = action.MaterialTileSize
		})
	end,

	[SetViewType.name] = function(state, action : SetViewType.Payload)
		return Cryo.Dictionary.join(state, {
			ViewType = action.ViewType
		})
	end,

	[SetMenuHover.name] = function(state, action : SetMenuHover.Payload)
		return Cryo.Dictionary.join(state, {
			MenuHover = action.MenuHover
		})
	end,
}))
