local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BiomeSettingsFragment = require(ToolParts.BiomeSettingsFragment)
local ButtonGroup = require(ToolParts.ButtonGroup)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local OtherGenerateSettings = require(ToolParts.OtherGenerateSettings)
local Panel = require(ToolParts.Panel)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetConvertMode = require(Actions.SetConvertMode)

local CONVERT_PART_REDUCER_KEY = "ConvertPartTool"

local ConvertPart = Roact.PureComponent:extend(script.Name)

function ConvertPart:init()
	self.onConvertClicked = function()
		-- TODO: Implement part conversion
		warn("TODO ConvertPart convert implementation")
	end
end

function ConvertPart:render()
	return withLocalization(function(localization)
		local convertMode = self.props.convertMode

		return Roact.createFragment({
			MapSettings = Roact.createElement(Panel, {
				Title = localization:getText("MapSettings", "MapSettings"),
				LayoutOrder = 1,
			}, {
				ConvertModeSelector = Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("ConvertMode", "ConvertMode"),
					LayoutOrder = 1,
				}, {
					Roact.createElement(SingleSelectButtonGroup, {
						Size = UDim2.new(0, 141, 0, 22),
						Selected = convertMode,
						Select = self.props.dispatchSetConvertMode,

						Options = {
							{
								Text = localization:getText("ConvertMode", "Biome"),
								Data = ConvertMode.Biome,
							}, {
								Text = localization:getText("ConvertMode", "Material"),
								Data = ConvertMode.Material,
							},
						}
					}),
				}),

				-- TODO: Connect this to Rodux store
				BiomeSettingsFragment = convertMode == ConvertMode.Biome and Roact.createElement(BiomeSettingsFragment, {
					LayoutOrder = 2,
					biomeSelection = {},
					selectBiome = function() warn("TODO ConvertPart selectBiome") end,
					biomeSize = 100,
					setBiomeSize = function() warn("TODO ConvertPart setBiomeSize") end,
					haveCaves = true,
					setHaveCaves = function() warn("TODO ConvertPart setHaveCaves") end,
				}),

				-- TODO: Connect this to Rodux store
				MaterialSettingsFragment = convertMode == ConvertMode.Material and Roact.createElement(MaterialSettingsFragment, {
					LayoutOrder = 2,
					material = Enum.Material.Grass,
					setMaterial = function() warn("TODO ConvertPart setMaterial") end,
				}),
			}),

			-- TODO: Connect this to Rodux store
			OtherGenerateSettings = convertMode == ConvertMode.Biome and Roact.createElement(OtherGenerateSettings, {
				LayoutOrder = 2,
				seed = "",
				setSeed = function() warn("TODO ConvertPart setSeed") end,
			}),

			ButtonGroup = Roact.createElement(ButtonGroup, {
				LayoutOrder = 3,
				Buttons = {
					{
						Key = "Convert",
						Name = localization:getText("ConvertPart", "Convert"),
						Active = true,
						OnClicked = self.onConvertClicked,
					},
				}
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.ConvertPart,

		convertMode = state[CONVERT_PART_REDUCER_KEY].convertMode,

		-- TODO: Connect to tool store
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToConvertPart = function(action)
		dispatch(ApplyToolAction(CONVERT_PART_REDUCER_KEY, action))
	end


	return {
		dispatchSetConvertMode = function(convertMode)
			dispatchToConvertPart(SetConvertMode(convertMode))
		end,

		-- TODO: Add actions
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ConvertPart)
