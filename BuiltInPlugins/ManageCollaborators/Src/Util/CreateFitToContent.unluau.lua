-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
return function(arg1, arg2, arg3)
   local var0 = var1.Component:extend(`FitComponent(%s, {arg1}`)
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
      arg1.layoutRef = var1.createRef()
      arg1.containerRef = var1.createRef()
      var1.Ref = arg1.layoutRef
      function var1.Change.AbsoluteContentSize()
         local var0 = var1.layoutRef.current
         if var0 == "layoutRef" then
            local var0 = var1.containerRef.current
            if var0 == "layoutRef" then
               var1:resizeContainer()
            end
         end
      end
      
      arg1.layoutProps = var2.Dictionary.join(arg2, {})
   end
   
   function var0.didMount(arg1)
      arg1:resizeContainer()
   end
   
   function var0.didUpdate(arg1)
      arg1:resizeContainer()
   end
   
   function var0.resizeContainer(arg1)
      local var0 = arg1.layoutRef.current
      if var0 then
         arg1.containerRef.current.Size = UDim2.new(1, 0, 0, var0.AbsoluteContentSize.Y)
      end
   end
   
   return var0
end
