--[[
	Display a dialog box with an error icon to the user
	Props:
		string Title
			The title to use for the dialog
		string MainText
			An overview of the error that occurred
		string SubText
			Longer description of the error message
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
local Image = UI.Decoration.Image

local ErrorDialog = Roact.PureComponent:extend(script.Name)

function ErrorDialog:init()
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

function ErrorDialog:didMount()
	spawn(function()
		self:setState({
			showingDialog = true,
		})
	end)
end

function ErrorDialog:render()
	local localization = self.props.Localization:get()

	local title = self.props.Title
	local mainText = self.props.MainText
	local subText = self.props.SubText

	return self.state.showingDialog and Roact.createElement(StyledDialog, {
		Enabled = true,
		Modal = true,
		Title = title,
		OnClose = self.close,
		OnButtonPressed = self.close,
		Buttons = {
			{ Key = "OK", Text = localization:getText("Action", "OK"), Style = "RoundPrimary" },
		},
		MinContentSize = Vector2.new(360, 68),
	}, {
		Icon = Roact.createElement(Container, {
			Size = UDim2.new(0, 44, 0, 44),
		}, {
			Decoration = Roact.createElement(Image, {
				Style = {
					Image = "rbxasset://textures/ui/ErrorIcon.png",
				},
			})
		}),

		TextSection = Roact.createElement(Container, {
			Position = UDim2.new(0, 64, 0, 0),
			Size = UDim2.new(1, -64, 1, 0),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),

			MainText = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 20),

				Text = mainText,

				Font = Enum.Font.SourceSansBold,
				TextSize = 20,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			SubText = Roact.createElement(TextLabel, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 40),

				Text = subText,
				TextWrapped = true,

				TextSize = 20,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),
	})
end

ContextServices.mapToProps(ErrorDialog, {
	Localization = ContextItems.UILibraryLocalization,
})

return ErrorDialog
