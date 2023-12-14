-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Pane
local var4 = var2.UI.IconButton
local var5 = var2.UI.TextLabel
local var6 = var2.UI.TextInput
local var7 = var2.UI.Image
local var8 = var2.UI.Table
local var9 = var0.Src.Util
local var10 = require(var9.Utils)
local var11 = require(var9.WorkspaceOperations)
local var12 = require(var9.Constants)
local function var13(arg1)
   local var0 = arg1.props.Localization
   local var1 = {}
   var1.Name = var0:getText("TextureTable", "Texture")
   local var2 = {}
   var2.Name = var0:getText("TextureTable", "Id")
   local var3 = {}
   var3.Name = var0:getText("TextureTable", "Size")
   {}.Name = var0:getText("TextureTable", "FindSelect")
   return { {}, {}, {} }
end

local function fun0(arg1, arg2)
   local var0 = arg1.props.Localization
   return function(arg1)
      local var0 = arg1.props.Localization
      local var1 = {}
      var1.Name = var0:getText("TextureTable", "Texture")
      local var2 = {}
      var2.Name = var0:getText("TextureTable", "Id")
      local var3 = {}
      var3.Name = var0:getText("TextureTable", "Size")
      {}.Name = var0:getText("TextureTable", "FindSelect")
      return { {}, {}, {} }
   end
end

return function(arg1, arg2)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer.TextureTable
   local var96 = {}
   var96.Size = var2.Size
   var96.Rows = arg2
   var96.Columns = var13(arg1)
   local var3 = arg1.props.Localization
   function var96.CellComponent(arg1)
      local var0 = arg1.props.Localization
      local var1 = {}
      var1.Name = var0:getText("TextureTable", "Texture")
      local var2 = {}
      var2.Name = var0:getText("TextureTable", "Id")
      local var3 = {}
      var3.Name = var0:getText("TextureTable", "Size")
      {}.Name = var0:getText("TextureTable", "FindSelect")
      return { {}, {}, {} }
   end
   
   var96.Scroll = true
   var96.RowHeight = var2.RowHeight
   var96.LayoutOrder = 3
   return var1.createElement(var8, var96)
end
