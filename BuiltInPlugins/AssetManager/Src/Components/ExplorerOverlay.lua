--[[
	The Explorer Overlay contains the TreeView of all the asset folders in Asset Manager.
	Clicking on any of the folders will bring you to that folder in the Tile View.

	Required Props:
		callback CloseOverlay: that closes the overlay.
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane
local ShowOnTop = UI.ShowOnTop

local UILibrary = require(Plugin.Packages.UILibrary)
local FolderTreeItem = require(Plugin.Src.Components.FolderTreeItem)

local Screens = require(Plugin.Src.Util.Screens)

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local ExplorerOverlay = Roact.PureComponent:extend("ExplorerOverlay")

local FFlagDevFrameworkMigrateTreeView = Framework.SharedFlags.getFFlagDevFrameworkMigrateTreeView()
local Dash
local join
local TreeView
if FFlagDevFrameworkMigrateTreeView then
	Dash = Framework.Dash
	join = Dash.join
	TreeView = UI.TreeView
else
	TreeView = UILibrary.Component.TreeView
end

function ExplorerOverlay:init()
	if FFlagDevFrameworkMigrateTreeView then
		self.state = {
			Expansion = { [self.props.FileExplorerData[1]] = true },
			Selection = {},
		}

		self.OnExpansionChange = function(items)
			self:setState( { Expansion = items } )
		end

		self.onSelectionChange = function(items)
			self:setState( { Selection = items } )

			local props = self.props
			local dispatchSetScreen = props.dispatchSetScreen
			local closeOverlay = props.CloseOverlay

			local recentViewToggled = props.RecentViewToggled
			local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

			local item = next(items)
			if (#item.children == 0) then
				if recentViewToggled then
					dispatchSetRecentViewToggled(false)
				end

				local screen = Screens[item.Screen]
				dispatchSetScreen(screen)
				closeOverlay()
			end
		end
	end
end

function ExplorerOverlay:render()
	local props = self.props
	local theme = props.Stylizer
	local overlayTheme = theme.Overlay

	local dispatchSetScreen = props.dispatchSetScreen
	local closeOverlay = props.CloseOverlay

	local recentViewToggled = props.RecentViewToggled
	local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

	return Roact.createElement(ShowOnTop, {}, {
		Background = Roact.createElement(Pane, {
			BackgroundColor = Color3.new(0, 0, 0),
			OnClick = closeOverlay,
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(overlayTheme.Background.WidthScale, 0, 1, 0),
			Transparency = overlayTheme.Background.Transparency,
		}),

		Overlay = Roact.createElement(Pane, {
			BackgroundColor = theme.BackgroundColor,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 2,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Size = UDim2.new(overlayTheme.Foreground.WidthScale, 0, 1, 0),
		}, {
			CloseButton = Roact.createElement(Pane, {
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 1,
				Padding = {
					Right = overlayTheme.Padding.Right,
				},
				Size = UDim2.new(1, 0, 0, 24),
			}, {
				CloseIcon = Roact.createElement("ImageButton", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = overlayTheme.CloseButton.Images.Close,
					Size = UDim2.fromOffset(overlayTheme.CloseButton.Size, overlayTheme.CloseButton.Size),

					[Roact.Event.Activated] = closeOverlay,
				})
			}),

			FolderTree = if FFlagDevFrameworkMigrateTreeView then
				Roact.createElement(TreeView, {
					RootItems = self.props.FileExplorerData,
					Size = UDim2.fromScale(1, 1),
					Expansion = self.state.Expansion,
					LayoutOrder = 2,
					OnExpansionChange = self.OnExpansionChange,
					OnSelectionChange = self.onSelectionChange,
				})
			else
				Roact.createElement(TreeView, {
					dataTree = self.props.FileExplorerData,
					createFlatList = false,
					getChildren = function(instance)
						return instance.Children
					end,
			
					renderElement = function(properties)
						return Roact.createElement(FolderTreeItem, properties)
					end,
			
					onSelectionChanged = function(instances)
						if instances[1] then
							if recentViewToggled then
								dispatchSetRecentViewToggled(false)
							end
							local screen = Screens[instances[1].Screen]
							dispatchSetScreen(screen)
						end
						closeOverlay()
					end,
			
					expandRoot = true,
			
					LayoutOrder = 2,
				})
		})
	})
end

ExplorerOverlay = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ExplorerOverlay)

local function mapStateToProps(state, props)
	return {
		RecentViewToggled = state.AssetManagerReducer.recentViewToggled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetRecentViewToggled = function(toggled)
			dispatch(SetRecentViewToggled(toggled))
		end,
		dispatchSetScreen = function(screen)
			dispatch(SetScreen(screen))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ExplorerOverlay)
