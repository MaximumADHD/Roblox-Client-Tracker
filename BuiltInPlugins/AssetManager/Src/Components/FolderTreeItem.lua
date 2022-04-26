--[[
	A single item displayed in a TreeView component.

	Required Props:
		element = instance, The instance to display.
		indent = number, The level of indentation this item appears at.
		canExpand = boolean, Whether this item has children and can be expanded.
		isExpanded = boolean, Whether this item is showing its children.
		isSelected = boolean, Whether this item is the selected item.
		rowIndex = number, The order in which this item appears in the list.
		toggleSelected = callback, A callback when this item is clicked.
]]
local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button

local FolderTreeItem = Roact.PureComponent:extend("FolderTreeItem")

local ModernIcons = require(Plugin.Src.Util.ModernIcons)
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and not game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild()

function FolderTreeItem:init()
	self.layoutRef = Roact.createRef()
	self.parentContentRef = Roact.createRef()
	self.childrenContentRef = Roact.createRef()

	self.state = {
		Hovering = false,
	}

    self.mouseEnter = function()
        local props = self.props
        props.Mouse:__pushCursor("PointingHand")
		self:setState({
			Hovering = true,
		})
	end

    self.mouseLeave = function()
        local props = self.props
        props.Mouse:__popCursor()
		self:setState({
			Hovering = false,
		})
	end

    self.onClick = function()
        local props = self.props
        props.Mouse:__popCursor()
		self.props.toggleSelected()
	end

    self.resizeFrameHeight = function()
        local props = self.props
        local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")
        local themeHeight = theme.TreeViewItem.Height
        local height
        if self.layoutRef.current then
            height = self.layoutRef.current.AbsoluteContentSize.Y + themeHeight
        else
            height = themeHeight
        end
		self.parentContentRef.current.Size = UDim2.new(1, 0, 0, height)
		self.childrenContentRef.current.Size = UDim2.new(1, 0, 0, height)
	end
end

function FolderTreeItem:render()
    local props = self.props
    local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

    local treeViewTheme = theme.TreeViewItem
    local instance = props.element
    local name = instance.Name

    local indent = props.indent
    local expandable = props.canExpand
    local expanded = props.isExpanded
    local layoutOrder = props.rowIndex or 1
    local height = treeViewTheme.Height

    local arrowProps = expanded and treeViewTheme.Arrow.Expanded or treeViewTheme.Arrow.Collapsed
    
    local treeViewFolder = treeViewTheme.Folder
    if FFlagHighDpiIcons then
        treeViewFolder = ModernIcons.getIconForCurrentTheme(ModernIcons.IconEnums.BlankFolder)
    end
    


    local children = Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, treeViewTheme.Indent),
        BackgroundTransparency = 1,
        [Roact.Ref] = self.childrenContentRef,
    }, Cryo.Dictionary.join({
        FolderLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, treeViewTheme.Padding),
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            [Roact.Ref] = self.layoutRef,
            [Roact.Change.AbsoluteContentSize] = self.resizeFrameHeight,
        }),
        Padding = Roact.createElement("UIPadding", {
            PaddingTop = UDim.new(0, treeViewTheme.Indent),
        }),}, props.children)
    )

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, height),
        BackgroundTransparency = 1,
        [Roact.Ref] = self.parentContentRef,
        LayoutOrder = layoutOrder,

        [Roact.Event.MouseEnter] = self.mouseEnter,
        [Roact.Event.mouseLeave] = self.mouseLeave,
    }, {
        Contents = Roact.createElement(Button, {
            Size = UDim2.new(1, 0, 0, height),
            Position = UDim2.new(0, 2 * height, 0, 0),
            Text = name,
            Style = "TreeItemButton",

            OnClick = self.onClick,
        }, {
            Padding = Roact.createElement("UIPadding", {
                PaddingLeft = UDim.new(0, indent * treeViewTheme.Indent),
            }),

            Expand = Roact.createElement("ImageButton", {
                LayoutOrder = 0,
                Size = UDim2.new(0, height, 0, height),
                Position = UDim2.new(0, -2 * height - treeViewTheme.Offset, 0, 0),
                BackgroundTransparency = 1,
                ImageTransparency = 1,

                    [Roact.Event.Activated] = function()
                        props.toggleExpanded()
                        self.resizeFrameHeight()
                    end,
            }, {
                ExpandIcon = expandable and Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowProps, {
                    BackgroundTransparency = 1,
                    ScaleType = Enum.ScaleType.Fit,
                    Size = UDim2.new(0, treeViewTheme.Arrow.Size, 0, treeViewTheme.Arrow.Size),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.new(0.5, 0, 0.5, 1),
                    ImageTransparency = expandable and 0 or 1,
                    ImageColor3 = treeViewTheme.Arrow.Color,
                })),
            }),

            Icon = Roact.createElement("ImageLabel", {
                ZIndex = 2,
                LayoutOrder = 1,
                Size = UDim2.new(0, height, 0, height),
                Position = UDim2.new(0, -1 * height - treeViewTheme.Offset, 0, 0),
                BackgroundTransparency = 1,
                Image = treeViewFolder,
            }),
        }),
        Children = children,
    })
end

FolderTreeItem = withContext({
    Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
    Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
    Mouse = ContextServices.Mouse,
})(FolderTreeItem)

return FolderTreeItem