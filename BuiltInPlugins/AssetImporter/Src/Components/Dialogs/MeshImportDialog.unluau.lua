-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
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
   local var63 = {}
   var63.Enabled = true
   var63.MinContentSize = Vector2.new(800, 650)
   var63.Modal = false
   var63.Resizable = true
   var63.Title = var0.Title
   local var73 = {}
   var73.Key = "Cancel"
   var73.Text = var1:getText("Plugin", "Cancel")
   local var79 = {}
   var79.Key = "Import"
   var79.Text = var1:getText("Plugin", "Import")
   var79.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var79.StyleModifier = nil
   var63.Buttons = {}
   function var63.OnClose(arg1)
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
   
   var63.OnButtonPressed = arg1.onButtonPressed
   var63.Style = "FullBleed"
   local var100 = {}
   local var104 = {}
   var104.FillDirection = Enum.FillDirection.Vertical
   var100.Layout = var1.createElement("UIListLayout", var104)
   local var110 = {}
   var110.LayoutOrder = 1
   var100.AssetImporterUI = var1.createElement(var8, var110)
   local var116 = {}
   var116.DominantAxis = Enum.DominantAxis.Width
   var116.LayoutOrder = 2
   var100.Separator = var1.createElement(var6, var116)
   return var1.createElement(var7, var63, var100)
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
   local var63 = {}
   var63.Enabled = true
   var63.MinContentSize = Vector2.new(800, 650)
   var63.Modal = false
   var63.Resizable = true
   var63.Title = var0.Title
   local var73 = {}
   var73.Key = "Cancel"
   var73.Text = var1:getText("Plugin", "Cancel")
   local var79 = {}
   var79.Key = "Import"
   var79.Text = var1:getText("Plugin", "Import")
   var79.Style = "RoundPrimary"
   if not var2 then
      local var0 = var4.Disabled or nil
   end
   var79.StyleModifier = nil
   var63.Buttons = {}
   function var63.OnClose(arg1)
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
   
   var63.OnButtonPressed = arg1.onButtonPressed
   var63.Style = "FullBleed"
   local var100 = {}
   local var104 = {}
   var104.FillDirection = Enum.FillDirection.Vertical
   var100.Layout = var1.createElement("UIListLayout", var104)
   local var110 = {}
   var110.LayoutOrder = 1
   var100.AssetImporterUI = var1.createElement(var8, var110)
   local var116 = {}
   var116.DominantAxis = Enum.DominantAxis.Width
   var116.LayoutOrder = 2
   var100.Separator = var1.createElement(var6, var116)
   return var1.createElement(var7, var63, var100)
end

fun4 = var3.withContext
local var121 = {}
var121.Localization = var3.Localization
var121.Stylizer = var2.Style.Stylizer
var9 = fun4(var121)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ImportTree = arg1.importTree
   var0.AssetImportSession = arg1.assetImportSession
   var0.ImportDataCheckedCount = arg1.importDataCheckedCount
   var0.ErrorNodeChecked = arg1.errorNodeChecked
   var0.HasInvalidPackageId = arg1.hasInvalidPackageId
   return var0
end, nil)(var9)
