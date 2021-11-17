--[[
	For managing cloud localization tables
]]
local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
})
local LinkText = Framework.UI.LinkText

local AnalyticsContext = require(Plugin.Src.ContextServices.AnalyticsContext)
local LabeledTextButton = require(Plugin.Src.Components.LabeledTextButton)
local Collapsible = require(Plugin.Src.Components.Collapsible)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local ShowDialog = require(Plugin.Src.Util.ShowDialog)
local DownloadCloudTable = require(Plugin.Src.Thunks.DownloadCloudTable)
local UploadCloudTable = require(Plugin.Src.Thunks.UploadCloudTable)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local FFlagLocalizationToolsAllowUploadZhCjv = game:GetFastFlag("LocalizationToolsAllowUploadZhCjv")

local CloudTableSection = Roact.PureComponent:extend("CloudTableSection")

function CloudTableSection:init()
	self.downloadCloudTable = function()
		local props = self.props
		local api = props.API:get()
		local localization = props.Localization
		local analytics = props.Analytics:get()
		local cloudTableId = props.CloudTableId

		props.DownloadAndSaveCloudTable(api, localization, analytics, cloudTableId)
	end

	self.updateCloudTable = function(isReplace)
		local props = self.props
		local plugin = props.Plugin:get()
		local api = props.API:get()
		local localization = props.Localization
		local analytics = props.Analytics:get()
		local mouse = props.Mouse

		local theme
		if THEME_REFACTOR then
			theme = props.Stylizer
		else
			theme = props.Theme
		end
		local showDialog = ShowDialog(plugin, localization, theme, mouse)

		props.UpdateCloudTable(api, localization, analytics, showDialog, isReplace)
	end

	self.openLocalizationSettings = function()
		local props = self.props
		local active = not props.IsBusy
		if not active then
			return
		end
		local api = props.API:get()

		local url = api.WWW.Localization.games(game.GameId):getUrl()
		GuiService:OpenBrowserWindow(url)
	end
end

function CloudTableSection:render()
	local props = self.props
	local theme
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme:get("CloudTableSection")
	end
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local active = not props.IsBusy

	local isMetaDataReady = (FFlagLocalizationToolsAllowUploadZhCjv and
		not isEmpty(props.AllLanguages) and not isEmpty(props.LocalesToLanguages)) or
		not isEmpty(props.DEPRECATED_AllLanguageCodes)

	local isReady = isMetaDataReady and props.CanManageTranslation and props.CloudTableId ~= ""

	local content
	if isReady then
		content = Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, theme.PaddingTop),
				PaddingLeft = UDim.new(0, theme.LeftIndent),
			}),
			Download = Roact.createElement(LabeledTextButton, {
				Active = active,
				ButtonText = localization:getText("CloudTableSection", "DownloadButton"),
				LabelText = localization:getText("CloudTableSection", "DownloadTableLabel"),
				LayoutOrder = 1,
				OnButtonClick = self.downloadCloudTable,
			}),
			Update = Roact.createElement(LabeledTextButton, {
				Active = active,
				ButtonText = localization:getText("CloudTableSection", "UpdateButton"),
				LabelText = localization:getText("CloudTableSection", "UpdateTableLabel"),
				LayoutOrder = 2,
				OnButtonClick = function()
					self.updateCloudTable(false)
				end,
			}),
			Collapsible = Roact.createElement(Collapsible, {
				Active = active,
				LayoutOrder = 3,
				RenderContent = function()
					return Roact.createElement(LabeledTextButton, {
						Active = active,
						ButtonText = localization:getText("CloudTableSection", "ReplaceButton"),
						LabelText = localization:getText("CloudTableSection", "ReplaceTableLabel"),
						LayoutOrder = 2,
						OnButtonClick = function()
							self.updateCloudTable(true)
						end,
					})
				end,
				Title = localization:getText("CloudTableSection", "AdvancedButton"),
			}),
			LinkTextFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 4,
				Size = UDim2.new(1, 0, 0, theme.LinkTextHeight),
			}, {
				LinkText = Roact.createElement(LinkText, {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					OnClick = self.openLocalizationSettings,
					Text = localization:getText("CloudTableSection", "CloudTablePageLinkText"),
				}),
			}),
		})
	else
		content = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, theme.PublishMessageHeight),
			BackgroundColor3 = theme.MessageFrameBackground,
			BackgroundTransparency = 0,
			BorderSizePixel = 1,
			BorderColor3 = theme.MessageFrameBorder,
			LayoutOrder = 2,
		}, {
			PublishPlaceMessage = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Text = localization:getText("CloudTableSection", "PublishPlaceMessage"),
				TextColor3 = theme.TextColor,
			})
		})
	end

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, theme.PaddingTop),
		}),
		SectionLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, theme.SectionLabelSize),
			Text = localization:getText("CloudTableSection", "SectionLabel"),
			TextColor3 = theme.TextColor,
			TextSize = theme.SectionLabelTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Content = content,
	})
end


CloudTableSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Localization = ContextServices.Localization,
	API = ContextServices.API,
	Mouse = ContextServices.Mouse,
	Analytics = AnalyticsContext,
})(CloudTableSection)



local function mapStateToProps(state, _)
	return {
		DEPRECATED_AllLanguageCodes = state.PluginMetadata.DEPRECATED_AllLanguageCodes,
		AllLanguages = state.PluginMetadata.AllLanguages,
		LocalesToLanguages = state.PluginMetadata.LocalesToLanguages,
		CanManageTranslation = state.PluginMetadata.CanManageTranslation,
		CloudTableId = state.PluginMetadata.CloudTableId,
		IsBusy = state.CloudTable.IsBusy,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		DownloadAndSaveCloudTable = function(api, localization, analytics, cloudTableId)
			dispatch(DownloadCloudTable.DownloadAndSave(api, localization, analytics, cloudTableId))
		end,
		UpdateCloudTable = function(api, localization, analytics, showDialog, isReplace)
			dispatch(UploadCloudTable(api, localization, analytics, showDialog, isReplace))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CloudTableSection)
