-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.Branch = 5923556358
var0.Consumer = 5923556689
var0.Fragment = 5923557006
var0.Functional = 5923557211
var0.Portal = 5923557429
var0.Provider = 5923557657
var0.Pure = 5923557814
var0.Stateful = 5923557987
local function var1(arg1)
   return game:GetService("StudioService"):GetClassIcon(arg1)
end

return function(arg1)
   if var0[arg1] then
      local var0 = {}
      var0.Image = "rbxassetid://" ... var0[arg1]
      var0.ImageRectSize = Vector2.new(24, 24)
      var0.ImageRectOffset = Vector2.new(0, 0)
      return var0
   end
   if pcall(function(arg1)
      return game:GetService("StudioService"):GetClassIcon(arg1)
   end) then
      return 
   end
   return var1("Folder")
end
