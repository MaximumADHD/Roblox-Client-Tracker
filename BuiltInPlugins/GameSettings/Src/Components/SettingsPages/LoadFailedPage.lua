--[[
	Shown when a page fails to load (either from a network or Lua error)

	Props:
		function OnRetry - callback when the user clicks the retry button
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUI = require(Plugin.Framework.UI)

local Button = FrameworkUI.Button
local Container = FrameworkUI.Container
local HoverArea = FrameworkUI.HoverArea

local LoadFailedPage = Roact.Component:extend(script.Name)

function LoadFailedPage:init()
	self.failurePageRef = Roact.createRef()
end

function LoadFailedPage:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local onRetry = props.OnRetry

	local labelText = localization:getText("General", "SettingsFailedToLoad")
	local buttonText = localization:getText("General", "ButtonRetry")
	local maxLabelWidth = self.failurePageRef:getValue()
		and self.failurePageRef:getValue().AbsoluteSize.X - theme.settingsPage.failLabelPaddingX
		or math.huge
	local labelTextExtents = TextService:GetTextSize(labelText, theme.fontStyle.Normal.TextSize,
		theme.fontStyle.Normal.Font, Vector2.new(maxLabelWidth, math.huge))
	local buttonTextExtents = TextService:GetTextSize(buttonText, theme.fontStyle.Normal.TextSize,
		theme.fontStyle.Normal.Font, Vector2.new(math.huge, math.huge))

	return Roact.createElement(Container, {
		[Roact.Ref] = self.failurePageRef,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, theme.settingsPage.failPageListPaddingY),
		}),

		Label = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = 1,

			Text = labelText,

			Size = UDim2.fromOffset(labelTextExtents.X, labelTextExtents.Y),
			BackgroundTransparency = 1,
		}), {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, theme.settingsPage.failLabelPaddingX/2),
				PaddingRight = UDim.new(0, theme.settingsPage.failLabelPaddingX/2),
			}),
		}),

		PublishButton = Roact.createElement(Button, {
			LayoutOrder = 2,
			Style = "GameSettingsPrimaryButton",

			Text = buttonText,
			Size = UDim2.new(0, buttonTextExtents.X + theme.settingsPage.reloadButton.paddingX,
				0, buttonTextExtents.Y + theme.settingsPage.reloadButton.paddingY),

			OnClick = function()
				onRetry()
			end,
		}, {
			Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
		}),
	})
end

ContextServices.mapToProps(LoadFailedPage, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return LoadFailedPage