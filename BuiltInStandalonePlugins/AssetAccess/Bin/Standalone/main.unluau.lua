-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(var0.Src.MainPlugin)
return function(arg1)
   local var0 = Instance.new("Frame")
   local var20 = var2
   var20 = var0
   local var1 = var20.createRoot(var20)
   local var26 = {}
   var26.Plugin = arg1
   local var27 = var1.createElement(var3, var26)
   var1:render()
   arg1.Unloading:Once(function()
      var1:unmount()
      var0:Destroy()
   end)
end
