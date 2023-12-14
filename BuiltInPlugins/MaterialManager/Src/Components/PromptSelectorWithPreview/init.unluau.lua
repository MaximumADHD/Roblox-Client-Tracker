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
   local var937 = {}
   var937.showingExpandedPreview = false
   arg1.state = var937
   function arg1.openExpandedPreview()
      local var940 = {}
      var940.showingExpandedPreview = true
      arg1:setState(var940)
   end
   
   function arg1.closeExpandedPreview()
      local var944 = {}
      var944.showingExpandedPreview = false
      arg1:setState(var944)
   end
   
end

local function fun21(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var954 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var977 = {}
   var977.BackgroundTransparency = 1
   var977.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var986 = {}
   local var990 = {}
   var990.SortOrder = Enum.SortOrder.LayoutOrder
   var990.Padding = UDim.new(0, var3.PaddingVertical)
   var986.UIListLayout = var1.createElement("UIListLayout", var990)
   local var1000 = {}
   var1000.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1000.Layout = Enum.FillDirection.Horizontal
   var1000.Size = UDim2.new(1, 0, 0, var6)
   var1000.Spacing = var3.PaddingHorizontal
   local var1010 = {}
   local var1014 = {}
   var1014.LayoutOrder = 1
   var1014.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1023 = {}
   local var1027 = {}
   var1027.ImageId = var0.ImageId
   var1027.IsTempId = var0.IsTempId
   var1027.ClearSelection = var0.ClearSelection
   var1027.OpenExpandedPreview = arg1.openExpandedPreview
   local var1032 = var1.createElement(var10, var1027)
   var1023.PreviewImage = var1032
   var1032 = var8
   if var1032 then
      local var1036 = {}
      var1036.PreviewTitle = var0.SelectionName
      var1036.ImageId = var0.ImageId
      var1036.IsTempId = var0.IsTempId
      var1036.Metadata = var9
      var1036.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1036)
   end
   var1023.ExpandedPreview = var1032
   var1010.PreviewColumn = var1.createElement(var5, var1014, var1023)
   local var1045 = {}
   var1045.Size = UDim2.new(0, var5, 1, 0)
   var1045.Style = "RoundBox"
   var1045.Spacing = 10
   var1045.VerticalAlignment = Enum.VerticalAlignment.Top
   var1045.Layout = Enum.FillDirection.Vertical
   var1045.LayoutOrder = 2
   local var1057 = {}
   local var1061 = {}
   var1061.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1061.Text = var0.SearchUrl
   var1061.Size = UDim2.new(1, 0, 0, var7)
   var1061.OnFocusLost = var0.OnFocusLost
   var1061.Style = "FilledRoundedBorder"
   var1057.UrlImport = var1.createElement(var7, var1061)
   local var1079 = {}
   var1079.Size = UDim2.new(1, 0, 0, var7)
   var1079.Text = var1:getText("CreateDialog", "Import")
   var1079.TextXAlignment = Enum.TextXAlignment.Left
   var1079.LeftIcon = var3.ImportIcon
   var1079.IconColor = var3.ImportIconColor
   var1079.BackgroundColor = var3.ButtonColor
   var1079.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1079.Padding = var11
   var1057.IconImport = var1.createElement(var6, var1079)
   var1010.ImportColumn = var1.createElement(var5, var1045, var1057)
   var986.TwoColumn = var1.createElement(var5, var1000, var1010)
   return var1.createElement("Frame", var977, var986)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var954 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var977 = {}
   var977.BackgroundTransparency = 1
   var977.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var986 = {}
   local var990 = {}
   var990.SortOrder = Enum.SortOrder.LayoutOrder
   var990.Padding = UDim.new(0, var3.PaddingVertical)
   var986.UIListLayout = var1.createElement("UIListLayout", var990)
   local var1000 = {}
   var1000.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1000.Layout = Enum.FillDirection.Horizontal
   var1000.Size = UDim2.new(1, 0, 0, var6)
   var1000.Spacing = var3.PaddingHorizontal
   local var1010 = {}
   local var1014 = {}
   var1014.LayoutOrder = 1
   var1014.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1023 = {}
   local var1027 = {}
   var1027.ImageId = var0.ImageId
   var1027.IsTempId = var0.IsTempId
   var1027.ClearSelection = var0.ClearSelection
   var1027.OpenExpandedPreview = arg1.openExpandedPreview
   local var1032 = var1.createElement(var10, var1027)
   var1023.PreviewImage = var1032
   var1032 = var8
   if var1032 then
      local var1036 = {}
      var1036.PreviewTitle = var0.SelectionName
      var1036.ImageId = var0.ImageId
      var1036.IsTempId = var0.IsTempId
      var1036.Metadata = var9
      var1036.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1036)
   end
   var1023.ExpandedPreview = var1032
   var1010.PreviewColumn = var1.createElement(var5, var1014, var1023)
   local var1045 = {}
   var1045.Size = UDim2.new(0, var5, 1, 0)
   var1045.Style = "RoundBox"
   var1045.Spacing = 10
   var1045.VerticalAlignment = Enum.VerticalAlignment.Top
   var1045.Layout = Enum.FillDirection.Vertical
   var1045.LayoutOrder = 2
   local var1057 = {}
   local var1061 = {}
   var1061.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1061.Text = var0.SearchUrl
   var1061.Size = UDim2.new(1, 0, 0, var7)
   var1061.OnFocusLost = var0.OnFocusLost
   var1061.Style = "FilledRoundedBorder"
   var1057.UrlImport = var1.createElement(var7, var1061)
   local var1079 = {}
   var1079.Size = UDim2.new(1, 0, 0, var7)
   var1079.Text = var1:getText("CreateDialog", "Import")
   var1079.TextXAlignment = Enum.TextXAlignment.Left
   var1079.LeftIcon = var3.ImportIcon
   var1079.IconColor = var3.ImportIconColor
   var1079.BackgroundColor = var3.ButtonColor
   var1079.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1079.Padding = var11
   var1057.IconImport = var1.createElement(var6, var1079)
   var1010.ImportColumn = var1.createElement(var5, var1045, var1057)
   var986.TwoColumn = var1.createElement(var5, var1000, var1010)
   return var1.createElement("Frame", var977, var986)
end

fun21 = var3.withContext
local var1100 = {}
var1100.Stylizer = var2.Style.Stylizer
var1100.Localization = var3.Localization
var11 = fun21(var1100)(var11)
return var11
