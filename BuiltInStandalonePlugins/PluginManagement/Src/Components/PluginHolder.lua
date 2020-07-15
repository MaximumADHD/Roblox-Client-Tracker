local FFlagPluginManagementScrollbarDesign = game:DefineFastFlag("PluginManagementScrollbarDesign", false)
local FFlagPluginManagementPrettifyDesign = game:GetFastFlag("PluginManagementPrettifyDesign2")
local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")
local FFlagPluginManagementFixHorizontalScrollbar = game:DefineFastFlag("PluginManagementFixHorizontalScrollbar", false)

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary) -- remove with FFlagPluginManagementRemoveUILibrary
local FrameworkUtil = require(Plugin.Packages.Framework.Util)
local PluginEntry = require(Plugin.Src.Components.PluginEntry)
local Constants = require(Plugin.Src.Util.Constants)
local LayoutOrderIterator
if FFlagPluginManagementRemoveUILibrary then
	LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator
else
	LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator
end
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local PluginHolder = Roact.Component:extend("PluginHolder")

local function sortPlugins(plugins)
	table.sort(plugins, function(first, second)
		return string.lower(first.name) < string.lower(second.name)
	end)
end

function PluginHolder:init()
	self.state = {
		contentHeight = 0,
	}

	self.resizeContainer = function(rbx)
		self:setState({
			contentHeight = rbx.AbsoluteContentSize.Y
		})
	end
end

function PluginHolder:createLabel(theme, displayText)
	return Roact.createElement("TextLabel", {
		Font = Enum.Font.SourceSans,
		TextColor3 = FFlagPluginManagementPrettifyDesign and theme.SubTitleTextColor or theme.TextColor,
		TextTransparency = FFlagPluginManagementPrettifyDesign and 0 or 0.7,
		Size = UDim2.new(1, 0, 0, FFlagPluginManagementPrettifyDesign and
			Constants.SUBTITLE_PADDING + 16	+ (Constants.SUBTITLE_PADDING - Constants.PLUGIN_ENTRY_PADDING)
			or 60),
		TextSize = 20,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = displayText,
		LayoutOrder = self.order:getNextOrder(),
		BackgroundTransparency = 1,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(
				0,
				FFlagPluginManagementPrettifyDesign and Constants.HEADER_LEFT_PADDING or Constants.PLUGIN_HORIZONTAL_PADDING
			),
			PaddingTop = FFlagPluginManagementPrettifyDesign and UDim.new(0, Constants.SUBTITLE_PADDING) or nil,
		})
	})
end

function PluginHolder:render()
	self.order = LayoutOrderIterator.new()

	local props = self.props
	local state = self.state

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local contentHeight = state.contentHeight
	local plugin = props.plugin
	local pluginList = props.pluginList
	local position = props.position
	local size = props.size
	local anchorPoint = props.anchorPoint
	local onPluginUninstalled = props.onPluginUninstalled

	local pendingHeader = localization:getText("Header", "PendingUpdates")
	local upToDateHeader = localization:getText("Header", "UpToDate")

	local pluginEntries = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			[Roact.Change.AbsoluteContentSize] = self.resizeContainer,
		}),
	}

	local needsUpdate = {}
	local updated = {}

	for id, data in pairs(pluginList) do
		local isUpdated = StudioService:IsPluginUpToDate(id, data.latestVersion)
		if isUpdated then
			table.insert(updated, data)
		else
			table.insert(needsUpdate, data)
		end
	end

	sortPlugins(updated)
	sortPlugins(needsUpdate)

	local showHeaders = #updated > 0 and #needsUpdate > 0

	if showHeaders then
		pluginEntries.PendingUpdates = self:createLabel(theme, pendingHeader)
	end

	local leftContentMargin = -Constants.THUMBNAIL_SIZE - Constants.PLUGIN_HORIZONTAL_PADDING
		+ Constants.HEADER_RIGHT_PADDING * 2

	for _, data in ipairs(needsUpdate) do
		pluginEntries[data.assetId .. "_Entry"] = Roact.createElement(PluginEntry, {
			LayoutOrder = self.order:getNextOrder(),
			data = data,
			isUpdated = false,
			plugin = plugin,
			onPluginUninstalled = onPluginUninstalled,
		})
		if FFlagPluginManagementPrettifyDesign then
			pluginEntries[data.assetId .. "_Border"] = Roact.createElement("Frame", {
				LayoutOrder = self.order:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 1),
				BackgroundTransparency = 1,
			}, {
				Border = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = theme.BorderColor,
					BorderSizePixel = 0,
					Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING, 0, 0),
					Size = UDim2.new(1, leftContentMargin, 0, 1),
				}),
			})
		else
			pluginEntries[data.assetId .. "_Border"] = Roact.createElement("Frame", {
				LayoutOrder = self.order:getNextOrder(),
				Size = UDim2.new(0.8, 0, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.BorderColor,
				AnchorPoint = Vector2.new(0.5, 0.5),
			})
		end
	end

	if showHeaders then
		pluginEntries.UpToDate = self:createLabel(theme, upToDateHeader)
	end

	for _, data in ipairs(updated) do
		pluginEntries[data.assetId .. "_Entry"] = Roact.createElement(PluginEntry, {
			LayoutOrder = self.order:getNextOrder(),
			data = data,
			isUpdated = true,
			plugin = plugin,
			onPluginUninstalled = onPluginUninstalled,
		})
		if FFlagPluginManagementPrettifyDesign then
			pluginEntries[data.assetId .. "_Border"] = Roact.createElement("Frame", {
				LayoutOrder = self.order:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 1),
				BackgroundTransparency = 1,
			}, {
				Border = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = theme.BorderColor,
					BorderSizePixel = 0,
					Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING, 0, 0),
					Size = UDim2.new(1, leftContentMargin, 0, 1),
				}),
			})
		else
			pluginEntries[data.assetId .. "_Border"] = Roact.createElement("Frame", {
				LayoutOrder = self.order:getNextOrder(),
				Size = UDim2.new(0.8, 0, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.BorderColor,
				AnchorPoint = Vector2.new(0.5, 0.5),
			})
		end
	end

	return Roact.createElement("ScrollingFrame", {
		Size = size,
		CanvasSize = UDim2.new(FFlagPluginManagementFixHorizontalScrollbar and 0 or 1, 0, 0, contentHeight),
		Position = position,
		AnchorPoint = anchorPoint,
		BackgroundColor3 = theme.BackgroundColor,
		TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
		BorderSizePixel = 0,

		ScrollBarImageColor3 = FFlagPluginManagementScrollbarDesign and theme.ScrollbarColor or nil,
		ScrollBarThickness = FFlagPluginManagementScrollbarDesign and theme.ScrollbarSize or nil,
		ScrollBarImageTransparency = FFlagPluginManagementScrollbarDesign
			and theme.ScrollbarTransparency or nil,
	}, pluginEntries)
end

ContextServices.mapToProps(PluginHolder, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

return PluginHolder
