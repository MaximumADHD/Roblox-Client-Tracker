-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
return function(arg1, arg2, arg3)
   local var0 = var1.Component:extend(`FitComponent(%s, {arg1}`)
   local var25 = arg3.BorderSize
   local var27 = var2.Dictionary
   var27 = arg3
   local var29 = {}
   var29.BorderSize = var2.None
   arg3 = var27.join(var27, var29)
   function var0.init()
      local var0 = var1.layoutRef.current
      if var0 == "layoutRef" then
         local var0 = var1.containerRef.current
         if var0 == "layoutRef" then
            var1:resizeContainer()
         end
      end
   end
   
   function var0.render(arg1)
      arg1.layoutRef = var2.createRef()
      arg1.containerRef = var2.createRef()
      var2.Ref = arg1.layoutRef
      function var2.Change.AbsoluteContentSize()
         local var0 = var1.layoutRef.current
         if var0 == "layoutRef" then
            local var0 = var1.containerRef.current
            if var0 == "layoutRef" then
               var1:resizeContainer()
            end
         end
      end
      
      arg1.layoutProps = var1.Dictionary.join(arg2, {})
   end
   
   function var0.didMount(arg1)
      arg1:resizeContainer()
   end
   
   function var0.resizeContainer(arg1)
      arg1:resizeContainer()
   end
   
   return var0
end
