local FFlagEnableStudioServiceOpenBrowser = game:GetFastFlag("EnableStudioServiceOpenBrowser")

local StudioService = game:getService("StudioService")
local ContentProvider = game:getService("ContentProvider")
local GuiService = game:getService("GuiService")
local HttpService = game:getService("HttpService")
local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Constants = require(Plugin.Src.Util.Constants)
local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)
local UI = require(Plugin.Packages.Framework).UI
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local Navigation = require(Plugin.Src.ContextServices.Navigation)
local SetPluginEnabledState = require(Plugin.Src.Thunks.SetPluginEnabledState)
local UpdatePlugin = require(Plugin.Src.Thunks.UpdatePlugin)
local FrameworkButton = UI.Button
local FrameworkLabel = UI.Decoration.TextLabel
local DropdownMenu = UI.DropdownMenu
local ToggleButton = UI.ToggleButton
local LoadingBar = UI.FakeLoadingBar

local RemovePluginData = require(Plugin.Src.Actions.RemovePluginData)
local HttpRequestOverview = require(Plugin.Src.Components.HttpRequestOverview)

local LOADING_BAR_SIZE = UDim2.new(0, 120, 0, 8)
local LOADING_BAR_TIME = 0.5

local function getTextHeight(text, fontSize, font, widthCap)
	return TextService:GetTextSize(text, fontSize, font, Vector2.new(widthCap, 10000)).Y
