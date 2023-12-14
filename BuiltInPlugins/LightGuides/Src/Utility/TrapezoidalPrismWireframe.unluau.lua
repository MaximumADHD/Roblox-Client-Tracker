-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Utility.Constants)
local var3 = {}
Enum.NormalId.Back = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1))
Enum.NormalId.Front = CFrame.fromMatrix(Vector3.new(), Vector3.new(65535, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 65535))
Enum.NormalId.Right = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 65535), Vector3.new(0, 1, 0), Vector3.new(1, 0, 0))
Enum.NormalId.Left = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(65535, 0, 0))
Enum.NormalId.Bottom = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 65535, 0))
Enum.NormalId.Top = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 0, 65535), Vector3.new(0, 1, 0))
local var4 = var2.THICKNESS
local var5 = var2.TRANSPARENCY
local var6 = {}
var6.__index = var6
function var6.new()
   local var0 = {}
   var0._adornee = nil
   var0._parent = nil
   var0._light = nil
   var0._handlesFolder = Instance.new("Folder")
   var0._guidesFolder = nil
   var0._handles = {}
   var0._handlesPresent = false
   var0._listener = nil
   var0._sizeListener = nil
   var0._attachmentListener = nil
   return setmetatable(var0, var6)
end

function var6.render(arg1)
   arg1:_setListeners()
   if not arg1:_setAncestry() then
   end
   if not arg1._handlesPresent then
      arg1:_setHandles()
   end
   local var0 = Vector3.new()
   if arg1._parent:IsA("BasePart") then
      local var0 = arg1._parent.Size
   end
   local var1 = arg1._light.Enabled
   local var2 = arg1._light.Color
   local var3 = arg1._light.Range
   local var4 = math.rad(arg1._light.Angle)
   local var5 = var3 * math.cos(var4 / 2)
   local var6 = 2 * var3 * math.sin(var4 / 2)
   local var7 = Vector3.fromNormalId(arg1._light.Face)
   local var8 = var0 * CFrame.Angles(0, (var7.Y - 1) * 3.14159265358979 / 2, (var7.Z - 1) * (var7.X - 1) * 3.14159265358979 / 2) * var7.magnitude
   local var9 = var0 * CFrame.Angles((var7.X - 1) * 3.14159265358979 / 2, 0, (var7.Z - 1) * (var7.Y - 1) * 3.14159265358979 / 2) * var7.magnitude
   local var10 = var8 + var6
   local var11 = var9 + var6
   local var12 = math.sqrt(math.pow((var10 - var8) / 2, 2) + math.pow((var11 - var9) / 2, 2) + math.pow(var5, 2))
   local var13 = arg1._handles.innerTopOutline
   local var14 = arg1._handles.innerBottomOutline
   local var15 = arg1._handles.innerLeftOutline
   local var16 = arg1._handles.innerRightOutline
   local var17 = arg1._handles.outerTopOutline
   local var18 = arg1._handles.outerBottomOutline
   local var19 = arg1._handles.outerLeftOutline
   local var20 = arg1._handles.outerRightOutline
   local var21 = arg1._handles.topLeftOutline
   local var22 = arg1._handles.topRightOutline
   local var23 = arg1._handles.bottomLeftOutline
   local var24 = arg1._handles.bottomRightOutline
   local var25 = arg1._handles.centerOutline
   var13.Height = var8
   var13.Adornee = arg1._adornee
   var13.Visible = var1
   var13.Color3 = var2
   var14.Height = var8
   var14.Adornee = arg1._adornee
   var14.Visible = var1
   var14.Color3 = var2
   var15.Height = var9
   var15.Adornee = arg1._adornee
   var15.Visible = var1
   var15.Color3 = var2
   var16.Height = var9
   var16.Adornee = arg1._adornee
   var16.Visible = var1
   var16.Color3 = var2
   var17.Height = var10
   var17.Adornee = arg1._adornee
   var17.Visible = var1
   var17.Color3 = var2
   var18.Height = var10
   var18.Adornee = arg1._adornee
   var18.Visible = var1
   var18.Color3 = var2
   var19.Height = var11
   var19.Adornee = arg1._adornee
   var19.Visible = var1
   var19.Color3 = var2
   var20.Height = var11
   var20.Adornee = arg1._adornee
   var20.Visible = var1
   var20.Color3 = var2
   var21.Height = var12
   var21.Adornee = arg1._adornee
   var21.Visible = var1
   var21.Color3 = var2
   var22.Height = var12
   var22.Adornee = arg1._adornee
   var22.Visible = var1
   var22.Color3 = var2
   var23.Height = var12
   var23.Adornee = arg1._adornee
   var23.Visible = var1
   var23.Color3 = var2
   var24.Height = var12
   var24.Adornee = arg1._adornee
   var24.Visible = var1
   var24.Color3 = var2
   var25.Height = var3
   var25.Adornee = arg1._adornee
   var25.Visible = var1
   var25.Color3 = var2
   local var292 = var3
   local var293 = arg1._light
   local var294 = var293.Face
   var292 = var8
   var294 = var9
   var293 = var10
   arg1:_setCFrameValues(var292[var294], var292, var294, var293, var11, var0 * Vector3.fromNormalId(arg1._light.Face).magnitude, var3, var5)
