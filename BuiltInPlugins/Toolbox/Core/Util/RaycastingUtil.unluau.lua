-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.findParentModelWithSourceAssetID)
local var1 = {}
function var1.raycastObjectsInSphere(arg1)
   if not arg1 then
      return {}
   end
   local var0 = {}
   local var1 = 1
   local var2 = 256
   local var3 = 1
   local var141 = 2
   local var142 = var141 * var1
   local var143 = var142 - 1
   local var7 = math.acos(1 - (var143) / 256)
   local var8 = 3.88322207745093 * var1
   var143 = var7
   var142 = var8
   var141 = var8
   local var159 = math.sin(var141)
   var159 = var7
   local var10 = Ray.new(arg1.CFrame.Position, Vector3.new(math.sin(var143) * math.cos(var142), math.sin(var7) * var159, math.cos(var159)) * 500)
   local var11 = workspace:Raycast(var10.Origin, var10.Direction * 500)
   if var11 then
      if var11.Instance then
         local var0 = var0(var11.Instance)
         if var0 then
            local var0 = var0.SourceAssetId
            if var0 then
               if var0 == -1 then
                  if not var0[var0] then
                     var0.SourceAssetId = var11.Distance
                     if 0 + 1 >= 10 then
                     end
                  end
               end
            end
         end
      end
   end
   return var0
end

function var1.raycastObjectsVisibleInViewport(arg1)
   if not arg1 then
      return {}
   end
   local var0 = arg1.ViewportSize
   local var1 = {}
   local var193 = 0
   local var3 = 1
   local var195 = 0
   local var5 = 0
   local var6 = 1
   local var198 = 0
   local var8 = 1
   local var9 = 256
   local var10 = 1
   local var11 = Vector2.new((var193 + 0.5 + 7) * var0.X / 16, (var195 + 0.5 + 7) * var0.Y / 16)
   local var12 = arg1:ScreenPointToRay(var11.X, var11.Y)
   local var13 = workspace:Raycast(var12.Origin, var12.Direction * 500)
   if var13 then
      if var13.Instance then
         local var0 = var0(var13.Instance)
         if var0 then
            local var0 = var0.SourceAssetId
            if var0 then
               if var0 == -1 then
                  if not var1[var0] then
                     var0.SourceAssetId = var13.Distance
                     if 0 + 1 >= 10 then
                        local var0 = var193 + var3
                        local var1 = var195 + var5
                        if var198 + 1 == "Y" then
                           local var0 = 0
                           var0 = var3
                           local var1 = var5
                           var5 = var0
                           if var5 == 0 then
                              local var0 = var6 + 1
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
   local var14 = var193 + var3
   local var15 = var195 + var5
   if var198 + 1 == "Y" then
      local var0 = 0
      local var1 = var5
      var5 = var3
      if var5 == 0 then
         local var0 = var6 + 1
      end
   end
   return var1
end

return var1
