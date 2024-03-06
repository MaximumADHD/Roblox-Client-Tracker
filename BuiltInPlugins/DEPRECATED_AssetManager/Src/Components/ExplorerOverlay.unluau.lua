-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.ShowOnTop
local var7 = require(var0.Src.Components.FolderTreeItem)
local var8 = require(var0.Src.Util.Screens)
local var9 = require(var0.Src.Actions.SetRecentViewToggled)
local var10 = require(var0.Src.Actions.SetScreen)
local var11 = var1.PureComponent:extend("ExplorerOverlay")
local var12 = var2.Dash.join
local var13 = var4.TreeView
function var11.init(arg1)
   local var49 = {}
   arg1.props.FileExplorerData[1] = true
   var49.Expansion = {}
   var49.Selection = {}
   arg1.state = var49
   function arg1.OnExpansionChange(arg1)
      local var58 = {}
      var58.Expansion = arg1
      arg1:setState(var58)
   end
   
   function arg1.onSelectionChange(arg1)
      local var62 = {}
      var62.Selection = arg1
      arg1:setState(var62)
      local var1 = arg1.props
      local var2 = next(arg1)
      local var3 = var2.children
      if var3 == 0 then
         if var1.RecentViewToggled then
            var3 = var1.dispatchSetRecentViewToggled
            var3(false)
         end
         local var76 = var8
         local var77 = var2.Screen
         var76 = var1.dispatchSetScreen
         var77 = var76[var77]
         var76(var77)
         var1.CloseOverlay()
      end
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Overlay
   local var3 = var0.dispatchSetScreen
   local var4 = var0.CloseOverlay
   local var5 = var0.RecentViewToggled
   local var6 = var0.dispatchSetRecentViewToggled
   local var92 = {}
   local var96 = {}
   var96.BackgroundColor = Color3.new(0, 0, 0)
   var96.OnClick = var4
   var96.Position = UDim2.new(1, 0, 0, 0)
   var96.Size = UDim2.new(var2.Background.WidthScale, 0, 1, 0)
   var96.Transparency = var2.Background.Transparency
   var92.Background = var1.createElement(var5, var96)
   local var121 = {}
   var121.BackgroundColor = var1.BackgroundColor
   var121.Layout = Enum.FillDirection.Vertical
   var121.LayoutOrder = 2
   var121.VerticalAlignment = Enum.VerticalAlignment.Top
   var121.Size = UDim2.new(var2.Foreground.WidthScale, 0, 1, 0)
   local var133 = {}
   local var137 = {}
   var137.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var137.Layout = Enum.FillDirection.Horizontal
   var137.LayoutOrder = 1
   local var141 = {}
   var141.Right = var2.Padding.Right
   var137.Padding = var141
   var137.Size = UDim2.new(1, 0, 0, 24)
   local var150 = {}
   local var154 = {}
   var154.AnchorPoint = Vector2.new(0.5, 0.5)
   var154.BackgroundTransparency = 1
   var154.Image = var2.CloseButton.Images.Close
   var154.Size = UDim2.fromOffset(var2.CloseButton.Size, var2.CloseButton.Size)
   var1.Event.Activated = var4
   var150.CloseIcon = var1.createElement("ImageButton", var154)
   var133.CloseButton = var1.createElement(var5, var137, var150)
   local var177 = {}
   var177.RootItems = arg1.props.FileExplorerData
   var177.Size = UDim2.fromScale(1, 1)
   var177.Expansion = arg1.state.Expansion
   var177.LayoutOrder = 2
   var177.OnExpansionChange = arg1.OnExpansionChange
   var177.OnSelectionChange = arg1.onSelectionChange
   var133.FolderTree = var1.createElement(var13, var177)
   var92.Overlay = var1.createElement(var5, var121, var133)
   return var1.createElement(var6, {}, var92)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Overlay
   local var3 = var0.dispatchSetScreen
   local var4 = var0.CloseOverlay
   local var5 = var0.RecentViewToggled
   local var6 = var0.dispatchSetRecentViewToggled
   local var92 = {}
   local var96 = {}
   var96.BackgroundColor = Color3.new(0, 0, 0)
   var96.OnClick = var4
   var96.Position = UDim2.new(1, 0, 0, 0)
   var96.Size = UDim2.new(var2.Background.WidthScale, 0, 1, 0)
   var96.Transparency = var2.Background.Transparency
   var92.Background = var1.createElement(var5, var96)
   local var121 = {}
   var121.BackgroundColor = var1.BackgroundColor
   var121.Layout = Enum.FillDirection.Vertical
   var121.LayoutOrder = 2
   var121.VerticalAlignment = Enum.VerticalAlignment.Top
   var121.Size = UDim2.new(var2.Foreground.WidthScale, 0, 1, 0)
   local var133 = {}
   local var137 = {}
   var137.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var137.Layout = Enum.FillDirection.Horizontal
   var137.LayoutOrder = 1
   local var141 = {}
   var141.Right = var2.Padding.Right
   var137.Padding = var141
   var137.Size = UDim2.new(1, 0, 0, 24)
   local var150 = {}
   local var154 = {}
   var154.AnchorPoint = Vector2.new(0.5, 0.5)
   var154.BackgroundTransparency = 1
   var154.Image = var2.CloseButton.Images.Close
   var154.Size = UDim2.fromOffset(var2.CloseButton.Size, var2.CloseButton.Size)
   var1.Event.Activated = var4
   var150.CloseIcon = var1.createElement("ImageButton", var154)
   var133.CloseButton = var1.createElement(var5, var137, var150)
   local var177 = {}
   var177.RootItems = arg1.props.FileExplorerData
   var177.Size = UDim2.fromScale(1, 1)
   var177.Expansion = arg1.state.Expansion
   var177.LayoutOrder = 2
   var177.OnExpansionChange = arg1.OnExpansionChange
   var177.OnSelectionChange = arg1.onSelectionChange
   var133.FolderTree = var1.createElement(var13, var177)
   var92.Overlay = var1.createElement(var5, var121, var133)
   return var1.createElement(var6, {}, var92)
end

fun3 = var3.withContext
local var192 = {}
var192.Stylizer = var3.Stylizer
var192.Localization = var3.Localization
var11 = fun3(var192)(var11)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.RecentViewToggled = arg1.AssetManagerReducer.recentViewToggled
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchSetRecentViewToggled(arg1)
      local var207 = {}
      var207.Expansion = arg1
      arg1:setState(var207)
   end
   
   function var0.dispatchSetScreen(arg1)
      local var211 = {}
      var211.Selection = arg1
      arg1:setState(var211)
      local var1 = arg1.props
      local var2 = next(arg1)
      local var3 = var2.children
      if var3 == 0 then
         if var1.RecentViewToggled then
            var3 = var1.dispatchSetRecentViewToggled
            var3(false)
         end
         local var225 = var8
         local var226 = var2.Screen
         var225 = var1.dispatchSetScreen
         var226 = var225[var226]
         var225(var226)
         var1.CloseOverlay()
      end
   end
   
   return var0
end)(var11)
