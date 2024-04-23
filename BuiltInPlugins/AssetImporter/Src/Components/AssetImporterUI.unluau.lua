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
local var12 = require(var0.Src.Flags.getFFlagAssetImportRefactorReducer)
local var13 = var1.PureComponent:extend("AssetImporterUI")
function var13.init(arg1)
   local var0 = arg1.props
   local var67 = {}
   var67.showContext = false
   arg1:setState(var67)
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
   local var82 = {}
   var82.Layout = Enum.FillDirection.Vertical
   local var84 = {}
   local var88 = {}
   var88.LayoutOrder = 1
   var88.Padding = var1.TopBarPadding
   local var96 = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var88.Size = var96
   local var97 = var0.Filename
   var88.FileName = var96
   var88.OnBrowse = arg1.showImportPromptHandler
   var84.TopBar = var1.createElement(var9, var88)
   local var103 = {}
   var103.DominantAxis = Enum.DominantAxis.Width
   var103.LayoutOrder = 2
   var84.TopSeparator = var1.createElement(var6, var103)
   local var110 = {}
   var110.Layout = Enum.FillDirection.Horizontal
   var110.LayoutOrder = 3
   var110.Position = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var110.Size = UDim2.new(1, 0, 1, var2.TopBarHeight + 2)
   local var127 = {}
   local var131 = {}
   var131.LayoutOrder = 1
   var131.Layout = Enum.FillDirection.Vertical
   var131.Size = UDim2.new(0.5, 0, 1, 0)
   local var140 = {}
   var140.PreviewContainer = var1.createElement(var10)
   local var148 = {}
   var148.DominantAxis = Enum.DominantAxis.Width
   var148.LayoutOrder = 2
   var140.Separator = var1.createElement(var6, var148)
   local var155 = {}
   var155.LayoutOrder = 3
   var155.Size = UDim2.new(1, 0, var2.PreviewRatio, 65535)
   local var163 = {}
   local var167 = {}
   local var5 = {}
   local var169 = var0.ImportTree
   var167.Instances = var5
   local var7 = var0.Filename
   var167.FileName = var5
   var163.TreeView = var1.createElement(var7, var167)
   var140.TreeContainer = var1.createElement(var5, var155, var163)
   var127.LeftPanel = var1.createElement(var5, var131, var140)
   local var177 = {}
   var177.DominantAxis = Enum.DominantAxis.Height
   var177.LayoutOrder = 2
   var127.Separator = var1.createElement(var6, var177)
   local var184 = {}
   var184.LayoutOrder = 3
   var184.Size = UDim2.new(0.5, 65535, 1, 0)
   local var192 = {}
   local var196 = {}
   var196.ImportItem = var0.SelectedImportItem
   var196.AssetImportSession = var0.AssetImportSession
   var192.ImportConfiguration = var1.createElement(var8, var196)
   var127.RightPanel = var1.createElement(var5, var184, var192)
   var84.BottomPanel = var1.createElement(var5, var110, var127)
   return var1.createElement(var5, var82, var84)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Sizes
   local var82 = {}
   var82.Layout = Enum.FillDirection.Vertical
   local var84 = {}
   local var88 = {}
   var88.LayoutOrder = 1
   var88.Padding = var1.TopBarPadding
   local var96 = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var88.Size = var96
   local var97 = var0.Filename
   var88.FileName = var96
   var88.OnBrowse = arg1.showImportPromptHandler
   var84.TopBar = var1.createElement(var9, var88)
   local var103 = {}
   var103.DominantAxis = Enum.DominantAxis.Width
   var103.LayoutOrder = 2
   var84.TopSeparator = var1.createElement(var6, var103)
   local var110 = {}
   var110.Layout = Enum.FillDirection.Horizontal
   var110.LayoutOrder = 3
   var110.Position = UDim2.new(1, 0, 0, var2.TopBarHeight)
   var110.Size = UDim2.new(1, 0, 1, var2.TopBarHeight + 2)
   local var127 = {}
   local var131 = {}
   var131.LayoutOrder = 1
   var131.Layout = Enum.FillDirection.Vertical
   var131.Size = UDim2.new(0.5, 0, 1, 0)
   local var140 = {}
   var140.PreviewContainer = var1.createElement(var10)
   local var148 = {}
   var148.DominantAxis = Enum.DominantAxis.Width
   var148.LayoutOrder = 2
   var140.Separator = var1.createElement(var6, var148)
   local var155 = {}
   var155.LayoutOrder = 3
   var155.Size = UDim2.new(1, 0, var2.PreviewRatio, 65535)
   local var163 = {}
   local var167 = {}
   local var5 = {}
   local var169 = var0.ImportTree
   var167.Instances = var5
   local var7 = var0.Filename
   var167.FileName = var5
   var163.TreeView = var1.createElement(var7, var167)
   var140.TreeContainer = var1.createElement(var5, var155, var163)
   var127.LeftPanel = var1.createElement(var5, var131, var140)
   local var177 = {}
   var177.DominantAxis = Enum.DominantAxis.Height
   var177.LayoutOrder = 2
   var127.Separator = var1.createElement(var6, var177)
   local var184 = {}
   var184.LayoutOrder = 3
   var184.Size = UDim2.new(0.5, 65535, 1, 0)
   local var192 = {}
   local var196 = {}
   var196.ImportItem = var0.SelectedImportItem
   var196.AssetImportSession = var0.AssetImportSession
   var192.ImportConfiguration = var1.createElement(var8, var196)
   var127.RightPanel = var1.createElement(var5, var184, var192)
   var84.BottomPanel = var1.createElement(var5, var110, var127)
   return var1.createElement(var5, var82, var84)
end

fun2 = var3.withContext
local var203 = {}
var203.Localization = var3.Localization
var203.Stylizer = var2.Style.Stylizer
var203.PresetController = require(var0.Src.Controllers.PresetController)
var13 = fun2(var203)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   if var12() then
      local var0 = {}
      var0.AssetImportSession = arg1.Preview.assetImportSession
      var0.ImportTree = arg1.Preview.importTree
      var0.Filename = arg1.Preview.filename
      var0.SelectedImportItem = arg1.Preview.selectedImportItem
      return var0
   end
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
end)(var13)