end

function var6.pool(arg1)
   assert(arg1._handlesFolder, "Wireframe already pooled")
   assert(arg1._light, "Wireframe already pooled")
   arg1._handlesFolder.Name = "pooled"
   arg1._handlesFolder.Parent = nil
   arg1._light = nil
   arg1:_removeListeners()
   return arg1
end

function var6.adorn(arg1, arg2)
   assert(arg2, "Can\'t adorn nil")
   assert(arg1._light, "Wireframe already adorned")
   arg1._light = arg2
   arg1._handlesFolder.Name = arg2.name
   arg1._handlesFolder.Parent = arg1._guidesFolder
   arg1._adornee = arg2.Parent
   arg1._parent = arg2.Parent
   arg1:_setListeners()
   return arg1
end

function var6.destroy(arg1)
   arg1:_removeHandles()
   arg1:_removeListeners()
   arg1._handlesFolder:Destroy()
   arg1._handlesFolder = nil
end

function var6.setGuidesFolder(arg1, arg2)
   arg1._guidesFolder = arg2
end

function var6._setAncestry(arg1)
   local var0 = arg1._light.parent
   if var0:IsA("Attachment") then
      local var0 = arg1._light.parent.parent
      local var1 = arg1._light.parent.CFrame
   end
   if not arg1._light.Parent:IsA("Attachment") then
      if not arg1._light.Parent:IsA("BasePart") then
         arg1:_removeHandles()
         return false
      end
   end
   arg1._adornee = var0
   arg1._offset = CFrame.new(Vector3.new())
   arg1._parent = arg1._light.Parent
   return true
end

