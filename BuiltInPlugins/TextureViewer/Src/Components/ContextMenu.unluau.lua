-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = game:GetService("StudioService")
local var2 = game:GetService("Selection")
local var3 = require(script.Parent.Parent.Parent.Packages.Framework).UI.showContextMenu
function var0.showRightClickMenu(arg1, arg2, arg3, arg4, arg5)
   local var0 = {}
   local var25 = {}
   var25.Text = arg3:getText("ContextMenu", "Copy")
   var25.Icon = "rbxasset://textures/TextureViewer/copy.png"
   function var25.OnItemClicked()
      var1:CopyToClipboard(arg1:filterRowsBySearchTerm()[arg4].Texture)
   end
   
   var0.Copy = var25
   local var39 = {}
   var39.Text = arg3:getText("ContextMenu", "Select")
   var39.Icon = "rbxasset://textures/TextureViewer/select.png"
   function var39.OnItemClicked()
      var2:Set(arg5)
   end
   
   var0.Select = var39
   local var48 = {}
   var48.Text = arg3:getText("ContextMenu", "Replace")
   var48.Icon = "rbxasset://textures/TextureViewer/replace.png"
   function var48.OnItemClicked()
      local var55 = {}
      var55.editingCell = arg4
      arg1:setState(var55)
   end
   
   var0.Replace = var48
   local var59 = "Copy"
   local var60 = "Select"
   local var61 = "Replace"
   var60 = arg2
   var61 = var0
   var3(var60, var61, {})
end

return var0
