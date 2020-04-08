--[[
    The Explorer Overlay contains the TreeView of all the asset folders in Asset Manager.
    Clicking on any of the folders will bring you to that folder in the Tile View.

    Necessary Properties:
        CloseOverlay = callback, that closes the overlay.

    Dispatch Properties:
        dispatchSetScreen = callback, sets the screen to the one that was clicked in the folder.

    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UILibrary = require(Plugin.Packages.UILibrary)
local ShowOnTop = UILibrary.Focus.ShowOnTop
local Button = UILibrary.Component.RoundFrame
local TreeView = UILibrary.Component.TreeView
local FolderTreeItem = require(Plugin.Src.Components.FolderTreeItem)

local Screens = require(Plugin.Src.Util.Screens)

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local ExplorerOverlay = Roact.PureComponent:extend("ExplorerOverlay")

function ExplorerOverlay:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local overlayTheme = theme.Overlay

    local dispatchSetScreen = props.dispatchSetScreen
    local closeOverlay = props.CloseOverlay

    return Roact.createElement(ShowOnTop, {}, {
        Background = Roact.createElement(Button, {
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

            CloseButton = Roact.createElement(Button, {
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

ContextServices.mapToProps(ExplorerOverlay, {
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapDispatchToProps(dispatch)
    return {
        dispatchSetScreen = function(screen)
            dispatch(SetScreen(screen))
        end,
    }
end

return RoactRodux.connect(nil, mapDispatchToProps)(ExplorerOverlay)