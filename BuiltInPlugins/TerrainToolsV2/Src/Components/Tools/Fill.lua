--[[
	Displays panels associated with the Fill tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

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
	local mergeEmpty = self.props.mergeEmpty
	local material = self.props.material

	return withLocalization(function(localization)
		return withTheme(function(theme)
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
		end)
	end)

end

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
