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

local ConfirmationPrompt = require(Plugin.Src.Components.ConfirmationPrompt)

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")

local Clear = Roact.PureComponent:extend(script.Name)

if game:GetFastFlag("TerrainToolsRefactorTerrainGeneration") then
	function Clear:init()
		self.state = {
			clearingStarted = false
		}

		self.onYesClicked = function()
			if self.state.clearing then
				return
			end

			self:setState({
				clearingStarted = true,
			})

			Workspace.Terrain:Clear()
			ChangeHistoryService:SetWaypoint("Terrain Clear")
			self.props.dispatchChangeTool(ToolId.None)
		end

		self.onNoClicked = function()
			self.props.dispatchChangeTool(ToolId.None)
		end
	end

	function Clear:render()
		return withLocalization(function(localization)
			if self.state.clearingStarted then
				return
			end

			return Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				TerrainClearConfirmationPrompt = Roact.createElement("ScreenGui", {}, {
					ConfirmationPrompt = Roact.createElement(ConfirmationPrompt, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),

						Text = localization:getText("ClearTool", "ConfirmationMessage"),

						OnYesClicked = self.onYesClicked,
						OnNoClicked = self.onNoClicked,
					}),
				}),
			})
		end)
	end

	local function MapDispatchToProps (dispatch)
		return {
			dispatchChangeTool = function (toolName)
				dispatch(ChangeTool(toolName))
			end,
		}
	end

	return RoactRodux.connect(nil , MapDispatchToProps)(Clear)
else

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
end
