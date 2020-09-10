--[[
	Displays panels associated with the Clear tool
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local StudioUI = FFlagTerrainToolsUseDevFramework and Framework.StudioUI or nil
local Dialog = FFlagTerrainToolsUseDevFramework and StudioUI.Dialog or nil

local UILibraryCompat = Plugin.Src.UILibraryCompat
local Button = FFlagTerrainToolsUseDevFramework and require(UILibraryCompat.Button) or nil

local StyledDialog = not FFlagTerrainToolsUseDevFramework and UILibrary.Component.StyledDialog or nil

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local TextService = game:GetService("TextService")

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

function Clear:init()
	self.state = {
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

		if FFlagTerrainToolsUseDevFramework then
			self.props.Terrain:get():Clear()
		else
			TerrainInterface.getTerrain(self):Clear()
		end

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
	if not FFlagTerrainToolsUseDevFramework then
		-- Clear tool rendering under dev framework is very different
		-- so can't share the same :_render() like other components
		return self:DEPRECATED_render()
	end

	local theme = self.props.Theme:get()
	local localization = self.props.Localization:get()

	if not self.state.showingDialog then
		return nil
	end

	local message = localization:getText("ClearTool", "ConfirmationMessage")
	local messageSize = TextService:GetTextSize(message, theme.textSize, theme.font, Vector2.new())
	local messageWidth = messageSize.x

	local dialogWidth = math.max(DIALOG_MIN_WIDTH,
		PADDING + ICON_SIZE + PADDING + messageWidth + PADDING)

	local Buttons = {
		{Key = KEY_NO, Text = localization:getText("Confirmation", "No")},
		{Key = KEY_YES, Text = localization:getText("Confirmation", "Yes"), Style = "Primary"},
	}

	local buttonComponents = {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 8),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),
	}

	local buttonWidth = BUTTON_WIDTH
	local buttonHeight = BUTTON_HEIGHT
	local textSize = theme.textSize

	-- Copied from UI Library StyledDialog and BaseDialog
	local function renderButton(button, index, activated)
		return Roact.createElement(Button, {
			Size = UDim2.new(0, buttonWidth, 0, buttonHeight),
			LayoutOrder = index,
			Style = button.Style,

			OnClick = activated,
			RenderContents = function(buttonTheme)
				return {
					Text = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						Font = buttonTheme.font,
						Text = button.Text,
						TextSize = textSize,
						TextColor3 = buttonTheme.textColor,
					})
				}
			end,
		})
	end

	for index, button in ipairs(Buttons) do
		table.insert(buttonComponents, renderButton(button, index, function()
			self.onButtonClicked(button.Key)
		end))
	end
	-- End copied from UI Library StyledDialog and BaseDialog

	return Roact.createElement(Dialog, {
		Title = localization:getText("ClearTool", "ConfirmationTitle"),
		Size = Vector2.new(dialogWidth, DIALOG_HEIGHT),
		MinSize = Vector2.new(dialogWidth, DIALOG_HEIGHT),
		Resizable = false,
		Modal = true,

		Enabled = true,

		OnClose = self.onNoClicked,
	}, {
		Background = Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
				PaddingTop = UDim.new(0, 8),
			}),

			Content = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, -32),
				BackgroundTransparency = 1,
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
			}),

			Buttons = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 24),
				BackgroundTransparency = 1,
			}, buttonComponents)
		})
	})
end

function Clear:DEPRECATED_render()
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
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(Clear, {
		Theme = ContextItems.UILibraryTheme,
		Localization = ContextItems.UILibraryLocalization,
		Terrain = ContextItems.Terrain,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeTool = function (toolName)
			dispatch(ChangeTool(toolName))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(Clear)
