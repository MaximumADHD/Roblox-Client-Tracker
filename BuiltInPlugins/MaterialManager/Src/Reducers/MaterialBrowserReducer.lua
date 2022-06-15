local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)
local ClearMaterialWrapper = require(Actions.ClearMaterialWrapper)
local SetGridLock = require(Actions.SetGridLock)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialStatus = require(Actions.SetMaterialStatus)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMaterialWrapper = require(Actions.SetMaterialWrapper)
local SetMenuHover = require(Actions.SetMenuHover)
local SetMaterialOverride = require(Actions.SetMaterialOverride)
local SetMaterialOverrides = require(Actions.SetMaterialOverrides)
local SetPath = require(Actions.SetPath)
local SetSearch = require(Actions.SetSearch)
local SetViewType = require(Actions.SetViewType)

local Util = Plugin.Src.Util
local CompareMaterials = require(Util.CompareMaterials)

export type State = {
	GridLock: boolean,
	Material: _Types.Material?,
	Materials: any,
	MaterialTileSize: number,
	MaterialOverride: _Types.Map<Enum.Material, number>,
	MaterialOverrides: _Types.Map<Enum.Material, _Types.Array<string>>,
	MenuHover: boolean,
	Path: _Types.Path,
	Search: string,
	ViewType: string,
}

local initialState: State = {
	GridLock = false,
	MaterialOverride = {},
	MaterialOverrides = {},
	Materials = {},
	MaterialStatus = {},
	MaterialTileSize = 130,
	MenuHover = false,
	Path = {},
	Search = "",
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

	[SetMaterialTileSize.name] = function(state, action: SetMaterialTileSize.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialTileSize = action.MaterialTileSize
		})
	end,

	[SetViewType.name] = function(state, action: SetViewType.Payload)
		return Cryo.Dictionary.join(state, {
			ViewType = action.ViewType
		})
	end,

	[SetMenuHover.name] = function(state, action: SetMenuHover.Payload)
		return Cryo.Dictionary.join(state, {
			MenuHover = action.MenuHover
		})
	end,

	[SetMaterialWrapper.name] = function(state, action: SetMaterialWrapper.Payload)
		local index = if action.MaterialWrapper.MaterialVariant then action.MaterialWrapper.MaterialVariant else action.MaterialWrapper.Material

		return Cryo.Dictionary.join(state, {
			Materials = Cryo.Dictionary.join(state.Materials, {
				[index] = action.MaterialWrapper,
			}),
			Material = if CompareMaterials(state.Materials[index], state.Material) then action.MaterialWrapper else nil,
		})
	end,

	[ClearMaterialWrapper.name] = function(state, action: ClearMaterialWrapper.Payload)
		local index = if action.MaterialWrapper.MaterialVariant then action.MaterialWrapper.MaterialVariant else action.MaterialWrapper.Material

		return Cryo.Dictionary.join(state, {
			Materials = Cryo.Dictionary.join(state.Materials, {
				[index] = Cryo.None,
			}),
			Material = if CompareMaterials(state.Materials[index], state.Material) then Cryo.None else nil,
		})
	end,

	[SetMaterialStatus.name] = function(state, action: SetMaterialStatus.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialStatus = Cryo.Dictionary.join(state.MaterialStatus, {
				[action.Material] = action.MaterialStatus,
			})
		})
	end,

	[SetMaterialOverride.name] = function(state, action: SetMaterialOverride.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialOverride = Cryo.Dictionary.join(state.MaterialOverride, {
				[action.Material] = action.Index,
			})
		})
	end,

	[SetMaterialOverrides.name] = function(state, action: SetMaterialOverrides.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialOverrides = Cryo.Dictionary.join(state.MaterialOverrides, {
				[action.Material] = action.Overrides
			})
		})
	end,

	[SetGridLock.name] = function(state, action: SetGridLock.Payload)
		return Cryo.Dictionary.join(state, {
			GridLock = action.GridLock
		})
	end,
}))
