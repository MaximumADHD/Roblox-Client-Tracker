-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.IconButton
local var7 = var4.DEPRECATED_TextInput
local var8 = var0.Src.Components
local var9 = require(var8.PromptSelectorWithPreview.PreviewDialog)
local var10 = require(var8.PromptSelectorWithPreview.PreviewImage)
local var11 = var1.PureComponent:extend("PromptSelectorWithPreview")
function var11.init(arg1)
   local var941 = {}
   var941.showingExpandedPreview = false
   arg1.state = var941
   function arg1.openExpandedPreview()
      local var944 = {}
      var944.showingExpandedPreview = true
      arg1:setState(var944)
   end
   
   function arg1.closeExpandedPreview()
      local var948 = {}
      var948.showingExpandedPreview = false
      arg1:setState(var948)
   end
   
end

local function fun21(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var958 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var981 = {}
   var981.BackgroundTransparency = 1
   var981.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var990 = {}
   local var994 = {}
   var994.SortOrder = Enum.SortOrder.LayoutOrder
   var994.Padding = UDim.new(0, var3.PaddingVertical)
   var990.UIListLayout = var1.createElement("UIListLayout", var994)
   local var1004 = {}
   var1004.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1004.Layout = Enum.FillDirection.Horizontal
   var1004.Size = UDim2.new(1, 0, 0, var6)
   var1004.Spacing = var3.PaddingHorizontal
   local var1014 = {}
   local var1018 = {}
   var1018.LayoutOrder = 1
   var1018.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1027 = {}
   local var1031 = {}
   var1031.ImageId = var0.ImageId
   var1031.IsTempId = var0.IsTempId
   var1031.ClearSelection = var0.ClearSelection
   var1031.OpenExpandedPreview = arg1.openExpandedPreview
   local var1036 = var1.createElement(var10, var1031)
   var1027.PreviewImage = var1036
   var1036 = var8
   if var1036 then
      local var1040 = {}
      var1040.PreviewTitle = var0.SelectionName
      var1040.ImageId = var0.ImageId
      var1040.IsTempId = var0.IsTempId
      var1040.Metadata = var9
      var1040.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1040)
   end
   var1027.ExpandedPreview = var1036
   var1014.PreviewColumn = var1.createElement(var5, var1018, var1027)
   local var1049 = {}
   var1049.Size = UDim2.new(0, var5, 1, 0)
   var1049.Style = "RoundBox"
   var1049.Spacing = 10
   var1049.VerticalAlignment = Enum.VerticalAlignment.Top
   var1049.Layout = Enum.FillDirection.Vertical
   var1049.LayoutOrder = 2
   local var1061 = {}
   local var1065 = {}
   var1065.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1065.Text = var0.SearchUrl
   var1065.Size = UDim2.new(1, 0, 0, var7)
   var1065.OnFocusLost = var0.OnFocusLost
   var1065.Style = "FilledRoundedBorder"
   var1061.UrlImport = var1.createElement(var7, var1065)
   local var1083 = {}
   var1083.Size = UDim2.new(1, 0, 0, var7)
   var1083.Text = var1:getText("CreateDialog", "Import")
   var1083.TextXAlignment = Enum.TextXAlignment.Left
   var1083.LeftIcon = var3.ImportIcon
   var1083.IconColor = var3.ImportIconColor
   var1083.BackgroundColor = var3.ButtonColor
   var1083.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1083.Padding = var11
   var1061.IconImport = var1.createElement(var6, var1083)
   var1014.ImportColumn = var1.createElement(var5, var1049, var1061)
   var990.TwoColumn = var1.createElement(var5, var1004, var1014)
   return var1.createElement("Frame", var981, var990)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var958 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var981 = {}
   var981.BackgroundTransparency = 1
   var981.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var990 = {}
   local var994 = {}
   var994.SortOrder = Enum.SortOrder.LayoutOrder
   var994.Padding = UDim.new(0, var3.PaddingVertical)
   var990.UIListLayout = var1.createElement("UIListLayout", var994)
   local var1004 = {}
   var1004.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1004.Layout = Enum.FillDirection.Horizontal
   var1004.Size = UDim2.new(1, 0, 0, var6)
   var1004.Spacing = var3.PaddingHorizontal
   local var1014 = {}
   local var1018 = {}
   var1018.LayoutOrder = 1
   var1018.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1027 = {}
   local var1031 = {}
   var1031.ImageId = var0.ImageId
   var1031.IsTempId = var0.IsTempId
   var1031.ClearSelection = var0.ClearSelection
   var1031.OpenExpandedPreview = arg1.openExpandedPreview
   local var1036 = var1.createElement(var10, var1031)
   var1027.PreviewImage = var1036
   var1036 = var8
   if var1036 then
      local var1040 = {}
      var1040.PreviewTitle = var0.SelectionName
      var1040.ImageId = var0.ImageId
      var1040.IsTempId = var0.IsTempId
      var1040.Metadata = var9
      var1040.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1040)
   end
   var1027.ExpandedPreview = var1036
   var1014.PreviewColumn = var1.createElement(var5, var1018, var1027)
   local var1049 = {}
   var1049.Size = UDim2.new(0, var5, 1, 0)
   var1049.Style = "RoundBox"
   var1049.Spacing = 10
   var1049.VerticalAlignment = Enum.VerticalAlignment.Top
   var1049.Layout = Enum.FillDirection.Vertical
   var1049.LayoutOrder = 2
   local var1061 = {}
   local var1065 = {}
   var1065.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1065.Text = var0.SearchUrl
   var1065.Size = UDim2.new(1, 0, 0, var7)
   var1065.OnFocusLost = var0.OnFocusLost
   var1065.Style = "FilledRoundedBorder"
   var1061.UrlImport = var1.createElement(var7, var1065)
   local var1083 = {}
   var1083.Size = UDim2.new(1, 0, 0, var7)
   var1083.Text = var1:getText("CreateDialog", "Import")
   var1083.TextXAlignment = Enum.TextXAlignment.Left
   var1083.LeftIcon = var3.ImportIcon
   var1083.IconColor = var3.ImportIconColor
   var1083.BackgroundColor = var3.ButtonColor
   var1083.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1083.Padding = var11
   var1061.IconImport = var1.createElement(var6, var1083)
   var1014.ImportColumn = var1.createElement(var5, var1049, var1061)
   var990.TwoColumn = var1.createElement(var5, var1004, var1014)
   return var1.createElement("Frame", var981, var990)
end

fun21 = var3.withContext
local var1104 = {}
var1104.Stylizer = var2.Style.Stylizer
var1104.Localization = var3.Localization
var11 = fun21(var1104)(var11)
return var11
