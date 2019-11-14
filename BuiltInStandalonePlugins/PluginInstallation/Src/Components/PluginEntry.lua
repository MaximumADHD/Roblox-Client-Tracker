local StudioService = game:getService("StudioService")
local ContentProvider = game:getService("ContentProvider")
local GuiService = game:getService("GuiService")
local HttpService = game:getService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Constants = require(Plugin.Src.Util.Constants)
local UILibrary = require(Plugin.Packages.UILibrary)
local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local SetPluginEnabledState = require(Plugin.Src.Thunks.SetPluginEnabledState)
local UpdatePlugin = require(Plugin.Src.Thunks.UpdatePlugin)
local Button = UILibrary.Component.Button
local LoadingBar = require(Plugin.Src.Components.LoadingBar)
local MoreDropdown = require(Plugin.Src.Components.MoreDropdown)

local FFlagEnableStudioServiceOpenBrowser = game:GetFastFlag("EnableStudioServiceOpenBrowser")
local LOADING_BAR_SIZE = UDim2.new(0, 120, 0, 8)
local LOADING_BAR_TIME = 0.5

local PluginEntry = Roact.Component:extend("PluginEntry")

function PluginEntry:init()
	self.state = {
		showSuccessMessage = false,
		showMore = false,
	}

	self.getMoreItems = function()
		local localization = self.props.Localization
		return {
			{Key = "Details", Text = localization:getText("EntrySeeMore", "DetailsButton")},
			{Key = "Remove", Text = localization:getText("EntrySeeMore", "RemoveButton")},
		}
	end

	self.onPluginEnabled = function()
		local props = self.props
		props.onPluginSetEnabledState(props.data, true)
	end

	self.onPluginDisabled = function()
		local props = self.props
		self.props.onPluginSetEnabledState(props.data, false)
	end

	self.showDetails = function()
		local assetId = self.props.data.assetId
		-- TODO : find a home for this url
		local baseUrl = ContentProvider.BaseUrl
		local targetUrl = string.format("%s/library/%s/asset", baseUrl, HttpService:urlEncode(assetId))
		if FFlagEnableStudioServiceOpenBrowser then
			StudioService:OpenInBrowser_DONOTUSE(targetUrl)
		else
			GuiService:OpenBrowserWindow(targetUrl)
		end
	end

	self.uninstallPlugin = function()
		StudioService:UninstallPlugin(self.props.data.assetId)
		wait()
		self.props.onPluginUninstalled()
	end

	self.onShowMoreActivated = function()
		self:setState({
			showMore = true,
		})
	end

	self.hideShowMore = function()
		self:setState({
			showMore = false,
		})
	end

	self.moreItemClicked = function(item)
		self.hideShowMore()
		if item.Key == "Details" then
			self.showDetails()
		elseif item.Key == "Remove" then
			self.uninstallPlugin()
		end
	end

	self.updatePlugin = function()
		local props = self.props
		props.UpdatePlugin(props.data)
	end

	self.openCreatorProfile = function()
		local data = self.props.data
		local creatorId = data.creator and data.creator.Id
		local baseUrl = ContentProvider.BaseUrl
		local targetUrl = string.format("%susers/%d/profile", baseUrl, HttpService:urlEncode(creatorId))
		if FFlagEnableStudioServiceOpenBrowser then
			StudioService:OpenInBrowser_DONOTUSE(targetUrl)
		else
			GuiService:OpenBrowserWindow(targetUrl)
		end
	end
end

function PluginEntry.getDerivedStateFromProps(nextProps, _)
	if nextProps.data.status == UpdateStatus.Success then
		return {
			showSuccessMessage = true,
		}
	end

	if not nextProps.isUpdated then
		return {
			showSuccessMessage = false,
		}
	end

	return nil
end

