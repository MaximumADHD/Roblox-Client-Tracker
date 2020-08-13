--[[
	The top level container of the Game Settings window.
	Contains the menu bar, the footer, and the currently selected page.

	Props:
		table MenuEntries = The entries to show on the left side menu
		int Selected = The index of the currently selected menu entry
		function SelectionChanged = A callback when the selected entry is changed
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUI = require(Plugin.Framework.UI)

local Button = FrameworkUI.Button
local HoverArea = FrameworkUI.HoverArea

local FrameworkUtil = require(Plugin.Framework.Util)
local FitTextLabel = FrameworkUtil.FitFrame.FitTextLabel

local MenuBar = require(Plugin.Src.Components.MenuBar)
local CurrentPage = require(Plugin.Src.Components.CurrentPage)
local Separator = require(Plugin.Src.Components.Separator)
local Footer = require(Plugin.Src.Components.Footer)

local StudioService = game:GetService("StudioService")
local TextService = game:GetService("TextService")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init()
	self.state = {
		Selected = 1,
	}
end

function MainView:pageSelected(index)
	self:setState({
		Selected = index,
	})
end

function MainView:DEPRECATED_render()
	return withTheme(function(theme)
		local Selected = self.state.Selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			--Add padding to main frame
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 5),
			}),
			--Add MenuBar to the left side of the screen
			MenuBar = Roact.createElement(MenuBar, {
				Entries = self.props.MenuEntries,
				Selected = Selected,
				SelectionChanged = function(index)
					self:pageSelected(index)
				end,
			}),

			Separator = Roact.createElement(Separator, {
				Size = UDim2.new(0, 3, 1, 0),
				Position = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 0, 0),
			}),

			--Add the page we are currently on
			Page = Roact.createElement(CurrentPage, {
				Page = self.props.MenuEntries[Selected].Name,
			}),

			--Add footer for cancel and save buttons
			Footer = Roact.createElement(Footer, {
				OnClose = function(didSave, savePromise)
					self.props.OnClose(didSave, savePromise)
				end,
			})
		})
	end)
end

function MainView:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local Selected = self.state.Selected
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local isPublishedGame = props.GameId ~= 0

	local publishText = localization:getText("General", "PublishText")
    local buttonText = localization:getText("General", "ButtonPublish")
	local buttonTextExtents = TextService:GetTextSize(buttonText, theme.fontStyle.Normal.TextSize,
		theme.fontStyle.Normal.Font, Vector2.new(math.huge, math.huge))

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
	}, (not isPublishedGame) and {
		UseText = Roact.createElement(FitTextLabel, Cryo.Dictionary.join(theme.fontStyle.Normal, {
            Position = UDim2.new(0.5, 0, 0, theme.mainView.publishText.offset),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Text = publishText,

			BackgroundTransparency = 1,

			width = theme.mainView.publishText.width,
        })),

        PublishButton = Roact.createElement(Button, {
            Style = "GameSettingsPrimaryButton",

            Text = buttonText,
            Size = UDim2.new(0, buttonTextExtents.X + theme.mainView.publishButton.paddingX,
                0, buttonTextExtents.Y + theme.mainView.publishButton.paddingY),
            Position = UDim2.new(0.5, 0, 0, theme.mainView.publishButton.offset),
            AnchorPoint = Vector2.new(0.5, 0.5),

            OnClick = function()
				StudioService:ShowPublishToRoblox()
				self.props.OnClose(false)
            end,
        }, {
            Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
        }),
	} or {
		--Add padding to main frame
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 5),
		}),
		--Add MenuBar to the left side of the screen
		MenuBar = Roact.createElement(MenuBar, {
			Entries = self.props.MenuEntries,
			Selected = Selected,
			SelectionChanged = function(index)
				self:pageSelected(index)
			end,
		}),

		Separator = Roact.createElement(Separator, {
			Size = UDim2.new(0, 3, 1, 0),
			Position = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 0, 0),
		}),

		--Add the page we are currently on
		Page = Roact.createElement(CurrentPage, {
			Page = self.props.MenuEntries[Selected].Name,
		}),

		--Add footer for cancel and save buttons
		Footer = Roact.createElement(Footer, {
			OnClose = function(didSave, savePromise)
				self.props.OnClose(didSave, savePromise)
			end,
		})
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(MainView,{
		Localization = ContextServices.Localization,
		Theme = ContextServices.Theme
	})
end

MainView = RoactRodux.connect(
	function(state, props)
		return {
			GameId = state.Metadata.gameId,
		}
	end
)(MainView)

return MainView