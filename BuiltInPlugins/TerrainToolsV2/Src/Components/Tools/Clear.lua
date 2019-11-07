--[[
	Displays panels associated with the Select tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Functions = Plugin.Src.Components.Functions
local TerrainGeneration = require(Functions.TerrainGeneration)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local Clear = Roact.PureComponent:extend(script.Name)

function Clear:init()
	self.contextToConfirmation = function(theme, localization)
		TerrainGeneration.SetConfirmationVisible(theme, localization)
	end
end
function Clear:didMount()
	TerrainGeneration.OnClearConfirmedFunc(self.props.dispatchChangeTool)
end

function Clear:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			self.contextToConfirmation(theme, localization)
		end)
	end)
end

local function MapStateToProps (state, props)
	return {
		currentTool = state.Tools.currentTool,
	}
end

local function MapDispatchToProps (dispatch)
	return {
		dispatchChangeTool = function (toolName)
			dispatch(ChangeTool(ToolId.None))
		end
	}
end
return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Clear)
