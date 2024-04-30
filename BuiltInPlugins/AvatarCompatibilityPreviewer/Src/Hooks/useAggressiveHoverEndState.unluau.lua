-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Hooks.useToggleState)
local var3 = require(var0.Packages.Framework).ContextServices.Focus
local var4 = game:GetService("UserInputService")
local function fun0(arg1, arg2)
   local var0 = arg2.AbsolutePosition
   local var1 = var0 + arg2.AbsoluteSize
   if var0.X <= arg1.X then
      local var0 = false
      if arg1.X <= var1.X then
         local var0 = false
         if var0.Y <= arg1.Y then
            if var1.Y >= arg1.Y then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return false
end

return function(arg1)
   local var0 = var3:use():get()
   local var1 = var2(false)
   local var2 = var1.enabled
   var1.useEffect(function(arg1, arg2)
      local var0 = arg2.AbsolutePosition
      local var1 = var0 + arg2.AbsoluteSize
      if var0.X <= arg1.X then
         local var0 = false
         if arg1.X <= var1.X then
            local var0 = false
            if var0.Y <= arg1.Y then
               if var1.Y >= arg1.Y then
                  local var0 = false
               end
               local var0 = true
            end
         end
      end
      return false
   end, {})
   local var3 = {}
   var3.hover = var1.enable
   var3.isHovered = var1.enabled
   return var3
end
