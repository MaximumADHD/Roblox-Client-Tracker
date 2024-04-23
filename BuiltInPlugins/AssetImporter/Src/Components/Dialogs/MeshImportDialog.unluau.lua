-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Util.StyleModifier
local var5 = var2.UI
local var6 = var5.Separator
local var7 = var5.StyledDialog
local var8 = require(var0.Src.Components.AssetImporterUI)
local var9 = require(var0.Src.Flags.getFFlagAssetImportRefactorReducer)
local var10 = var1.PureComponent:extend("MeshImportDialog")
local function fun0(arg1)
   local var0 = arg1.HasInvalidPackageId
   if var0 then
      local var0 = false
      local var1 = arg1.ImportDataCheckedCount
      if var1 == 0 then
         local var0 = arg1.ErrorNodeChecked
      end
   end
   return var0
end

function var10.init(arg1)
   function arg1.onButtonPressed(arg1)
      local var0 = arg1.HasInvalidPackageId
      if var0 then
         local var0 = false
         local var1 = arg1.ImportDataCheckedCount
         if var1 == 0 then
            local var0 = arg1.ErrorNodeChecked
         end
      end
      return var0
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.HasInvalidPackageId
   if var2 then
      local var0 = false
      local var1 = var0.ImportDataCheckedCount
      if var1 == 0 then
         local var0 = var0.ErrorNodeChecked
      end
   end
   local var67 = {}
   var67.Enabled = true
   var67.MinContentSize = Vector2.new(800, 650)
   var67.Modal = false
   var67.Resizable = true
   var67.Title = var0.Title
   local var77 = {}
   var77.Key = "Cancel"
   var77.Text = var1:getText("Plugin", "Cancel")
   local var83 = {}
   var83.Key = "Import"
   var83.Text = var1:getText("Plugin", "Import")
   var83.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var83.StyleModifier = nil
   var67.Buttons = {}
   function var67.OnClose(arg1)
      local var0 = arg1.HasInvalidPackageId
      if var0 then
         local var0 = false
         local var1 = arg1.ImportDataCheckedCount
         if var1 == 0 then
            local var0 = arg1.ErrorNodeChecked
         end
      end
      return var0
   end
   
   var67.OnButtonPressed = arg1.onButtonPressed
   var67.Style = "FullBleed"
   local var104 = {}
   local var108 = {}
   var108.FillDirection = Enum.FillDirection.Vertical
   var104.Layout = var1.createElement("UIListLayout", var108)
   local var114 = {}
   var114.LayoutOrder = 1
   var104.AssetImporterUI = var1.createElement(var8, var114)
   local var120 = {}
   var120.DominantAxis = Enum.DominantAxis.Width
   var120.LayoutOrder = 2
   var104.Separator = var1.createElement(var6, var120)
   return var1.createElement(var7, var67, var104)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.HasInvalidPackageId
   if var2 then
      local var0 = false
      local var1 = var0.ImportDataCheckedCount
      if var1 == 0 then
         local var0 = var0.ErrorNodeChecked
      end
   end
   local var67 = {}
   var67.Enabled = true
   var67.MinContentSize = Vector2.new(800, 650)
   var67.Modal = false
   var67.Resizable = true
   var67.Title = var0.Title
   local var77 = {}
   var77.Key = "Cancel"
   var77.Text = var1:getText("Plugin", "Cancel")
   local var83 = {}
   var83.Key = "Import"
   var83.Text = var1:getText("Plugin", "Import")
   var83.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var83.StyleModifier = nil
   var67.Buttons = {}
   function var67.OnClose(arg1)
      local var0 = arg1.HasInvalidPackageId
      if var0 then
         local var0 = false
         local var1 = arg1.ImportDataCheckedCount
         if var1 == 0 then
            local var0 = arg1.ErrorNodeChecked
         end
      end
      return var0
   end
   
   var67.OnButtonPressed = arg1.onButtonPressed
   var67.Style = "FullBleed"
   local var104 = {}
   local var108 = {}
   var108.FillDirection = Enum.FillDirection.Vertical
   var104.Layout = var1.createElement("UIListLayout", var108)
   local var114 = {}
   var114.LayoutOrder = 1
   var104.AssetImporterUI = var1.createElement(var8, var114)
   local var120 = {}
   var120.DominantAxis = Enum.DominantAxis.Width
   var120.LayoutOrder = 2
   var104.Separator = var1.createElement(var6, var120)
   return var1.createElement(var7, var67, var104)
end

fun4 = var3.withContext
local var125 = {}
var125.Localization = var3.Localization
var125.Stylizer = var2.Style.Stylizer
var10 = fun4(var125)(var10)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   if var9() then
      local var0 = {}
      var0.ImportTree = arg1.Preview.importTree
      var0.AssetImportSession = arg1.Preview.assetImportSession
      var0.ImportDataCheckedCount = arg1.Preview.importDataCheckedCount
      var0.ErrorNodeChecked = arg1.Preview.errorNodeChecked
      var0.HasInvalidPackageId = arg1.Preview.hasInvalidPackageId
      return var0
   end
   local var0 = {}
   var0.ImportTree = arg1.importTree
   var0.AssetImportSession = arg1.assetImportSession
   var0.ImportDataCheckedCount = arg1.importDataCheckedCount
   var0.ErrorNodeChecked = arg1.errorNodeChecked
   var0.HasInvalidPackageId = arg1.hasInvalidPackageId
   return var0
end, nil)(var10)
