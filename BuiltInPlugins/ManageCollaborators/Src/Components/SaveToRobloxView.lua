local TextService = game:GetService("TextService")

local StudioPublishService = game:GetService("StudioPublishService")
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer
local Localization = ContextServices.Localization

local Analytics = require(Plugin.Src.Util.Analytics)

local SaveToRobloxView = Roact.PureComponent:extend("SaveToRobloxView")

function SaveToRobloxView:render()
	local props = self.props
	
	local closeWidget = props.CloseWidget
	local localization = props.Localization

	local style = props.Stylizer
	
	local buttonText = localization:getText("Buttons", "SaveToRoblox")
	local buttonTextExtents = TextService:GetTextSize(buttonText, style.saveToRobloxView.Text.TextSize,
		style.saveToRobloxView.Text.Font, Vector2.new(math.huge, math.huge))

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = style.backgroundColor,
	}, {
		SaveText = Roact.createElement("TextLabel", {
			Text = localization:getText("Description", "SaveToRoblox"),
			TextColor3 = style.saveToRobloxView.Text.TextColor3,
			TextSize = style.saveToRobloxView.Text.TextSize,
			Font = style.saveToRobloxView.Text.Font,
			Position = UDim2.new(.5, 0, 0, style.saveToRobloxView.Text.YOffset),
			AnchorPoint = Vector2.new(.5, .5),
		}),

		SaveButton = Roact.createElement(Button, {
			Style = "Active",
			Text = buttonText,
			Size = UDim2.new(0, buttonTextExtents.X + style.saveToRobloxView.publishButton.paddingX,
				0, buttonTextExtents.Y + style.saveToRobloxView.publishButton.paddingY),	
			Position = UDim2.new(0.5, 0, 0, style.saveToRobloxView.publishButton.offset),
			AnchorPoint = Vector2.new(.5, .5),
			OnClick = function()
				Analytics.reportSaveToRobloxPressed()
				StudioPublishService:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
				closeWidget()
			end
		})
	})
end

SaveToRobloxView = withContext({
	Stylizer = Stylizer,
	Localization = Localization
})(SaveToRobloxView)

return SaveToRobloxView