end
-- TODO: Add theme font values into here instead
local ONE_LINE_TEXT_HEIGHT = getTextHeight("a", 16, Enum.Font.SourceSans, 9999)

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
		self.props.removePluginData(self.props.data.assetId)
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
		props.Analytics:report("TryUpdatePlugin", props.data.assetId)
		props.UpdatePlugin(props.data, props.Analytics)
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

	self.openPluginDetails = function()
		local rn = self.props.Navigation:get()
		rn.navigation.navigate({
			routeName = Constants.APP_PAGE.Detail,
			params = { assetId = self.props.data.assetId },
		})
	end

	self.onToggleClick = function()
		local data = self.props.data
		local isModerated = data.isModerated
		local enabled = not isModerated and data.enabled

		if enabled then
			self.onPluginDisabled()
		elseif not isModerated then
			self.onPluginEnabled()
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
	local allowedHttpCount = props.allowedHttpCount
	local deniedHttpCount = props.deniedHttpCount
	local allowedScriptInjection = props.allowedScriptInjection
	local showMore = state.showMore

	local localization = props.Localization
	local theme = props.Stylizer
	local api = props.API:get()

	local layoutOrder = props.LayoutOrder

	local isUpdated = props.isUpdated
	local isModerated = data.isModerated
	local updateStatus = data.status

	local assetId = data.assetId
	local enabled = not isModerated and data.enabled

	local name = data.name or ""
	local description = data.description or ""
	local creator = data.creator and data.creator.Name or ""

	local thumbnailUrl = api.Images.AssetThumbnailUrl(assetId)

	local showUpdateButton = not isModerated and not isUpdated and updateStatus ~= UpdateStatus.Updating
	local buttonPosition = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-3 - Constants.PLUGIN_ENABLE_WIDTH
		- Constants.PLUGIN_CONTEXT_WIDTH,.5,0)

	local hasHttpPermissions = (allowedHttpCount > 0) or (deniedHttpCount > 0)
	local hasScriptInjectionPermissions = (allowedScriptInjection ~= nil)
	local hasPermissions = hasHttpPermissions or hasScriptInjectionPermissions
	-- Q3_2020 new design: always show "no permissions" if we have no permissions

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, Constants.SCROLLBAR_WIDTH_ADJUSTMENT, 0, Constants.PLUGIN_ENTRY_HEIGHT),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Constants.PLUGIN_ENTRY_PADDING),
			PaddingBottom = UDim.new(0, Constants.PLUGIN_ENTRY_PADDING),
		}),

		Thumbnail = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0,Constants.THUMBNAIL_SIZE, 0, Constants.THUMBNAIL_SIZE),
			Position = UDim2.new(0,Constants.PLUGIN_HORIZONTAL_PADDING, 0, Constants.PLUGIN_VERTICAL_PADDING),
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
				TextColor3 = theme.EmphasisTextColor,
				Font = Enum.Font.SourceSans,
			}),

			Creator = Roact.createElement("TextButton", {
				LayoutOrder = 1,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 16),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = creator,
				Font = Enum.Font.SourceSansLight,
				TextColor3 = theme.LinkColor,
				TextSize = 16,
				BorderSizePixel = 1,
				[Roact.Event.Activated] = self.openCreatorProfile,
			}),

			Description = Roact.createElement("TextLabel", {
				ClipsDescendants = true,
				LayoutOrder = 2,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, ONE_LINE_TEXT_HEIGHT * 2),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = description,
				TextColor3 = theme.TextColor,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Font = Enum.Font.SourceSans,
				TextSize = 16,
			}),

			HttpRequestOverview = Roact.createElement(HttpRequestOverview, {
				assetId = data.assetId,
				LayoutOrder = 3,
			}),
		}),

		ModeratedWarning = isModerated and Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0, Constants.MODERATED_WARNING_WIDTH, 0, Constants.HEADER_BUTTON_SIZE),
			Position = buttonPosition,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = 14,
			TextWrapped = true,
			Font = Enum.Font.SourceSans,
			TextColor3 = theme.TextColor,
			Text = localization:getText("Entry", "ModeratedWarning"),
		}),

		UpdateButton = showUpdateButton and Roact.createElement(FrameworkButton, {
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0, Constants.HEADER_UPDATE_WIDTH, 0, Constants.HEADER_BUTTON_SIZE),
			Position = buttonPosition,
			Style = "Round",
			OnClick = self.updatePlugin,
		}, {
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
				TextTransparency = 0,
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
		}),

		ProgressIndicator = not isUpdated and updateStatus == UpdateStatus.Updating
			and Roact.createElement(LoadingBar, {
			AnchorPoint = Vector2.new(1, 0.5),
			Position = buttonPosition,
			Size = LOADING_BAR_SIZE,
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

		ToggleButton = Roact.createElement(ToggleButton, {
			Disabled = false,
			Selected = enabled,
			OnClick = self.onToggleClick,
			Size = UDim2.new(0, Constants.PLUGIN_ENABLE_WIDTH, 0, 24),
			Position = UDim2.new(1,Constants.PLUGIN_HORIZONTAL_PADDING*-2 - Constants.PLUGIN_ENABLE_WIDTH
				- Constants.PLUGIN_CONTEXT_WIDTH,.5,0),
		}),

		ShowMoreButton = Roact.createElement(FrameworkButton, {
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, Constants.HEADER_BUTTON_SIZE, 0, Constants.HEADER_BUTTON_SIZE),
			Position = UDim2.new(1, -1 * (Constants.PLUGIN_HORIZONTAL_PADDING + Constants.PLUGIN_CONTEXT_WIDTH),.5,0),
			Style = "Round",
			OnClick = self.onShowMoreActivated,
		}, {
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

			Dropdown = Roact.createElement(DropdownMenu, {
				Hide = not showMore,
				Size = UDim2.fromOffset(90, (40 * #self.getMoreItems())), -- TO DO (DEVTOOLS-4448): Render based on maximum string width
				Items = self.getMoreItems(),

				OnRenderItem = function(item, index, activated)
					return Roact.createElement(FrameworkButton, {
						Size = UDim2.new(1, 0, 0, 40),
						LayoutOrder = index,
						OnClick = activated,
					}, {
						Label = Roact.createElement(FrameworkLabel, {
							Size = UDim2.new(1, 0, 1, 0),
							TextSize = 18,
							Text = item.Text,
							TextXAlignment = Enum.TextXAlignment.Left,
						},{
							Padding = Roact.createElement("UIPadding", {
								PaddingLeft = UDim.new(0, 10),
							}),
						}),
					})
				end,
				OnItemActivated = self.moreItemClicked,
				OnFocusLost = self.hideShowMore,
			})
		}),
	})
end


PluginEntry = withContext({
	Navigation = Navigation,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
	API = PluginAPI2,
	Analytics = ContextServices.Analytics,
})(PluginEntry)


local mapStateToProps = function(state, props)
	local pluginPermissions = state.PluginPermissions[props.data.assetId]
	return {
		allowedHttpCount = pluginPermissions and pluginPermissions.allowedHttpCount or 0,
		deniedHttpCount = pluginPermissions and pluginPermissions.deniedHttpCount or 0,
		allowedScriptInjection = pluginPermissions and pluginPermissions.allowedScriptInjection or nil,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		removePluginData = function(assetId)
			dispatch(RemovePluginData(assetId))
		end,

		onPluginSetEnabledState = function(plugin, enabled)
			dispatch(SetPluginEnabledState(plugin, enabled))
		end,

		UpdatePlugin = function(plugin, analytics)
			dispatch(UpdatePlugin(plugin, analytics))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PluginEntry)
