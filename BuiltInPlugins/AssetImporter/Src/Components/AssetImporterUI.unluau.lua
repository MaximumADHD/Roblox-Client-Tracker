-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.Separator
local var7 = require(var0.Src.Components.AssetImportTree)
local var8 = require(var0.Src.Components.Properties.ImportConfiguration)
local var9 = require(var0.Src.Components.TopBar)
local var10 = require(var0.Src.Components.Preview.PreviewContainer)
local var11 = require(var0.Src.Thunks.ShowImportPrompt)
local var12 = var1.PureComponent:extend("AssetImporterUI")
function var12.init(arg1)
   local var0 = arg1.props
   local var62 = {}
   var62.showContext = false
   arg1:setState(var62)
   function arg1.showImportPromptHandler(arg1, arg2)
      if arg1 then
         if not arg2 then
            arg1.PresetController:initializePresets()
         end
      end
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Sizes
   local var77 = {}
   var77.Layout = Enum.FillDirection.Vertical
   local var79 = {}
   local var83 = {}
   var83.LayoutOrder = 1
   var83.Padding = var1.TopBarPadding
   local var91 = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var83.Size = var91
   local var92 = var0.Filename
   var83.FileName = var91
   var83.OnBrowse = arg1.showImportPromptHandler
   var79.TopBar = var1.createElement(var9, var83)
   local var98 = {}
   var98.DominantAxis = Enum.DominantAxis.Width
   var98.LayoutOrder = 2
   var79.TopSeparator = var1.createElement(var6, var98)
   local var105 = {}
   var105.Layout = Enum.FillDirection.Horizontal
   var105.LayoutOrder = 3
   var105.Position = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var105.Size = UDim2.new(1, 0, 1, var2.TopBarHeight + 2)
   local var122 = {}
   local var126 = {}
   var126.LayoutOrder = 1
   var126.Layout = Enum.FillDirection.Vertical
   var126.Size = UDim2.new(0.5, 0, 1, 0)
   local var135 = {}
   var135.PreviewContainer = var1.createElement(var10)
   local var143 = {}
   var143.DominantAxis = Enum.DominantAxis.Width
   var143.LayoutOrder = 2
   var135.Separator = var1.createElement(var6, var143)
   local var150 = {}
   var150.LayoutOrder = 3
   var150.Size = UDim2.new(1, 0, var2.PreviewRatio, 65535)
   local var158 = {}
   local var162 = {}
   local var5 = {}
   local var164 = var0.ImportTree
   var162.Instances = var5
   local var7 = var0.Filename
   var162.FileName = var5
   var158.TreeView = var1.createElement(var7, var162)
   var135.TreeContainer = var1.createElement(var5, var150, var158)
   var122.LeftPanel = var1.createElement(var5, var126, var135)
   local var172 = {}
   var172.DominantAxis = Enum.DominantAxis.Height
   var172.LayoutOrder = 2
   var122.Separator = var1.createElement(var6, var172)
   local var179 = {}
   var179.LayoutOrder = 3
   var179.Size = UDim2.new(0.5, 65535, 1, 0)
   local var187 = {}
   local var191 = {}
   var191.ImportItem = var0.SelectedImportItem
   var191.AssetImportSession = var0.AssetImportSession
   var187.ImportConfiguration = var1.createElement(var8, var191)
   var122.RightPanel = var1.createElement(var5, var179, var187)
   var79.BottomPanel = var1.createElement(var5, var105, var122)
   return var1.createElement(var5, var77, var79)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Sizes
   local var77 = {}
   var77.Layout = Enum.FillDirection.Vertical
   local var79 = {}
   local var83 = {}
   var83.LayoutOrder = 1
   var83.Padding = var1.TopBarPadding
   local var91 = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var83.Size = var91
   local var92 = var0.Filename
   var83.FileName = var91
   var83.OnBrowse = arg1.showImportPromptHandler
   var79.TopBar = var1.createElement(var9, var83)
   local var98 = {}
   var98.DominantAxis = Enum.DominantAxis.Width
   var98.LayoutOrder = 2
   var79.TopSeparator = var1.createElement(var6, var98)
   local var105 = {}
   var105.Layout = Enum.FillDirection.Horizontal
   var105.LayoutOrder = 3
   var105.Position = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var105.Size = UDim2.new(1, 0, 1, var2.TopBarHeight + 2)
   local var122 = {}
   local var126 = {}
   var126.LayoutOrder = 1
   var126.Layout = Enum.FillDirection.Vertical
   var126.Size = UDim2.new(0.5, 0, 1, 0)
   local var135 = {}
   var135.PreviewContainer = var1.createElement(var10)
   local var143 = {}
   var143.DominantAxis = Enum.DominantAxis.Width
   var143.LayoutOrder = 2
   var135.Separator = var1.createElement(var6, var143)
   local var150 = {}
   var150.LayoutOrder = 3
   var150.Size = UDim2.new(1, 0, var2.PreviewRatio, 65535)
   local var158 = {}
   local var162 = {}
   local var5 = {}
   local var164 = var0.ImportTree
   var162.Instances = var5
   local var7 = var0.Filename
   var162.FileName = var5
   var158.TreeView = var1.createElement(var7, var162)
   var135.TreeContainer = var1.createElement(var5, var150, var158)
   var122.LeftPanel = var1.createElement(var5, var126, var135)
   local var172 = {}
   var172.DominantAxis = Enum.DominantAxis.Height
   var172.LayoutOrder = 2
   var122.Separator = var1.createElement(var6, var172)
   local var179 = {}
   var179.LayoutOrder = 3
   var179.Size = UDim2.new(0.5, 65535, 1, 0)
   local var187 = {}
   local var191 = {}
   var191.ImportItem = var0.SelectedImportItem
   var191.AssetImportSession = var0.AssetImportSession
   var187.ImportConfiguration = var1.createElement(var8, var191)
   var122.RightPanel = var1.createElement(var5, var179, var187)
   var79.BottomPanel = var1.createElement(var5, var105, var122)
   return var1.createElement(var5, var77, var79)
end

fun2 = var3.withContext
local var198 = {}
var198.Localization = var3.Localization
var198.Stylizer = var2.Style.Stylizer
var198.PresetController = require(var0.Src.Controllers.PresetController)
var12 = fun2(var198)(var12)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.AssetImportSession = arg1.assetImportSession
   var0.ImportTree = arg1.importTree
   var0.Filename = arg1.filename
   var0.SelectedImportItem = arg1.selectedImportItem
   return var0
end, function(arg1)
   local var0 = {}
   function var0.ShowImportPrompt(arg1, arg2)
      if arg1 then
         if not arg2 then
            arg1.PresetController:initializePresets()
         end
      end
   end
   
   return var0
end)(var12)
