local FFlagPluginManagementWithContext = game:GetFastFlag("PluginManagementWithContext")
local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local FitFrame = require(Plugin.Packages.FitFrame)
local Constants = require(Plugin.Src.Util.Constants)

local DetailsTopBar = require(Plugin.Src.Components.PluginDetails.DetailsTopBar)
local HttpRequestHolder = require(Plugin.Src.Components.PluginDetails.HttpRequestHolder)
local ScriptInjectionHolder = require(Plugin.Src.Components.PluginDetails.ScriptInjectionHolder)
local ListItem = require(Plugin.Src.Components.PluginDetails.ListItem)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local FitFrameVertical = FitFrame.FitFrameVertical

local FlagsList = require(Plugin.Src.Util.FlagsList)
local THEME_REFACTOR = require(Plugin.Packages.Framework).Util.RefactorFlags.THEME_REFACTOR

local PluginDetailsView = Roact.Component:extend("PluginDetailsView")

local PADDING = 40
local CONTENT_PADDING = 20

PluginDetailsView.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function PluginDetailsView:init()
	self.scrollLayoutRef = Roact.createRef()
	self.scrollRef = Roact.createRef()

	self.resizeScrollingFrameCanvas = function(rbx)
		local scrollLayoutRef = self.scrollLayoutRef.current
		local scrollRef = self.scrollRef.current
		if not scrollRef or not scrollLayoutRef then
			return
		end
		local height = UDim.new(0, scrollLayoutRef.AbsoluteContentSize.Y)
		scrollRef.CanvasSize = UDim2.new(scrollRef.CanvasSize.X, height)
	end
end

function PluginDetailsView:didMount()
	self.resizeScrollingFrameCanvas()
end

function PluginDetailsView:render()
	local assetId = self.props.assetId
	local size = self.props.Size
	local localization = self.props.Localization
	local httpPermissions = self.props.httpPermissions
	local scriptInjectionPermissions = self.props.scriptInjectionPermissions
	local pluginData = self.props.pluginData

    local theme
	if THEME_REFACTOR then
		theme = self.props.Stylizer
    else
        theme = self.props.Theme:get("Plugin")
    end

	local topAreaHeight = (CONTENT_PADDING * 2) + Constants.DETAILS_THUMBNAIL_SIZE

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
		Size = size,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
		}),

		Layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = UDim.new(0, CONTENT_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),

		PlugnEntryContainer = Roact.createElement(FitFrameVertical, {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			width = UDim.new(1, 0),
		}, {
			DetailsTopBar = Roact.createElement(DetailsTopBar, {
				assetId = assetId,
				name = pluginData.name,
				LayoutOrder = 1,
			}),

			Border = Roact.createElement("Frame", {
				LayoutOrder = 2,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.BorderColor,
				Size = UDim2.new(1, 0, 0, 1),
			}),
		}),

		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			LayoutOrder = 3,
			CanvasSize = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 200, 0, 0),
			TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
			MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
			BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
			ScrollBarImageColor3 = theme.ScrollbarColor,
			ScrollBarThickness = theme.ScrollbarSize,
			ScrollBarImageTransparency = theme.ScrollbarTransparency,
			Size = UDim2.new(1, 0, 1, -topAreaHeight),
			[Roact.Ref] = self.scrollRef,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				[Roact.Change.AbsoluteContentSize] = self.resizeScrollingFrameCanvas,
				[Roact.Ref] = self.scrollLayoutRef,
			}),

			Content = Roact.createElement(FitFrameVertical, {
				BackgroundTransparency = 1,
				contentPadding = UDim.new(0, CONTENT_PADDING),
				width = UDim.new(1, 0),
			}, {
				-- TODO: Uncomment these ListTextItems for v2
				-- Creator = Roact.createElement(ListTextItem, {
				-- 	description = self.props.pluginData.creator and self.props.pluginData.creator.Name,
				-- 	LayoutOrder = 1,
				-- 	theme = theme,
				-- 	title = localization:getText("Details", "Creator"),
				-- }),

				-- Description = Roact.createElement(ListTextItem, {
				-- 	description = self.props.pluginData.description,
				-- 	LayoutOrder = 2,
				-- 	theme = theme,
				-- 	title = localization:getText("Details", "Description"),
				-- }),

				HttpRequestPermissionContainer = next(httpPermissions) and Roact.createElement(ListItem, {
					LayoutOrder = 3,
					renderContent = function()
						return Roact.createElement(HttpRequestHolder, {
							assetId = assetId,
							httpPermissions = httpPermissions,
						})
					end,
					theme = theme,
					title = localization:getText("Details", "HttpRequests"),
				}),

				ScriptInjectionPermissionContainer = FlagsList:get("FFlagPluginManagementQ3ContentSecurity") and next(scriptInjectionPermissions) and Roact.createElement(ListItem, {
					LayoutOrder = 4,
					renderContent = function()
						return Roact.createElement(ScriptInjectionHolder, {
							assetId = assetId,
							scriptInjectionPermissions = scriptInjectionPermissions,
						})
					end,
					theme = theme,
					title = localization:getText("Details", "ScriptInjection"),
				})
			}),
		}),
	})
end

if FFlagPluginManagementWithContext then
	PluginDetailsView = withContext({
		Localization = ContextServices.Localization,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(PluginDetailsView)
else
	ContextServices.mapToProps(PluginDetailsView, {
		Localization = ContextServices.Localization,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


local function mapStateToProps(state, props)
	local plugins = state.Management.plugins
	local pluginPermissions = state.PluginPermissions[props.assetId]
	return {
		pluginData = plugins and plugins[props.assetId] or nil,
		httpPermissions = pluginPermissions and pluginPermissions.httpPermissions or {},
		scriptInjectionPermissions = pluginPermissions and pluginPermissions.scriptInjectionPermissions or {},
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PluginDetailsView)
