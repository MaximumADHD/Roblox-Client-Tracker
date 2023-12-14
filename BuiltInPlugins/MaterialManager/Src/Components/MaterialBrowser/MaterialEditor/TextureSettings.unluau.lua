-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.LayoutOrderIterator
local var4 = var2.ContextServices
local var5 = var2.UI
local var6 = var5.Pane
local var7 = var5.ExpandablePane
local var8 = require(var0.Src.Actions.SetExpandedPane)
local var9 = require(var0.Src.Reducers.MainReducer)
local var224 = var0.Src
local var11 = require(var224.Components.MaterialBrowser.MaterialEditor.TextureMapSelector)
local var12 = var0.Src.Resources.Constants
local var13 = require(var12.getTextureMapNames)()
var224 = require(var12.getSettingsNames)
local var14 = var224()
local var15 = var1.PureComponent:extend("TextureSettings")
function var15.init(arg1)
   function arg1.onExpandedChanged()
      local var0 = arg1.props
      var0.dispatchSetExpandedPane(var14.TextureSettings, var0.ExpandedPane)
   end
   
end

local function fun13(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.TextureSettings
   local var2 = var0.Localization
   if not var0.PBRMaterial then
      return var1.createElement(var6)
   end
   local var3 = var3.new()
   local var4 = {}
   local var272 = {}
   var272.LayoutOrder = var3:getNextOrder()
   var272.LabelColumnWidth = var1.LabelColumnWidth
   var272.LabelWidth = var1.LabelWidth
   var272.MapType = var13.ColorMap
   var272.PreviewTitle = var2:getText("Import", "ColorMapPreview")
   var272.Text = var2:getText("CreateDialog", "ImportColorMap")
   var272.PBRMaterial = var0.PBRMaterial
   var272.ColumnWidth = var1.ColumnWidth
   var4.ImportColorMap = var1.createElement(var11, var272)
   local var293 = {}
   var293.LayoutOrder = var3:getNextOrder()
   var293.LabelColumnWidth = var1.LabelColumnWidth
   var293.LabelWidth = var1.LabelWidth
   var293.MapType = var13.MetalnessMap
   var293.PreviewTitle = var2:getText("Import", "MetalnessMapPreview")
   var293.Text = var2:getText("CreateDialog", "ImportMetalnessMap")
   var293.PBRMaterial = var0.PBRMaterial
   var293.ColumnWidth = var1.ColumnWidth
   var4.ImportMetalnessMap = var1.createElement(var11, var293)
   local var314 = {}
   var314.LayoutOrder = var3:getNextOrder()
   var314.LabelColumnWidth = var1.LabelColumnWidth
   var314.LabelWidth = var1.LabelWidth
   var314.MapType = var13.NormalMap
   var314.PreviewTitle = var2:getText("Import", "NormalMapPreview")
   var314.Text = var2:getText("CreateDialog", "ImportNormalMap")
   var314.PBRMaterial = var0.PBRMaterial
   var314.ColumnWidth = var1.ColumnWidth
   var4.ImportNormalMap = var1.createElement(var11, var314)
   local var335 = {}
   var335.LayoutOrder = var3:getNextOrder()
   var335.LabelColumnWidth = var1.LabelColumnWidth
   var335.LabelWidth = var1.LabelWidth
   var335.MapType = var13.RoughnessMap
   var335.PreviewTitle = var2:getText("Import", "RoughnessMapPreview")
   var335.Text = var2:getText("CreateDialog", "ImportRoughnessMap")
   var335.PBRMaterial = var0.PBRMaterial
   var335.ColumnWidth = var1.ColumnWidth
   var4.ImportRoughnessMap = var1.createElement(var11, var335)
   if var0.Expandable then
      local var357 = {}
      var357.LayoutOrder = var0.LayoutOrder
      var357.ContentPadding = var1.ContentPadding
      var357.ContentSpacing = var1.ItemSpacing
      var357.Text = var2:getText("MaterialTextures", "TextureMaps")
      var357.Style = var1.CustomExpandablePane
      var357.Expanded = var0.ExpandedPane
      local var367 = arg1.onExpandedChanged
      var357.OnExpandedChanged = var367
      var367 = var4
      return var1.createElement(var7, var357, var367)
   end
   local var372 = {}
   var372.AutomaticSize = Enum.AutomaticSize.Y
   var372.LayoutOrder = var0.LayoutOrder
   var372.Layout = Enum.FillDirection.Vertical
   var372.Spacing = var1.ItemSpacing
   local var377 = Enum.HorizontalAlignment.Left
   var372.HorizontalAlignment = var377
   var377 = var4
   return var1.createElement(var6, var372, var377)
end

function var15.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.TextureSettings
   local var2 = var0.Localization
   if not var0.PBRMaterial then
      return var1.createElement(var6)
   end
   local var3 = var3.new()
   local var4 = {}
   local var272 = {}
   var272.LayoutOrder = var3:getNextOrder()
   var272.LabelColumnWidth = var1.LabelColumnWidth
   var272.LabelWidth = var1.LabelWidth
   var272.MapType = var13.ColorMap
   var272.PreviewTitle = var2:getText("Import", "ColorMapPreview")
   var272.Text = var2:getText("CreateDialog", "ImportColorMap")
   var272.PBRMaterial = var0.PBRMaterial
   var272.ColumnWidth = var1.ColumnWidth
   var4.ImportColorMap = var1.createElement(var11, var272)
   local var293 = {}
   var293.LayoutOrder = var3:getNextOrder()
   var293.LabelColumnWidth = var1.LabelColumnWidth
   var293.LabelWidth = var1.LabelWidth
   var293.MapType = var13.MetalnessMap
   var293.PreviewTitle = var2:getText("Import", "MetalnessMapPreview")
   var293.Text = var2:getText("CreateDialog", "ImportMetalnessMap")
   var293.PBRMaterial = var0.PBRMaterial
   var293.ColumnWidth = var1.ColumnWidth
   var4.ImportMetalnessMap = var1.createElement(var11, var293)
   local var314 = {}
   var314.LayoutOrder = var3:getNextOrder()
   var314.LabelColumnWidth = var1.LabelColumnWidth
   var314.LabelWidth = var1.LabelWidth
   var314.MapType = var13.NormalMap
   var314.PreviewTitle = var2:getText("Import", "NormalMapPreview")
   var314.Text = var2:getText("CreateDialog", "ImportNormalMap")
   var314.PBRMaterial = var0.PBRMaterial
   var314.ColumnWidth = var1.ColumnWidth
   var4.ImportNormalMap = var1.createElement(var11, var314)
   local var335 = {}
   var335.LayoutOrder = var3:getNextOrder()
   var335.LabelColumnWidth = var1.LabelColumnWidth
   var335.LabelWidth = var1.LabelWidth
   var335.MapType = var13.RoughnessMap
   var335.PreviewTitle = var2:getText("Import", "RoughnessMapPreview")
   var335.Text = var2:getText("CreateDialog", "ImportRoughnessMap")
   var335.PBRMaterial = var0.PBRMaterial
   var335.ColumnWidth = var1.ColumnWidth
   var4.ImportRoughnessMap = var1.createElement(var11, var335)
   if var0.Expandable then
      local var357 = {}
      var357.LayoutOrder = var0.LayoutOrder
      var357.ContentPadding = var1.ContentPadding
      var357.ContentSpacing = var1.ItemSpacing
      var357.Text = var2:getText("MaterialTextures", "TextureMaps")
      var357.Style = var1.CustomExpandablePane
      var357.Expanded = var0.ExpandedPane
      local var367 = arg1.onExpandedChanged
      var357.OnExpandedChanged = var367
      var367 = var4
      return var1.createElement(var7, var357, var367)
   end
   local var372 = {}
   var372.AutomaticSize = Enum.AutomaticSize.Y
   var372.LayoutOrder = var0.LayoutOrder
   var372.Layout = Enum.FillDirection.Vertical
   var372.Spacing = var1.ItemSpacing
   local var377 = Enum.HorizontalAlignment.Left
   var372.HorizontalAlignment = var377
   var377 = var4
   return var1.createElement(var6, var372, var377)
end

fun13 = var4.withContext
local var379 = {}
var379.Analytics = var4.Analytics
var379.Localization = var4.Localization
var379.Stylizer = var2.Style.Stylizer
var15 = fun13(var379)(var15)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ExpandedPane = arg1.MaterialBrowserReducer.ExpandedPane[var14.TextureSettings]
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchSetExpandedPane()
      local var0 = arg1.props
      var0.dispatchSetExpandedPane(var14.TextureSettings, var0.ExpandedPane)
   end
   
   return var0
end)(var15)
