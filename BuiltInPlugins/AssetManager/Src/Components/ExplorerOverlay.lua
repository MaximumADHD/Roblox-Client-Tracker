--[[
    The Explorer Overlay contains the TreeView of all the asset folders in Asset Manager.
    Clicking on any of the folders will bring you to that folder in the Tile View.

    Necessary Properties:
        CloseOverlay = callback, that closes the overlay.

    Dispatch Properties:
        dispatchSetScreen = callback, sets the screen to the one that was clicked in the folder.

    Optional Properties:
]]
local FFlagAssetManagerRemoveUILibraryPart1 = game:GetFastFlag("AssetManagerRemoveUILibraryPart1")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local UI = require(Framework.UI)
local Pane = UI.Pane
local ShowOnTop = UI.ShowOnTop

local UILibrary = require(Plugin.Packages.UILibrary)
local DEPRECATED_ShowOnTop = UILibrary.Focus.ShowOnTop -- Remove with FFlagAssetManagerRemoveUILibraryPart1
local DEPRECATED_Button = UILibrary.Component.RoundFrame -- Remove with FFlagAssetManagerRemoveUILibraryPart1
local TreeView = UILibrary.Component.TreeView
local FolderTreeItem = require(Plugin.Src.Components.FolderTreeItem)

local Screens = require(Plugin.Src.Util.Screens)

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local ExplorerOverlay = Roact.PureComponent:extend("ExplorerOverlay")

function ExplorerOverlay:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local overlayTheme = theme.Overlay

    local dispatchSetScreen = props.dispatchSetScreen
    local closeOverlay = props.CloseOverlay

    local recentViewToggled = props.RecentViewToggled
    local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

    if FFlagAssetManagerRemoveUILibraryPart1 then
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

                FolderTree = Roact.createElement(TreeView, {
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
    else
        return Roact.createElement(DEPRECATED_ShowOnTop, {}, {
            Background = Roact.createElement(DEPRECATED_Button, {
                Position = UDim2.new(1, 0, 0, 0),
                Size = UDim2.new(overlayTheme.Background.WidthScale, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundTransparency = overlayTheme.Background.Transparency,
                BackgroundColor3 = Color3.new(0,0,0),

                OnActivated = closeOverlay,
            }),

            Overlay = Roact.createElement("Frame", {
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(overlayTheme.Foreground.WidthScale, 0, 1, 0),
                BackgroundTransparency = 0,
                BackgroundColor3 = theme.BackgroundColor,
                BorderSizePixel = 0,
                LayoutOrder = 2,
            }, {
                UILayout = Roact.createElement("UIListLayout", {
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    FillDirection = Enum.FillDirection.Vertical,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                }),

                CloseButton = Roact.createElement(DEPRECATED_Button, {
                    Size = UDim2.new(1, 0, 0, 24),
                    BackgroundTransparency = 0,
                    BackgroundColor3 = theme.BackgroundColor,
                    BorderSizePixel = 0,
                    LayoutOrder = 1,
                }, {
                    Padding = Roact.createElement("UIPadding", {
                        PaddingRight = UDim.new(0, overlayTheme.Padding.Right),
                    }),

                    CloseButtonLayout = Roact.createElement("UIListLayout", {
                        FillDirection = Enum.FillDirection.Horizontal,
                        HorizontalAlignment = Enum.HorizontalAlignment.Right,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                    }),

                    CloseIcon = Roact.createElement("ImageButton", {
                        Size = UDim2.new(0, overlayTheme.CloseButton.Size, 0, overlayTheme.CloseButton.Size),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        BackgroundTransparency = 1,
                        Image = overlayTheme.CloseButton.Images.Close,

                        [Roact.Event.Activated] = closeOverlay,
                    })
                }),

                FolderTree = Roact.createElement(TreeView, {
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
end

ExplorerOverlay = withContext({
    Theme = ContextServices.Theme,
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
