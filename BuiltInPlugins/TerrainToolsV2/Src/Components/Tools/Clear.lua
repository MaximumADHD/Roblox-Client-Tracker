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
local StyledDialog = require(UILibrary.Components.StyledDialog)

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local CoreGui = game:GetService("CoreGui")
local TextService = game:GetService("TextService")
local Workspace = game:GetService("Workspace")

local FFlagTerrainToolsClearConfirmationDialog = game:GetFastFlag("TerrainToolsClearConfirmationDialog")

local Clear = Roact.PureComponent:extend(script.Name)

local KEY_YES = "yes"
local KEY_NO = "no"

local INFO_ICON = "rbxasset://textures/DevConsole/Info.png"
local ICON_SIZE = 32

local BUTTON_WIDTH = 72
local BUTTON_HEIGHT = 24
local PADDING = 8

-- The dialog's width depends on the text, but we need to ensure the buttons are still visible
local DIALOG_MIN_WIDTH = (2 * BUTTON_WIDTH) + (3 * PADDING)
local DIALOG_HEIGHT = 80

if game:GetFastFlag("TerrainToolsRefactorTerrainGeneration") then
	function Clear:init()
		-- TODO: Remove clearingStarted when removing FFlagTerrainToolsClearConfirmationDialog
		-- showingDialog has replaced it
		self.state = {
			clearingStarted = false,
			showingDialog = false,
		}

		self.onYesClicked = function()
			if self.state.clearing then
				return
			end

			self:setState({
				clearingStarted = true,
				showingDialog = false,
			})

			Workspace.Terrain:Clear()
			ChangeHistoryService:SetWaypoint("Terrain Clear")
			self.props.dispatchChangeTool(ToolId.None)
		end

		self.onNoClicked = function()
			self.props.dispatchChangeTool(ToolId.None)
		end

		self.onButtonClicked = function(key)
			if key == KEY_YES then
				self.onYesClicked()
			elseif key == KEY_NO then
				self.onNoClicked()
			end
		end
	end

	function Clear:didMount()
		-- We need to create the dialog on a separate thread because the CreateQWidgetPluginGui() call yields
		spawn(function()
			self:setState({
				showingDialog = true,
			})
		end)
	end

	function Clear:render()
		if FFlagTerrainToolsClearConfirmationDialog then
			return withTheme(function(theme)
				return withLocalization(function(localization)
					local message = localization:getText("ClearTool", "ConfirmationMessage")
					local messageSize = TextService:GetTextSize(message, theme.textSize, theme.font, Vector2.new())
					local messageWidth = messageSize.x

					local dialogWidth = math.max(DIALOG_MIN_WIDTH,
						PADDING + ICON_SIZE + PADDING + messageWidth + PADDING)

					return self.state.showingDialog and Roact.createElement(StyledDialog, {
						Title = localization:getText("ClearTool", "ConfirmationTitle"),
						Buttons = {
							{Key = KEY_NO, Text = localization:getText("Confirmation", "No")},
							{Key = KEY_YES, Text = localization:getText("Confirmation", "Yes"), Style = "Primary"},
						},

						OnButtonClicked = self.onButtonClicked,
						OnClose = self.onNoClicked,

						Size = Vector2.new(dialogWidth, DIALOG_HEIGHT),
						MinSize = Vector2.new(dialogWidth, DIALOG_HEIGHT),
						Resizable = false,

						BorderPadding = PADDING,
						ButtonPadding = PADDING,

						ButtonWidth = BUTTON_WIDTH,
						ButtonHeight = BUTTON_HEIGHT,

						TextSize = theme.textSize,
					}, {
						Icon = Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
							BackgroundTransparency = 1,
							Image = INFO_ICON,
						}),

						Message = Roact.createElement("TextLabel", {
							Position = UDim2.new(0, ICON_SIZE + PADDING, 0, 0),
							Size = UDim2.new(0, messageWidth, 1, 0),
							BackgroundTransparency = 1,
							Text = localization:getText("ClearTool", "ConfirmationMessage"),
							Font = theme.font,
							TextSize = theme.textSize,
							TextColor3 = theme.textColor,
							TextYAlignment = Enum.TextYAlignment.Top,
						}),
					})
				end)
			end)
		else
			return withLocalization(function (localization)
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
