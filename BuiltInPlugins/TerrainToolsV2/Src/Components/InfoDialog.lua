--[[
	Display a dialog box with an error icon to the user
	Props:
		string Title
			The title to use for the dialog
		string MainText
			An overview of the error that occurred
		string SubText
			Longer description of the error message
		table LinkInfo
			An optional clickable link that will appear below the SubText
				string Text
					the clickable text that will appear
				callback OnClick
					the function called when the link is clicked
		string Image
			Asset ID of the image shown on the left of the dialog window, e.g.: "rbxasset://textures/ui/ErrorIcon.png"
		callback OnClose
			Called when the user either clicks the "ok" button or closes the dialog
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local UI = Framework.UI
local Container = UI.Container

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local LinkText = UI.LinkText
local Image = UI.Decoration.Image

local InfoDialog = Roact.PureComponent:extend(script.Name)

local TextService = game:GetService("TextService")

local MAX_LABEL_WIDTH = 400
local ICON_WIDTH = 44

function InfoDialog:init()
	self.state = {
		showingDialog = false,
	}

	self.close = function()
		self:setState({
			showingDialog = false,
		})

		self.props.OnClose()
	end
end

function InfoDialog:didMount()
	spawn(function()
		self:setState({
			showingDialog = true,
		})
	end)
end

function InfoDialog:render()
	local localization = self.props.Localization:get()

	local title = self.props.Title
	local mainText = self.props.MainText
	local subText = self.props.SubText
	local linkInfo = self.props.LinkInfo
	local linkText = linkInfo and linkInfo.Text or ""
	local image = self.props.Image

	local padding = 8
	local textSize = 20
	local textFontMain = Enum.Font.SourceSansBold
	local textFontSub = Enum.Font.SourceSans

	local mainTextSize = TextService:GetTextSize(
		mainText,
		textSize,
		textFontMain,
		Vector2.new(MAX_LABEL_WIDTH, math.huge)
	)

	local subTextSize = TextService:GetTextSize(
		subText,
		textSize,
		textFontSub,
		Vector2.new(MAX_LABEL_WIDTH, math.huge)
	)

	local linkTextSize = linkInfo and TextService:GetTextSize(
		linkText,
		textSize,
		textFontSub,
		Vector2.new(MAX_LABEL_WIDTH, math.huge)
	) or Vector2.new(0, 0)

	local labelWidth = math.max(mainTextSize.X, math.max(subTextSize.X, linkTextSize.X))
	local dialogWidth = ICON_WIDTH + 20 + labelWidth
	local dialogHeight = mainTextSize.Y + padding + subTextSize.Y + (linkInfo and (padding + linkTextSize.Y) or 0)

	return self.state.showingDialog and Roact.createElement(StyledDialog, {
		Enabled = true,
		Modal = false,
		Title = title,
		OnClose = self.close,
		OnButtonPressed = self.close,
		Buttons = {
			{ Key = "OK", Text = localization:getText("Action", "OK"), Style = "RoundPrimary" },
		},
		MinContentSize = Vector2.new(dialogWidth, dialogHeight),
	}, {
		Icon = Roact.createElement(Container, {
			Size = UDim2.new(0, ICON_WIDTH, 0, ICON_WIDTH),
		}, {
			Decoration = Roact.createElement(Image, {
				Style = {
					Image = image,
				},
			})
		}),

		TextSection = Roact.createElement(Container, {
			Position = UDim2.new(0, ICON_WIDTH + 20, 0, 0),
			Size = UDim2.new(1, -(ICON_WIDTH + 20), 1, 0),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, padding),
			}),

			MainText = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, mainTextSize.Y),

				Text = mainText,

				Font = textFontMain,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			SubText = Roact.createElement(TextLabel, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, subTextSize.Y),

				Text = subText,
				TextWrapped = true,

				Font = textFontSub,
				TextSize = textSize,

				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			Link = linkInfo and Roact.createElement(LinkText, {
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, linkTextSize.Y),

				Text = linkText,
				TextWrapped = true,

				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,

				OnClick = linkInfo.OnClick,
			}),
		}),
	})
end

ContextServices.mapToProps(InfoDialog, {
	Localization = ContextItems.UILibraryLocalization,
})

return InfoDialog
