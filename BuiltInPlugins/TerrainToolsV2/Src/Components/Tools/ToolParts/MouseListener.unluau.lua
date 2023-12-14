-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).ContextServices
local var2 = game:GetService("UserInputService")
local var3 = game:GetService("Workspace")
local var4 = require(var0.Packages.Roact).PureComponent:extend("MouseListener")
local function fun0()
   return var2:IsKeyDown(Enum.KeyCode.LeftAlt) or var2:IsKeyDown(Enum.KeyCode.RightAlt)
end

local function fun1()
   return var2:IsKeyDown(Enum.KeyCode.LeftShift) or var2:IsKeyDown(Enum.KeyCode.RightShift)
end

function var4.pickMaterial(arg1)
   arg1._mouse = arg1.props.Mouse:get()
   local var0 = nil
   local var1 = nil
   local var2 = var3:Raycast(arg1._mouse.Origin.p, arg1._mouse.UnitRay.Direction * 10000, arg1._raycastParams)
   if var2 then
      local var0 = var2.Instance
      local var1 = var2.Material
   end
   if var0 then
      if var0:IsA("Terrain") then
         if not var2:IsKeyDown(Enum.KeyCode.LeftShift) or var2:IsKeyDown(Enum.KeyCode.RightShift) then
            if arg1.props.dispatchSetMaterial then
               local var85 = arg1.props
               var85 = var1
               var85.dispatchSetMaterial(var85)
            end
            if arg1.props.dispatchSetSourceMaterial then
               local var89 = arg1.props
               var89 = var1
               var89.dispatchSetSourceMaterial(var89)
               if arg1.props.dispatchSetTargetMaterial then
                  local var93 = arg1.props
                  var93 = var1
                  var93.dispatchSetTargetMaterial(var93)
               end
            end
         end
         if arg1.props.dispatchSetTargetMaterial then
            local var97 = arg1.props
            var97 = var1
            var97.dispatchSetTargetMaterial(var97)
         end
      end
   end
end

function var4.init(arg1)
   function arg1.onInputBegan()
      return var2:IsKeyDown(Enum.KeyCode.LeftAlt) or var2:IsKeyDown(Enum.KeyCode.RightAlt)
   end
   
end

function var4.didMount(arg1)
   arg1._raycastParams = RaycastParams.new()
   arg1._raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
   arg1._raycastParams.BruteForceAllSlow = true
   local var121 = arg1.props.Terrain:get()
   arg1._raycastParams.FilterDescendantsInstances = {}
   arg1._onInputBeganConnection = var2.InputBegan:Connect(arg1.onInputBegan)
end

function var4.willUnmount(arg1)
   if arg1._onInputBeganConnection then
      arg1._onInputBeganConnection:Disconnect()
      arg1._onInputBeganConnection = nil
   end
end

local function fun7(arg1)
   return nil
end

function var4.render(arg1)
   return nil
end

fun7 = var1.withContext
local var134 = {}
var134.Mouse = var1.Mouse
var134.Terrain = require(var0.Src.ContextItems).Terrain
var4 = fun7(var134)(var4)
return var4
