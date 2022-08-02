--[[
	Displays panels associated with the Fill tool
]]
local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")
local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = if FFlagRemoveUILibraryCompatLocalization then nil else require(Plugin.Src.ContextItems)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local EditSettings = require(ToolParts.EditSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetMaterial = require(Actions.SetMaterial)
local SetMergeEmpty = require(Actions.SetMergeEmpty)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local TerrainRegionEditor = require(Plugin.Src.Components.Functions.TerrainRegionEditor)

local REDUCER_KEY = "FillTool"

local Fill = Roact.PureComponent:extend(script.Name)

function Fill:init()
	self.onFillClicked = function()
		if self.props.material then
			TerrainRegionEditor.OnButtonClick()
		end
	end

	self.updateProperties = function()
		TerrainRegionEditor.ChangeProperties({
			material = self.props.material,
			mergeEmpty = self.props.mergeEmpty,
		})
	end
end

function Fill:didUpdate()
	self.updateProperties()
end

function Fill:didMount()
	self.updateProperties()
end

function Fill:render()
	local localization = if FFlagRemoveUILibraryCompatLocalization then self.props.Localization else self.props.Localization:get()

	local mergeEmpty = self.props.mergeEmpty
	local material = self.props.material

	return Roact.createFragment({
		EditSettings = Roact.createElement(EditSettings, {
			LayoutOrder = 1,
			mergeEmpty = mergeEmpty,
			setMergeEmpty = self.props.dispatchSetMergeEmpty,
		}),

		MaterialSettings = Roact.createElement(MaterialSettings, {
			LayoutOrder = 2,
			material = material,
			setMaterial = self.props.dispatchSetMaterial,
		}),

		FillButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 3,
			Buttons = {
				{
					Key = "Fill",
					Name = localization:getText("ToolName", "Fill"),
					Active = true,
					OnClicked = self.onFillClicked,
				}
			}
		}),
	})
end

Fill = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
})(Fill)

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Fill,
		material = state[REDUCER_KEY].material,
		mergeEmpty = state[REDUCER_KEY].mergeEmpty,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToFill = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchSetMaterial = function (mat)
			dispatchToFill(SetMaterial(mat))
		end,
		dispatchSetMergeEmpty = function (mergeEmpty)
			dispatchToFill(SetMergeEmpty(mergeEmpty))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Fill)