function PluginEntry:render()
	local props = self.props
	local state = self.state
	local data = props.data
	local showMore = state.showMore

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")
	local api = props.API:get()

	local layoutOrder = props.LayoutOrder

	local isUpdated = props.isUpdated
	local updateStatus = data.status

	local assetId = data.assetId
	local enabled = data.enabled

	local name = data.name or ""
	local description = data.description or ""
	local creator = data.creator and data.creator.Name or ""

	local thumbnailUrl = api.Images.AssetThumbnailUrl(assetId)

	local showUpdateButton = not isUpdated and updateStatus ~= UpdateStatus.Updating
	local buttonPosition = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-3 - Constants.PLUGIN_ENABLE_WIDTH
		- Constants.PLUGIN_CONTEXT_WIDTH,.5,0)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, Constants.SCROLLBAR_WIDTH_ADJUSTMENT, 0, Constants.PLUGIN_ENTRY_HEIGHT),
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
		}),

		Thumbnail = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0,Constants.THUMBNAIL_SIZE, 0, Constants.THUMBNAIL_SIZE),
			Position = UDim2.new(0,Constants.PLUGIN_HORIZONTAL_PADDING,0,Constants.PLUGIN_VERTICAL_PADDING),
			Image = thumbnailUrl,
			BackgroundTransparency = 1,
		}),

		Contents = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, Constants.THUMBNAIL_SIZE + Constants.PLUGIN_HORIZONTAL_PADDING * 2, 0, 0),
			Size = UDim2.new(0.5, -Constants.THUMBNAIL_SIZE - Constants.PLUGIN_HORIZONTAL_PADDING, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 2),
			}),

			Name = Roact.createElement("TextLabel", {
				LayoutOrder = 0,
				TextWrapped = true,
				TextSize = 22,
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = name,
				TextColor3 = theme.TextColor,
				Font = Enum.Font.SourceSansSemibold,
			}),

			Creator = Roact.createElement("TextButton", {
				LayoutOrder = 1,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 16),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = creator,
				Font = Enum.Font.SourceSans,
				TextColor3 = theme.LinkColor,
				TextSize = 16,
				BorderSizePixel = 1,
				[Roact.Event.Activated] = self.openCreatorProfile,
			}),

			Description = Roact.createElement("TextLabel", {
				LayoutOrder = 2,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 1, -42 - Constants.PLUGIN_VERTICAL_PADDING * 2),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = description,
				TextColor3 = theme.TextColor,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Font = Enum.Font.SourceSansLight,
				TextSize = 16,
			}),
		}),

		UpdateButton = showUpdateButton and Roact.createElement(Button, {
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0, Constants.HEADER_UPDATE_WIDTH, 0, Constants.HEADER_BUTTON_SIZE),
			Position = buttonPosition,
			Style = "Default",
			OnClick = self.updatePlugin,

			RenderContents = function()
				return {
					Label = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = localization:getText("Entry", "UpdateButton"),
						TextColor3 = theme.TextColor,
						Font = Enum.Font.SourceSans,
						TextSize = 18,
						BackgroundTransparency = 1,
					}),

					DateLabel = updateStatus ~= UpdateStatus.Error and Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 14),
						Position = UDim2.new(0, 0, 1, 3),
						TextSize = 14,
						Font = Enum.Font.SourceSans,
						TextColor3 = theme.TextColor,
						TextTransparency = 0.6,
						Text = localization:getText("Entry", "LastUpdatedDate", {
							date = data.updated,
						}),
					}),

					ErrorLabel = updateStatus == UpdateStatus.Error and Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 14),
						Position = UDim2.new(0, 0, 1, 3),
						TextSize = 14,
						Font = Enum.Font.SourceSans,
						TextColor3 = theme.ErrorColor,
						Text = localization:getText("Entry", "UpdateError"),
					}),
				}
			end,
		}),

		ProgressIndicator = not isUpdated and updateStatus == UpdateStatus.Updating
			and Roact.createElement(LoadingBar, {
			AnchorPoint = Vector2.new(1, 0.5),
			Position = buttonPosition,
			Size = LOADING_BAR_SIZE,
			HoldPercent = 1,
			LoadingTime = LOADING_BAR_TIME,
		}),

		SuccessLabel = isUpdated and state.showSuccessMessage
			and Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 14),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = buttonPosition,
			TextSize = 14,
			Font = Enum.Font.SourceSans,
			TextColor3 = theme.Green,
			TextXAlignment = Enum.TextXAlignment.Right,
			Text = localization:getText("Entry", "UpdateSuccess"),
		}),

		-- TODO: Refactor this into UILibrary ToggleButton
		EnableButton = not enabled and Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, Constants.PLUGIN_ENABLE_WIDTH, 0, 24),
			Position = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-2 - Constants.PLUGIN_ENABLE_WIDTH
				- Constants.PLUGIN_CONTEXT_WIDTH,.5,0),
			Image = theme.Toggle.Off,
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = self.onPluginEnabled,
		}),

		DisableButton = enabled and Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, Constants.PLUGIN_ENABLE_WIDTH, 0, 24),
			Position = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-2 - Constants.PLUGIN_ENABLE_WIDTH
				- Constants.PLUGIN_CONTEXT_WIDTH,.5,0),
			Image = theme.Toggle.On,
			BackgroundTransparency = 1,

			[Roact.Event.Activated] = self.onPluginDisabled,
		}),

		ShowMoreButton = Roact.createElement(Button, {
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, 28, 0, 28),
			Position = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-1 - Constants.PLUGIN_CONTEXT_WIDTH,.5,0),
			Style = "Default",
			OnClick = self.onShowMoreActivated,

			RenderContents = function()
				return {
					Dots = Roact.createElement("TextLabel", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, -4),
						Size = UDim2.new(0, 16, 0, 16),

						Text = "...",
						TextColor3 = theme.TextColor,
						Font = Enum.Font.SourceSansBold,
						TextSize = 18,
						BackgroundTransparency = 1,
					}),

					Dropdown = showMore and Roact.createElement(MoreDropdown, {
						Items = self.getMoreItems(),
						OnItemClicked = self.moreItemClicked,
						OnFocusLost = self.hideShowMore,
					}),
				}
			end,
		}),
	})
end

ContextServices.mapToProps(PluginEntry, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
	API = PluginAPI2,
})

local function mapDispatchToProps(dispatch)
	return {
		onPluginSetEnabledState = function(plugin, enabled)
			dispatch(SetPluginEnabledState(plugin, enabled))
		end,

		UpdatePlugin = function(plugin)
			dispatch(UpdatePlugin(plugin))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(PluginEntry)
