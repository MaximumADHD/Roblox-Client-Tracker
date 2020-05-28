--[[
	The top level container of the Game Settings window.
	Contains the menu bar, the footer, and the currently selected page.

	Props:
		table DEPRECATED_MenuEntries = The entries to show on the left side menu
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

local Container = FrameworkUI.Container
local MenuBar = require(Plugin.Src.Components.MenuBar)
local CurrentPage = require(Plugin.Src.Components.DEPRECATED_CurrentPage)
local Separator = require(Plugin.Src.Components.Separator)
local Footer = require(Plugin.Src.Components.Footer)
local PageManifest = require(Plugin.Src.Components.SettingsPages.PageManifest)

local StudioService = game:GetService("StudioService")
local TextService = game:GetService("TextService")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")
local FFlagStudioAddMonetizationToGameSettings = game:GetFastFlag("StudioAddMonetizationToGameSettings")
local FFlagStudioStandaloneGameMetadata = game:GetFastFlag("StudioStandaloneGameMetadata")

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init()
	self.state = {
		Selected = 1,
		PageContentOffset = game:GetFastFlag("GameSettingsNetworkRefactor") and 0 or nil,
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
				Entries = self.props.DEPRECATED_MenuEntries,
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
				Page = self.props.DEPRECATED_MenuEntries[Selected].Name,
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

	local isPublishedGame = not FFlagStudioStandaloneGameMetadata or props.GameId ~= 0

	local children = {}
	local menuEntries = {}
	if game:GetFastFlag("GameSettingsNetworkRefactor") then
		if isPublishedGame then
			for i,pageComponent in ipairs(PageManifest) do
				if pageComponent then
					menuEntries[i] = pageComponent.LocalizationId
					children[tostring(pageComponent)] = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Visible = i == Selected,
					}, {
						PageContents = Roact.createElement(pageComponent),
					})
				end
			end
		end
	end

	local publishText = localization:getText("General", "PublishText")
    local buttonText = localization:getText("General", "ButtonPublish")
	local buttonTextExtents = TextService:GetTextSize(buttonText, theme.fontStyle.Normal.TextSize,
		theme.fontStyle.Normal.Font, Vector2.new(math.huge, math.huge))

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
	}, ((FFlagGameSettingsPlaceSettings or FFlagStudioAddMonetizationToGameSettings) and not isPublishedGame) and {
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
	} or (game:GetFastFlag("GameSettingsNetworkRefactor") and {

		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 5),
		}),

		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		CenterContent = Roact.createElement(Container, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 1, -theme.footer.height),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			MenuBar = Roact.createElement(MenuBar, {
				LayoutOrder = 1,
				Entries = menuEntries,
				Selected = Selected,
				SelectionChanged = function(index)
					self:pageSelected(index)
				end,
			}),

			Separator = Roact.createElement(Separator, {
				LayoutOrder = 2,
				Size = UDim2.new(0, 3, 1, 0),
				Position = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 0, 0),
			}),

			PageContent = Roact.createElement("Frame", {
				LayoutOrder = 3,
				Size = UDim2.new(1, -self.state.PageContentOffset, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Change.AbsolutePosition] = function(rbx)
					local parent = rbx.Parent
					if not parent then return end

					local relativePosition = rbx.AbsolutePosition - parent.AbsolutePosition
					self:setState({ PageContentOffset = relativePosition.X })
				end,
			}, children)
		}),

		FooterContent = Roact.createElement(Container, {
			Size = UDim2.new(1, 0, 0, theme.footer.height),
			LayoutOrder = 2,
		}, {
			Footer = Roact.createElement(Footer, {
				OnClose = function(didSave, savePromise)
					self.props.OnClose(didSave, savePromise)
				end,
			})
		}),
	} or {
		--Add padding to main frame
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 5),
		}),
		--Add MenuBar to the left side of the screen
		MenuBar = Roact.createElement(MenuBar, {
			Entries = self.props.DEPRECATED_MenuEntries,
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
			Page = self.props.DEPRECATED_MenuEntries[Selected].Name,
		}),

		--Add footer for cancel and save buttons
		Footer = Roact.createElement(Footer, {
			OnClose = function(didSave, savePromise)
				self.props.OnClose(didSave, savePromise)
			end,
		})
	}))
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(MainView,{
		Localization = ContextServices.Localization,
		Theme = ContextServices.Theme
	})
end

if FFlagStudioStandaloneGameMetadata then
	MainView = RoactRodux.connect(
		function(state, props)
			return {
				GameId = state.Metadata.gameId,
			}
		end
	)(MainView)
end

return MainView