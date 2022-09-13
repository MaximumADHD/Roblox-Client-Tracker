local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)
local ClearMaterialWrapper = require(Actions.ClearMaterialWrapper)
local SetExpandedPane = require(Actions.SetExpandedPane)
local SetGridLock = require(Actions.SetGridLock)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialAsTool = require(Actions.SetMaterialAsTool)
local SetMaterialBrowserLayout = require(Actions.SetMaterialBrowserLayout)
local SetMaterialList = require(Actions.SetMaterialList)
local SetMaterialOverride = require(Actions.SetMaterialOverride)
local SetMaterialOverrides = require(Actions.SetMaterialOverrides)
local SetMaterialStatus = require(Actions.SetMaterialStatus)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMaterialVariant = require(Actions.SetMaterialVariant)
local SetMaterialWrapper = require(Actions.SetMaterialWrapper)
local SetMenuHover = require(Actions.SetMenuHover)
local SetPath = require(Actions.SetPath)
local SetSearch = require(Actions.SetSearch)
local SetUse2022Materials = require(Actions.SetUse2022Materials)
local SetViewType = require(Actions.SetViewType)

local Util = Plugin.Src.Util
local CompareMaterials = require(Util.CompareMaterials)

local Constants = Plugin.Src.Resources.Constants
local getSettingsNames = require(Constants.getSettingsNames)

local settingsNames = getSettingsNames()

export type State = {
	ActiveAsTool: boolean,
	ExpandedPane: _Types.Map<string, boolean>,
	GridLock: boolean,
	Material: _Types.Material?,
	MaterialBrowserLayout: _Types.MaterialBrowserLayout,
	MaterialList: _Types.Array<_Types.Material>?,
	MaterialOverride: _Types.Map<Enum.Material, number>,
	MaterialOverrides: _Types.Map<Enum.Material, _Types.Array<string>>,
	Materials: any,
	MaterialStatus: _Types.Map<Enum.Material, Enum.PropertyStatus>,
	MaterialTileSize: number,
	MenuHover: boolean,
	Path: _Types.Path,
	Search: string,
	Use2022Materials: boolean,
	ViewType: string,
}

local expandedPane = {}
for _, settingsName in pairs(settingsNames) do
	expandedPane[settingsName] = true
end

local initialState: State = {
	ActiveAsTool = false,
	ExpandedPane = expandedPane,
	GridLock = false,
	MaterialBrowserLayout = {
		BaseShowSideBar = true,
		OverrideShowSideBar = false,
		SideBarWidth = 200,
	},
	MaterialOverride = {},
	MaterialOverrides = {},
	Materials = {},
	MaterialStatus = {},
	MaterialTileSize = 130,
	MenuHover = false,
	Path = {},
	Search = "",
	Use2022Materials = false,
	ViewType = "Grid",
}

return (Rodux.createReducer(initialState, {
	[SetMaterial.name] = function(state: State, action: SetMaterial.Payload): State
		return Cryo.Dictionary.join(state, {
			Material = action.Material,
		})
	end,

	[SetMaterialVariant.name] = function(state: State, action: SetMaterialVariant.Payload): State
		return Cryo.Dictionary.join(state, {
			Material = state.Materials[action.MaterialVariant],
		})
	end,

	[SetPath.name] = function(state: State, action: SetPath.Payload): State
		return Cryo.Dictionary.join(state, {
			Path = action.Path,
		})
	end,

	[SetSearch.name] = function(state: State, action: SetSearch.Payload): State
		return Cryo.Dictionary.join(state, {
			Search = action.Search,
		})
	end,

	[ClearMaterial.name] = function(state: State, action: ClearMaterial.Payload): State
		return Cryo.Dictionary.join(state, {
			Material = Cryo.None,
		})
	end,

	[SetMaterialTileSize.name] = function(state: State, action: SetMaterialTileSize.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialTileSize = action.MaterialTileSize,
		})
	end,

	[SetViewType.name] = function(state: State, action: SetViewType.Payload): State
		return Cryo.Dictionary.join(state, {
			ViewType = action.ViewType,
		})
	end,

	[SetMenuHover.name] = function(state: State, action: SetMenuHover.Payload): State
		return Cryo.Dictionary.join(state, {
			MenuHover = action.MenuHover,
		})
	end,

	[SetMaterialWrapper.name] = function(state: State, action: SetMaterialWrapper.Payload): State
		local index = if action.MaterialWrapper.MaterialVariant
			then action.MaterialWrapper.MaterialVariant
			else action.MaterialWrapper.Material
		local hasMaterial = state.Material

		return Cryo.Dictionary.join(state, {
			Materials = Cryo.Dictionary.join(state.Materials, {
				[index] = action.MaterialWrapper,
			}),
			Material = if hasMaterial and CompareMaterials(state.Materials[index], state.Material)
				then action.MaterialWrapper
				else nil,
		})
	end,

	[ClearMaterialWrapper.name] = function(state: State, action: ClearMaterialWrapper.Payload): State
		local index = if action.MaterialWrapper.MaterialVariant
			then action.MaterialWrapper.MaterialVariant
			else action.MaterialWrapper.Material

		return Cryo.Dictionary.join(state, {
			Materials = Cryo.Dictionary.join(state.Materials, {
				[index] = Cryo.None,
			}),
			Material = if CompareMaterials(state.Materials[index], state.Material) then Cryo.None else nil,
		})
	end,

	[SetMaterialStatus.name] = function(state: State, action: SetMaterialStatus.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialStatus = Cryo.Dictionary.join(state.MaterialStatus, {
				[action.Material] = action.MaterialStatus,
			}),
		})
	end,

	[SetMaterialOverride.name] = function(state: State, action: SetMaterialOverride.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialOverride = Cryo.Dictionary.join(state.MaterialOverride, {
				[action.Material] = action.Index,
			}),
		})
	end,

	[SetMaterialOverrides.name] = function(state: State, action: SetMaterialOverrides.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialOverrides = Cryo.Dictionary.join(state.MaterialOverrides, {
				[action.Material] = action.Overrides,
			}),
		})
	end,

	[SetGridLock.name] = function(state: State, action: SetGridLock.Payload): State
		return Cryo.Dictionary.join(state, {
			GridLock = action.GridLock,
		})
	end,

	[SetMaterialAsTool.name] = function(state: State, action: SetMaterialAsTool.Payload): State
		return Cryo.Dictionary.join(state, {
			ActiveAsTool = action.ActiveAsTool,
		})
	end,

	[SetMaterialList.name] = function(state: State, action: SetMaterialList.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialList = action.MaterialList,
		})
	end,

	[SetUse2022Materials.name] = function(state: State, action: SetUse2022Materials.Payload): State
		return Cryo.Dictionary.join(state, {
			Use2022Materials = action.Use2022Materials,
		})
	end,

	[SetExpandedPane.name] = function(state: State, action: SetExpandedPane.Payload): State
		return Cryo.Dictionary.join(state, {
			ExpandedPane = Cryo.Dictionary.join(state.ExpandedPane, {
				[action.PaneName] = action.ExpandedPaneState,
			}),
		})
	end,

	[SetMaterialBrowserLayout.name] = function(state: State, action: SetMaterialBrowserLayout.Payload): State
		return Cryo.Dictionary.join(state, {
			MaterialBrowserLayout = Cryo.Dictionary.join(state.MaterialBrowserLayout, action.MaterialBrowserLayout),
		})
	end,
}))
