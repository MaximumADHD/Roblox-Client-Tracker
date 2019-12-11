--[[
	Displays panels associated with the Fill tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local TexturePath = "rbxasset://textures/TerrainTools/"

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local EditSettings = require(ToolParts.EditSettings)
local MaterialSettings = require(ToolParts.MaterialSettings)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetMergeEmpty = require(Actions.SetMergeEmpty)
local SetAutoMaterial = require(Actions.SetAutoMaterial)
local SetMaterial = require(Actions.SetMaterial)

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TerrainRegionEditor = require(Plugin.Src.Components.Functions.TerrainRegionEditor)

local REDUCER_KEY = "FillTool"

local Fill = Roact.PureComponent:extend(script.Name)

function Fill:init(initialProps)
	self.toggleButtonFn = function(container)
		if container == "MergeEmpty" then
			self.props.dispatchSetMergeEmpty(not self.props.mergeEmpty)
		end
	end

	self.setTextFn = function (text, container)
		if container == "Material" then
			self.props.dispatchSetMaterial(text)
			return
		end
	end
end

function Fill:didUpdate()
	TerrainRegionEditor.ChangeProperties({
		material = self.props.material,
		mergeEmpty = self.props.mergeEmpty,
	})
end

function Fill:didMount()
	TerrainRegionEditor.ChangeProperties({
		material = self.props.material,
		mergeEmpty = self.props.mergeEmpty,
	})
end

function Fill:render()
	local mergeEmpty = self.props.mergeEmpty
	local mat = self.props.material
	local toggleButtonFn = self.toggleButtonFn
	local setTextFn = self.setTextFn

	return withLocalization(function(localization)
		return withTheme(function(theme)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				EditSettings = Roact.createElement(EditSettings,{
					mergeEmpty = mergeEmpty,
					toggleButton = toggleButtonFn,
					LayoutOrder = 1,
				}),
				MaterialSettings = Roact.createElement(MaterialSettings, {
					currentTool = script.Name,
					toggleButton = toggleButtonFn,
					autoMaterial = autoMaterial,
					material = mat,
					setText = setTextFn,
					LayoutOrder = 2,
				}),
				FillButtonFrame = Roact.createElement("Frame", {
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
			})
		end)
	end)

end

local function MapStateToProps (state, props)
	return {
		mergeEmpty = state[REDUCER_KEY].mergeEmpty,
		material = state[REDUCER_KEY].material,
	}
end

local function MapDispatchToProps (dispatch)
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

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Fill)
