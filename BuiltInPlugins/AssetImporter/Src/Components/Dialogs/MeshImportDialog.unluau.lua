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
local var9 = var1.PureComponent:extend("MeshImportDialog")
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

function var9.init(arg1)
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
   local var62 = {}
   var62.Enabled = true
   var62.MinContentSize = Vector2.new(800, 650)
   var62.Modal = false
   var62.Resizable = true
   var62.Title = var0.Title
   local var72 = {}
   var72.Key = "Cancel"
   var72.Text = var1:getText("Plugin", "Cancel")
   local var78 = {}
   var78.Key = "Import"
   var78.Text = var1:getText("Plugin", "Import")
   var78.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var78.StyleModifier = nil
   var62.Buttons = {}
   function var62.OnClose(arg1)
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
   
   var62.OnButtonPressed = arg1.onButtonPressed
   var62.Style = "FullBleed"
   local var99 = {}
   local var103 = {}
   var103.FillDirection = Enum.FillDirection.Vertical
   var99.Layout = var1.createElement("UIListLayout", var103)
   local var109 = {}
   var109.LayoutOrder = 1
   var99.AssetImporterUI = var1.createElement(var8, var109)
   local var115 = {}
   var115.DominantAxis = Enum.DominantAxis.Width
   var115.LayoutOrder = 2
   var99.Separator = var1.createElement(var6, var115)
   return var1.createElement(var7, var62, var99)
end

function var9.render(arg1)
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
   local var62 = {}
   var62.Enabled = true
   var62.MinContentSize = Vector2.new(800, 650)
   var62.Modal = false
   var62.Resizable = true
   var62.Title = var0.Title
   local var72 = {}
   var72.Key = "Cancel"
   var72.Text = var1:getText("Plugin", "Cancel")
   local var78 = {}
   var78.Key = "Import"
   var78.Text = var1:getText("Plugin", "Import")
   var78.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var78.StyleModifier = nil
   var62.Buttons = {}
   function var62.OnClose(arg1)
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
   
   var62.OnButtonPressed = arg1.onButtonPressed
   var62.Style = "FullBleed"
   local var99 = {}
   local var103 = {}
   var103.FillDirection = Enum.FillDirection.Vertical
   var99.Layout = var1.createElement("UIListLayout", var103)
   local var109 = {}
   var109.LayoutOrder = 1
   var99.AssetImporterUI = var1.createElement(var8, var109)
   local var115 = {}
   var115.DominantAxis = Enum.DominantAxis.Width
   var115.LayoutOrder = 2
   var99.Separator = var1.createElement(var6, var115)
   return var1.createElement(var7, var62, var99)
end

fun4 = var3.withContext
local var120 = {}
var120.Localization = var3.Localization
var120.Stylizer = var2.Style.Stylizer
var9 = fun4(var120)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ImportTree = arg1.importTree
   var0.AssetImportSession = arg1.assetImportSession
   var0.ImportDataCheckedCount = arg1.importDataCheckedCount
   var0.ErrorNodeChecked = arg1.errorNodeChecked
   var0.HasInvalidPackageId = arg1.hasInvalidPackageId
   return var0
end, nil)(var9)