function var6._setCFrameValues(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
   local var0 = math.atan((arg5 - arg3) / 2 * 1.4142135623731 / arg9)
   local var1 = arg4 / 2
   local var2 = arg7 / 2
   local var3 = arg3 / 2
   local var4 = arg6 / 2
   local var5 = arg5 / 2
   local var6 = arg7 / 2 + arg9
   local var7 = (arg3 + arg5) / 4
   local var8 = (arg4 + arg6) / 4
   local var9 = (arg7 + arg9) / 2
   arg1._handles.innerTopOutline.CFrame = arg1._offset * arg2 * CFrame.new(0, var1, var2) * CFrame.Angles(0, 1.5707963267949, 0)
   arg1._handles.innerBottomOutline.CFrame = arg1._offset * arg2 * CFrame.new(0, var1, var2) * CFrame.Angles(0, 1.5707963267949, 0)
   arg1._handles.innerRightOutline.CFrame = arg1._offset * arg2 * CFrame.new(var3, 0, var2) * CFrame.Angles(1.5707963267949, 0, 0)
   arg1._handles.innerLeftOutline.CFrame = arg1._offset * arg2 * CFrame.new(var3, 0, var2) * CFrame.Angles(1.5707963267949, 0, 0)
   arg1._handles.outerTopOutline.CFrame = arg1._offset * arg2 * CFrame.new(0, var4, var6) * CFrame.Angles(0, 1.5707963267949, 0)
   arg1._handles.outerBottomOutline.CFrame = arg1._offset * arg2 * CFrame.new(0, var4, var6) * CFrame.Angles(0, 1.5707963267949, 0)
   arg1._handles.outerLeftOutline.CFrame = arg1._offset * arg2 * CFrame.new(var5, 0, var6) * CFrame.Angles(1.5707963267949, 0, 0)
   arg1._handles.outerRightOutline.CFrame = arg1._offset * arg2 * CFrame.new(var5, 0, var6) * CFrame.Angles(1.5707963267949, 0, 0)
   arg1._handles.topLeftOutline.CFrame = arg1._offset * arg2 * CFrame.new(var7, var8, var9) * CFrame.Angles(0, 0, -0.785398163397448) * CFrame.Angles(var0, 0, 0)
   arg1._handles.topRightOutline.CFrame = arg1._offset * arg2 * CFrame.new(var7, var8, var9) * CFrame.Angles(0, 0, 0.785398163397448) * CFrame.Angles(var0, 0, 0)
   local var584 = CFrame.Angles(0, 0, 0.785398163397448)
   var584 = var0
   arg1._handles.bottomLeftOutline.CFrame = arg1._offset * arg2 * CFrame.new(var7, var8, var9) * var584 * CFrame.Angles(var584, 0, 0)
   local var605 = CFrame.Angles(0, 0, -0.785398163397448)
   var605 = var0
   arg1._handles.bottomRightOutline.CFrame = arg1._offset * arg2 * CFrame.new(var7, var8, var9) * var605 * CFrame.Angles(var605, 0, 0)
   arg1._handles.centerOutline.CFrame = arg1._offset * arg2 * CFrame.new(0, 0, (arg7 + arg8) / 2)
end

function var6._setHandles(arg1)
   local var0 = Instance.new("CylinderHandleAdornment")
   var0.Radius = var4 * 0.5
   var0.Transparency = var5
   var0.Parent = arg1._handlesFolder
   local var1 = Instance.new("CylinderHandleAdornment")
   var1.Radius = var4 * 0.5
   var1.Transparency = var5
   var1.Parent = arg1._handlesFolder
   local var2 = Instance.new("CylinderHandleAdornment")
   var2.Radius = var4 * 0.5
   var2.Transparency = var5
   var2.Parent = arg1._handlesFolder
   local var3 = Instance.new("CylinderHandleAdornment")
   var3.Radius = var4 * 0.5
   var3.Transparency = var5
   var3.Parent = arg1._handlesFolder
   local var4 = Instance.new("CylinderHandleAdornment")
   var4.Radius = var4 * 0.5
   var4.Transparency = var5
   var4.Parent = arg1._handlesFolder
   local var5 = Instance.new("CylinderHandleAdornment")
   var5.Radius = var4 * 0.5
   var5.Transparency = var5
   var5.Parent = arg1._handlesFolder
   local var6 = Instance.new("CylinderHandleAdornment")
   var6.Radius = var4 * 0.5
   var6.Transparency = var5
   var6.Parent = arg1._handlesFolder
   local var7 = Instance.new("CylinderHandleAdornment")
   var7.Radius = var4 * 0.5
   var7.Transparency = var5
   var7.Parent = arg1._handlesFolder
   local var8 = Instance.new("CylinderHandleAdornment")
   var8.Radius = var4 * 0.5
   var8.Transparency = var5
   var8.Parent = arg1._handlesFolder
   local var9 = Instance.new("CylinderHandleAdornment")
   var9.Radius = var4 * 0.5
   var9.Transparency = var5
   var9.Parent = arg1._handlesFolder
   local var10 = Instance.new("CylinderHandleAdornment")
   var10.Radius = var4 * 0.5
   var10.Transparency = var5
   var10.Parent = arg1._handlesFolder
   local var11 = Instance.new("CylinderHandleAdornment")
   var11.Radius = var4 * 0.5
   var11.Transparency = var5
   var11.Parent = arg1._handlesFolder
   local var12 = Instance.new("CylinderHandleAdornment")
   var12.Radius = var4 * 0.5
   var12.Transparency = var5
   var12.Parent = arg1._handlesFolder
   arg1._handles.innerTopOutline = var0
   arg1._handles.innerBottomOutline = var1
   arg1._handles.innerLeftOutline = var2
   arg1._handles.innerRightOutline = var3
   arg1._handles.outerTopOutline = var4
   arg1._handles.outerBottomOutline = var5
   arg1._handles.outerLeftOutline = var6
   arg1._handles.outerRightOutline = var7
   arg1._handles.topLeftOutline = var8
   arg1._handles.topRightOutline = var9
   arg1._handles.bottomLeftOutline = var10
   arg1._handles.bottomRightOutline = var11
   arg1._handles.centerOutline = var12
   arg1._handlesPresent = true
end

function var6._removeHandles(arg1)
   if arg1._handles then
      if arg1._handlesPresent then
         arg1._handles.innerTopOutline:Destroy()
         arg1._handles.innerBottomOutline:Destroy()
         arg1._handles.innerLeftOutline:Destroy()
         arg1._handles.innerRightOutline:Destroy()
         arg1._handles.outerTopOutline:Destroy()
         arg1._handles.outerBottomOutline:Destroy()
         arg1._handles.outerLeftOutline:Destroy()
         arg1._handles.outerRightOutline:Destroy()
         arg1._handles.topLeftOutline:Destroy()
         arg1._handles.topRightOutline:Destroy()
         arg1._handles.bottomLeftOutline:Destroy()
         arg1._handles.bottomRightOutline:Destroy()
         arg1._handles.centerOutline:Destroy()
         arg1._handlesPresent = false
      end
   end
end

function var6._setListeners(arg1)
   if not arg1._listener then
      arg1._listener = arg1._light.Changed:Connect(function()
         local var0 = {}
         var0._adornee = nil
         var0._parent = nil
         var0._light = nil
         var0._handlesFolder = Instance.new("Folder")
         var0._guidesFolder = nil
         var0._handles = {}
         var0._handlesPresent = false
         var0._listener = nil
         var0._sizeListener = nil
         var0._attachmentListener = nil
         return setmetatable(var0, var6)
      end)
   end
   if not arg1._sizeListener then
      if not arg1._parent:IsA("Attachment") then
         if arg1._parent:IsA("BasePart") then
            arg1._sizeListener = arg1._parent:GetPropertyChangedSignal("Size"):Connect(function(arg1)
               arg1:_setListeners()
               if not arg1:_setAncestry() then
               end
               if not arg1._handlesPresent then
                  arg1:_setHandles()
               end
               local var0 = Vector3.new()
               if arg1._parent:IsA("BasePart") then
                  local var0 = arg1._parent.Size
               end
               local var1 = arg1._light.Enabled
               local var2 = arg1._light.Color
               local var3 = arg1._light.Range
               local var4 = math.rad(arg1._light.Angle)
               local var5 = var3 * math.cos(var4 / 2)
               local var6 = 2 * var3 * math.sin(var4 / 2)
               local var7 = Vector3.fromNormalId(arg1._light.Face)
               local var8 = var0 * CFrame.Angles(0, (var7.Y - 1) * 3.14159265358979 / 2, (var7.Z - 1) * (var7.X - 1) * 3.14159265358979 / 2) * var7.magnitude
               local var9 = var0 * CFrame.Angles((var7.X - 1) * 3.14159265358979 / 2, 0, (var7.Z - 1) * (var7.Y - 1) * 3.14159265358979 / 2) * var7.magnitude
               local var10 = var8 + var6
               local var11 = var9 + var6
               local var12 = math.sqrt(math.pow((var10 - var8) / 2, 2) + math.pow((var11 - var9) / 2, 2) + math.pow(var5, 2))
               local var13 = arg1._handles.innerTopOutline
               local var14 = arg1._handles.innerBottomOutline
               local var15 = arg1._handles.innerLeftOutline
               local var16 = arg1._handles.innerRightOutline
               local var17 = arg1._handles.outerTopOutline
               local var18 = arg1._handles.outerBottomOutline
               local var19 = arg1._handles.outerLeftOutline
               local var20 = arg1._handles.outerRightOutline
               local var21 = arg1._handles.topLeftOutline
               local var22 = arg1._handles.topRightOutline
               local var23 = arg1._handles.bottomLeftOutline
               local var24 = arg1._handles.bottomRightOutline
               local var25 = arg1._handles.centerOutline
               var13.Height = var8
               var13.Adornee = arg1._adornee
               var13.Visible = var1
               var13.Color3 = var2
               var14.Height = var8
               var14.Adornee = arg1._adornee
               var14.Visible = var1
               var14.Color3 = var2
               var15.Height = var9
               var15.Adornee = arg1._adornee
               var15.Visible = var1
               var15.Color3 = var2
               var16.Height = var9
               var16.Adornee = arg1._adornee
               var16.Visible = var1
               var16.Color3 = var2
               var17.Height = var10
               var17.Adornee = arg1._adornee
               var17.Visible = var1
               var17.Color3 = var2
               var18.Height = var10
               var18.Adornee = arg1._adornee
               var18.Visible = var1
               var18.Color3 = var2
               var19.Height = var11
               var19.Adornee = arg1._adornee
               var19.Visible = var1
               var19.Color3 = var2
               var20.Height = var11
               var20.Adornee = arg1._adornee
               var20.Visible = var1
               var20.Color3 = var2
               var21.Height = var12
               var21.Adornee = arg1._adornee
               var21.Visible = var1
               var21.Color3 = var2
               var22.Height = var12
               var22.Adornee = arg1._adornee
               var22.Visible = var1
               var22.Color3 = var2
               var23.Height = var12
               var23.Adornee = arg1._adornee
               var23.Visible = var1
               var23.Color3 = var2
               var24.Height = var12
               var24.Adornee = arg1._adornee
               var24.Visible = var1
               var24.Color3 = var2
               var25.Height = var3
               var25.Adornee = arg1._adornee
               var25.Visible = var1
               var25.Color3 = var2
               local var946 = var3
               local var947 = arg1._light
               local var948 = var947.Face
               var946 = var8
               var948 = var9
               var947 = var10
               arg1:_setCFrameValues(var946[var948], var946, var948, var947, var11, var0 * Vector3.fromNormalId(arg1._light.Face).magnitude, var3, var5)
            end)
         end
      end
   end
   if not arg1._attachmentListener then
      if arg1._parent:IsA("Attachment") then
         arg1._attachmentListener = arg1._parent:GetPropertyChangedSignal("CFrame"):Connect(function(arg1)
            assert(arg1._handlesFolder, "Wireframe already pooled")
            assert(arg1._light, "Wireframe already pooled")
            arg1._handlesFolder.Name = "pooled"
            arg1._handlesFolder.Parent = nil
            arg1._light = nil
            arg1:_removeListeners()
            return arg1
         end)
      end
   end
end

function var6._removeListeners(arg1)
   if arg1._listener then
      arg1._listener:Disconnect()
   end
   if arg1._sizeListener then
      arg1._sizeListener:Disconnect()
   end
   if arg1._attachmentListener then
      arg1._attachmentListener:Disconnect()
   end
   arg1._listener = nil
   arg1._sizeListener = nil
   arg1._attachmentListener = nil
end

return var6
