-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Components.UGCAvatarServiceContext)
return function()
   local var0 = var1.useContext(var2)
   local var1 = var0:FindFirstChild("Catalog")
   if var1 == "useContext" then
      return var1
   end
   local var2 = Instance.new("Folder")
   var2.Name = "Catalog"
   var2.Parent = var0
   return var2
end
