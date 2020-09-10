--[[
	A simple port of Src/Components/Functions/ConfirmationPrompt.lua into Roact
	TODO: Replace with a new component
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local kWidth = 362
local kHeight = 148

local kStandardHMargin = 47
local kStandardVMargin = 20
local kButtonHeight = 32
local kButtonWidth = 120

local TEXT_SIZE = 18

local kTitleBarHeight = 25

local ConfirmationPrompt = Roact.PureComponent:extend(script.Name)

function ConfirmationPrompt:_render(theme)
	local anchorPoint = self.props.AnchorPoint or Vector2.new(0, 0)
	local position = self.props.Position or UDim2.new(0, 0, 0, 0)

	local text = self.props.Text or ""

	local onYesClicked = self.props.OnYesClicked
	local onNoClicked = self.props.OnNoClicked

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		Position = position,
		Size = UDim2.new(0, kWidth, 0, kHeight),
		BackgroundColor3 = theme.backgroundColor,
	}, {
		TitleLabel = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, kTitleBarHeight),
			BackgroundColor3 = theme.shadowColor,
			Text = "",
		}),

		ConfirmMessage = Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.4, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = text,
			TextSize = TEXT_SIZE,
			Font = theme.font,
			TextColor3 = theme.textColor,
		}),

		YesButton = Roact.createElement("TextButton", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -kStandardHMargin, 1, -kStandardVMargin - kButtonHeight),
			Size = UDim2.new(0, kButtonWidth, 0, kButtonHeight),
			BackgroundColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor,
			BorderColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor,
			-- TODO: Localize this
			Text = "Yes",
			TextSize = TEXT_SIZE,
			Font = theme.font,
			TextColor3 = theme.roundTextButtonTheme.styleSheet.TextColor,

			[Roact.Event.Activated] = onYesClicked,
		}),

		NoButton = Roact.createElement("TextButton", {
			Position = UDim2.new(0, kStandardHMargin, 1, -kStandardVMargin - kButtonHeight),
			Size = UDim2.new(0, kButtonWidth, 0, kButtonHeight),
			BackgroundColor3 = theme.shadowColor,
			BorderColor3 = theme.borderColor,
			-- TODO: Localize this
			Text = "No",
			TextSize = TEXT_SIZE,
			Font = theme.font,
			TextColor3 = theme.textColor,

			[Roact.Event.Activated] = onNoClicked,
		})
	})
end

function ConfirmationPrompt:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Theme:get())
	else
		return withTheme(function(theme)
			return self:_render(theme)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(ConfirmationPrompt, {
		Theme = ContextItems.UILibraryTheme,
	})
end

return ConfirmationPrompt
