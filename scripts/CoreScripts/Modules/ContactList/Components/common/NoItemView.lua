--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	isImageEnabled: boolean,
	imageName: string,
	isFailedButtonEnabled: boolean,
	onFailedButtonActivated: () -> (),
	isCallButtonEnabled: boolean,
	onCallButtonActivated: () -> (),
	messageText: string,
}

local function NoItemView(props: Props)
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme

	-- TODO (timothyhsu): Localization
	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = 10000, -- Hack to push this to the back.
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 20),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
		}),

		Image = if props.isImageEnabled
			then React.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = Images[props.imageName],
				LayoutOrder = 1,
				Size = UDim2.fromOffset(96, 96),
			})
			else nil,

		Message = React.createElement("TextLabel", {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Font = font.Body.Font,
			LayoutOrder = 2,
			Text = props.messageText,
			TextColor3 = theme.TextDefault.Color,
			TextSize = font.Body.RelativeSize * font.BaseSize,
			TextTransparency = theme.TextDefault.Transparency,
			TextWrapped = true,
		}),

		FailedButton = if props.isFailedButtonEnabled
			then React.createElement("TextButton", {
				Size = UDim2.new(0, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundColor3 = theme.SystemPrimaryDefault.Color,
				BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
				BorderSizePixel = 0,
				Font = font.Header2.Font,
				LayoutOrder = 3,
				Text = RobloxTranslator:FormatByKey("InGame.CommonUI.Button.Retry"),
				TextColor3 = theme.SystemPrimaryContent.Color,
				TextSize = font.Header2.RelativeSize * font.BaseSize,
				TextTransparency = theme.SystemPrimaryContent.Transparency,
				[React.Event.Activated] = props.onFailedButtonActivated,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				UIPadding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
				}),
				UISizeConstraint = React.createElement("UISizeConstraint", {
					MinSize = Vector2.new(108, 36),
				}),
			})
			else nil,

		CallButton = if props.isCallButtonEnabled
			then React.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 0, 48),
				BackgroundColor3 = theme.SystemPrimaryDefault.Color,
				BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
				BorderSizePixel = 0,
				LayoutOrder = 3,
				[React.Event.Activated] = props.onCallButtonActivated,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				StartCallIcon = React.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(28, 28),
					BackgroundTransparency = 1,
					Image = "rbxassetid://14532752184",
					ImageColor3 = theme.SystemPrimaryContent.Color,
					LayoutOrder = 1,
				}),
				StartCallButtonText = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					Font = font.Header2.Font,
					LayoutOrder = 2,
					Text = RobloxTranslator:FormatByKey("Feature.Call.Prompt.StartCall"),
					TextColor3 = theme.SystemPrimaryContent.Color,
					TextSize = font.Header2.RelativeSize * font.BaseSize,
					TextTransparency = theme.SystemPrimaryContent.Transparency,
				}),
			})
			else nil,
	})
end

return NoItemView
