--[[
	Displays panels associated with the Fill tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local FFlagTerrainToolsUseFragmentsForToolPanel = game:GetFastFlag("TerrainToolsUseFragmentsForToolPanel")
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local EditSettings = require(ToolParts.EditSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)
local ButtonGroup = require(ToolParts.ButtonGroup)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetMergeEmpty = require(Actions.SetMergeEmpty)
local SetMaterial = require(Actions.SetMaterial)

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local TerrainRegionEditor = require(Plugin.Src.Components.Functions.TerrainRegionEditor)

local REDUCER_KEY = "FillTool"

local Fill = Roact.PureComponent:extend(script.Name)

function Fill:init(initialProps)
	self.toggleButtonFn = function(container)
		if FFlagTerrainToolsRefactor then
			warn("Fill.toggleButtonFn() should not be used when FFlagTerrainToolsRefactor is true")
		end
		if container == "MergeEmpty" then
			self.props.dispatchSetMergeEmpty(not self.props.mergeEmpty)
		end
	end

	self.setTextFn = function (text, container)
		if FFlagTerrainToolsRefactor then
			warn("Fill.setTextFn() should not be used when FFlagTerrainToolsRefactor is true")
		end
		if container == "Material" then
			self.props.dispatchSetMaterial(text)
			return
		end
	end

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
	if FFlagTerrainToolsRefactor then
		self.updateProperties()
	else
		TerrainRegionEditor.ChangeProperties({
			material = self.props.material,
			mergeEmpty = self.props.mergeEmpty,
		})
	end
end

function Fill:didMount()
	if FFlagTerrainToolsRefactor then
		self.updateProperties()
	else
		TerrainRegionEditor.ChangeProperties({
			material = self.props.material,
			mergeEmpty = self.props.mergeEmpty,
		})
	end
end

function Fill:render()
	local mergeEmpty = self.props.mergeEmpty
	local mat = self.props.material
	local toggleButtonFn = self.toggleButtonFn
	local setTextFn = self.setTextFn

	return withLocalization(function(localization)
		return withTheme(function(theme)
			local children = {

				EditSettings = Roact.createElement(EditSettings, {
					LayoutOrder = 1,
					mergeEmpty = mergeEmpty,
					toggleButton = toggleButtonFn,
					setMergeEmpty = self.props.dispatchSetMergeEmpty,
				}),

				MaterialSettings = Roact.createElement(MaterialSettings, {
					LayoutOrder = 2,
					material = mat,

					setText = setTextFn,
					setMaterial = self.props.dispatchSetMaterial,
				}),

				FillButtonFrame = FFlagTerrainToolsRefactor and Roact.createElement(ButtonGroup, {
					LayoutOrder = 3,
					Buttons = {
						{
							Key = "Fill",
							Name = localization:getText("ToolName", "Fill"),
							Active = true,
							OnClicked = self.onFillClicked,
						}
					}
				}) or Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 28),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				}, {
					FillButton = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 200, 0, 28),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),

						Name = localization:getText("ToolName", "Fill"),

						Active = true,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = function()
							if mat then TerrainRegionEditor.OnButtonClick() end
						end,
					}),
				}),
			}

			if FFlagTerrainToolsUseFragmentsForToolPanel then
				return Roact.createFragment(children)
			else
				children.UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, children)
			end
		end)
	end)

end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Fill,
		mergeEmpty = state[REDUCER_KEY].mergeEmpty,
		material = state[REDUCER_KEY].material,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToFill = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchSetMergeEmpty = function (mergeEmpty)
			dispatchToFill(SetMergeEmpty(mergeEmpty))
		end,
		dispatchSetMaterial = function (mat)
			dispatchToFill(SetMaterial(mat))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Fill)
