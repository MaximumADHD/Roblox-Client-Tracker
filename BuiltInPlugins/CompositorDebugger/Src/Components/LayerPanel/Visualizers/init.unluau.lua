-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("CompositorDebugger").Src.Types)
local var1 = {}
local var2 = {}
var2.Blend1D = require(script.Blend1D)
var2.Blend2D = require(script.Blend2D)
local var191 = {}
var191.Locomotion = require(script.Blend2D)
var191.Scalar = require(script.Blend1D)
var191.Directional = require(script.Blend2D)
var2.BlendSpace = var191
function var1.getModule(arg1)
   if arg1 then
      if arg1.className then
         if arg1.className == "BlendSpace" then
            if arg1.props then
               return var2.BlendSpace[arg1.props.blendSpaceType]
            end
            return nil
         end
         return var2[arg1.className]
      end
   end
   return nil
end

return var1
