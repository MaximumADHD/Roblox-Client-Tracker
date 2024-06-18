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
   local var958 = {}
   var958.showingExpandedPreview = false
   arg1.state = var958
   function arg1.openExpandedPreview()
      local var961 = {}
      var961.showingExpandedPreview = true
      arg1:setState(var961)
   end
   
   function arg1.closeExpandedPreview()
      local var965 = {}
      var965.showingExpandedPreview = false
      arg1:setState(var965)
   end
   
end

local function fun21(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var975 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var998 = {}
   var998.BackgroundTransparency = 1
   var998.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var1007 = {}
   local var1011 = {}
   var1011.SortOrder = Enum.SortOrder.LayoutOrder
   var1011.Padding = UDim.new(0, var3.PaddingVertical)
   var1007.UIListLayout = var1.createElement("UIListLayout", var1011)
   local var1021 = {}
   var1021.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1021.Layout = Enum.FillDirection.Horizontal
   var1021.Size = UDim2.new(1, 0, 0, var6)
   var1021.Spacing = var3.PaddingHorizontal
   local var1031 = {}
   local var1035 = {}
   var1035.LayoutOrder = 1
   var1035.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1044 = {}
   local var1048 = {}
   var1048.ImageId = var0.ImageId
   var1048.IsTempId = var0.IsTempId
   var1048.ClearSelection = var0.ClearSelection
   var1048.OpenExpandedPreview = arg1.openExpandedPreview
   local var1053 = var1.createElement(var10, var1048)
   var1044.PreviewImage = var1053
   var1053 = var8
   if var1053 then
      local var1057 = {}
      var1057.PreviewTitle = var0.SelectionName
      var1057.ImageId = var0.ImageId
      var1057.IsTempId = var0.IsTempId
      var1057.Metadata = var9
      var1057.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1057)
   end
   var1044.ExpandedPreview = var1053
   var1031.PreviewColumn = var1.createElement(var5, var1035, var1044)
   local var1066 = {}
   var1066.Size = UDim2.new(0, var5, 1, 0)
   var1066.Style = "RoundBox"
   var1066.Spacing = 10
   var1066.VerticalAlignment = Enum.VerticalAlignment.Top
   var1066.Layout = Enum.FillDirection.Vertical
   var1066.LayoutOrder = 2
   local var1078 = {}
   local var1082 = {}
   var1082.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1082.Text = var0.SearchUrl
   var1082.Size = UDim2.new(1, 0, 0, var7)
   var1082.OnFocusLost = var0.OnFocusLost
   var1082.Style = "FilledRoundedBorder"
   var1078.UrlImport = var1.createElement(var7, var1082)
   local var1100 = {}
   var1100.Size = UDim2.new(1, 0, 0, var7)
   var1100.Text = var1:getText("CreateDialog", "Import")
   var1100.TextXAlignment = Enum.TextXAlignment.Left
   var1100.LeftIcon = var3.ImportIcon
   var1100.IconColor = var3.ImportIconColor
   var1100.BackgroundColor = var3.ButtonColor
   var1100.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1100.Padding = var11
   var1078.IconImport = var1.createElement(var6, var1100)
   var1031.ImportColumn = var1.createElement(var5, var1066, var1078)
   var1007.TwoColumn = var1.createElement(var5, var1021, var1031)
   return var1.createElement("Frame", var998, var1007)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var2.PromptSelectorWithPreview
   local var975 = var0.PreviewTitle
   local var5 = var0.ColumnWidth or var3.ColumnWidth
   local var6 = var3.PreviewSize
   local var7 = var3.ButtonHeight
   local var8 = arg1.state.showingExpandedPreview
   local var9 = nil
   if var8 then
      local var0 = var2
      var9 = {}
   end
   local var998 = {}
   var998.BackgroundTransparency = 1
   var998.Size = UDim2.new(0, (var5) + var3.LabelColumnWidth.Offset, 0, var6 + var3.PaddingVertical)
   local var1007 = {}
   local var1011 = {}
   var1011.SortOrder = Enum.SortOrder.LayoutOrder
   var1011.Padding = UDim.new(0, var3.PaddingVertical)
   var1007.UIListLayout = var1.createElement("UIListLayout", var1011)
   local var1021 = {}
   var1021.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1021.Layout = Enum.FillDirection.Horizontal
   var1021.Size = UDim2.new(1, 0, 0, var6)
   var1021.Spacing = var3.PaddingHorizontal
   local var1031 = {}
   local var1035 = {}
   var1035.LayoutOrder = 1
   var1035.Size = UDim2.new(var0.LabelWidth, UDim.new(1, 0))
   local var1044 = {}
   local var1048 = {}
   var1048.ImageId = var0.ImageId
   var1048.IsTempId = var0.IsTempId
   var1048.ClearSelection = var0.ClearSelection
   var1048.OpenExpandedPreview = arg1.openExpandedPreview
   local var1053 = var1.createElement(var10, var1048)
   var1044.PreviewImage = var1053
   var1053 = var8
   if var1053 then
      local var1057 = {}
      var1057.PreviewTitle = var0.SelectionName
      var1057.ImageId = var0.ImageId
      var1057.IsTempId = var0.IsTempId
      var1057.Metadata = var9
      var1057.OnClose = arg1.closeExpandedPreview
      local var0 = var1.createElement(var9, var1057)
   end
   var1044.ExpandedPreview = var1053
   var1031.PreviewColumn = var1.createElement(var5, var1035, var1044)
   local var1066 = {}
   var1066.Size = UDim2.new(0, var5, 1, 0)
   var1066.Style = "RoundBox"
   var1066.Spacing = 10
   var1066.VerticalAlignment = Enum.VerticalAlignment.Top
   var1066.Layout = Enum.FillDirection.Vertical
   var1066.LayoutOrder = 2
   local var1078 = {}
   local var1082 = {}
   var1082.PlaceholderText = var1:getText("CreateDialog", "InsertAssetURL")
   var1082.Text = var0.SearchUrl
   var1082.Size = UDim2.new(1, 0, 0, var7)
   var1082.OnFocusLost = var0.OnFocusLost
   var1082.Style = "FilledRoundedBorder"
   var1078.UrlImport = var1.createElement(var7, var1082)
   local var1100 = {}
   var1100.Size = UDim2.new(1, 0, 0, var7)
   var1100.Text = var1:getText("CreateDialog", "Import")
   var1100.TextXAlignment = Enum.TextXAlignment.Left
   var1100.LeftIcon = var3.ImportIcon
   var1100.IconColor = var3.ImportIconColor
   var1100.BackgroundColor = var3.ButtonColor
   var1100.OnClick = var0.PromptSelection
   local var11 = {}
   var11.Left = ((var5) - 60) / 2 - 5
   var11.Right = ((var5) - 60) / 2 + 5
   var1100.Padding = var11
   var1078.IconImport = var1.createElement(var6, var1100)
   var1031.ImportColumn = var1.createElement(var5, var1066, var1078)
   var1007.TwoColumn = var1.createElement(var5, var1021, var1031)
   return var1.createElement("Frame", var998, var1007)
end

fun21 = var3.withContext
local var1121 = {}
var1121.Stylizer = var2.Style.Stylizer
var1121.Localization = var3.Localization
var11 = fun21(var1121)(var11)
return var11
