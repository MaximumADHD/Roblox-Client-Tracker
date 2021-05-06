--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework).ContextServices
local THEME_REFACTOR = require(Libs.Framework.Util.RefactorFlags).THEME_REFACTOR

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local ToggleButton
if FFlagToolboxReplaceUILibraryComponentsPt1 then
	ToggleButton = require(Libs.Framework).UI.ToggleButton
else
	local UILibrary = require(Libs.UILibrary)
	ToggleButton = UILibrary.Component.ToggleButton
end
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local GuiService = game:GetService("GuiService")

local ConfigCopy = Roact.PureComponent:extend("ConfigCopy")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

local TITLE_HEIGHT = 40

local LINK_BUTTON_WIDTH = 100
local LINK_BUTTON_HEIGHT = 20

local DISCLOSURE_HEIGHT = 80
local UNVERIFIED_HEIGHT = 50

function ConfigCopy:init(props)
	if not FFlagToolboxReplaceUILibraryComponentsPt1 then
		self.state = {}
	end

	self.onLearnMoreActivated = function(rbx, inputObject)
		if self.props.CopyEnabled then
			GuiService:OpenBrowserWindow(AssetConfigConstants.TERM_OF_USE_URL)
		else
			GuiService:OpenBrowserWindow(AssetConfigConstants.ACCOUNT_SETTING_URL)
		end
	end

	self.toggleCallback = function()
		local props = self.props
		props.ToggleCallback(not props.CopyOn)
	end
end

function ConfigCopy:render()
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		return withLocalization(function(_, localizedContent)
			return self:renderContent(nil, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(_, localizedContent)
				return self:renderContent(theme, localizedContent)
			end)
		end)
	end
end

function ConfigCopy:renderContent(theme, localizedContent)
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		if THEME_REFACTOR then
			theme = self.props.Stylizer
		else
			theme = self.props.Theme:get("Plugin")
		end
	end

	local props = self.props

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local CopyOn = props.CopyOn
	local CopyEnabled = props.CopyEnabled

	local ToggleCallback = props.ToggleCallback

	local publishAssetTheme = theme.publishAsset
	local publishAssetLocalized = localizedContent.AssetConfig.PublishAsset

	local informationText = CopyEnabled and localizedContent.AssetConfig.Terms or localizedContent.AssetConfig.Accounts
	local informationHeight = CopyEnabled and DISCLOSURE_HEIGHT or UNVERIFIED_HEIGHT

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, informationHeight + TOGGLE_BUTTON_HEIGHT + LINK_BUTTON_HEIGHT + 10),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TITLE_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		RightFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, - AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TotalHeight),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				-- TODO: Change the padding when adjust the layout
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, 0),
				PaddingRight = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 0)
			}),

			ToggleButton = Roact.createElement(ToggleButton,
				FFlagToolboxReplaceUILibraryComponentsPt1 and {
					Disabled = not CopyEnabled,
					LayoutOrder = 1,
					OnClick = self.toggleCallback,
					Selected = CopyOn,
					Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
				} or {
					Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
					Enabled = CopyEnabled, -- Depends on the message from the server.
					IsOn = CopyOn,

					onToggle = ToggleCallback,

					LayoutOrder = 1,
				}
			),

			TipsLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, informationHeight),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = informationText,
				TextWrapped = true,
				TextColor3 = publishAssetTheme.tipsTextColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = Constants.FONT_SIZE_LARGE,
				Font = Constants.FONT,

				LayoutOrder = 2,
			}),

			LinkButton = Roact.createElement(LinkButton, {
				Size = UDim2.new(0, LINK_BUTTON_WIDTH, 0, LINK_BUTTON_HEIGHT),
				Text = publishAssetLocalized.LearnMore,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Font = Constants.FONT,
				onActivated = self.onLearnMoreActivated,

				LayoutOrder = 3,
			}),
		}),
	})
end

if FFlagToolboxReplaceUILibraryComponentsPt1 then
	ContextServices.mapToProps(ConfigCopy, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end

return ConfigCopy