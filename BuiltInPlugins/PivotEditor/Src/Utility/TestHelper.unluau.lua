-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.DraggerSchemaCore.DraggerSchema)
local var3 = require(var0.Src.Reducers.MainReducer)
local var4 = require(var0.Src.Utility.MockDraggerContext_Pivot)
local function fun0()
   return workspace:FindFirstChild("TempInstancesFolder")
end

local function fun1()
   return game.CoreGui:FindFirstChild("TempScreenGui")
end

local var5 = {}
function var5.cleanTempInstances()
   local var0 = workspace:FindFirstChild("TempInstancesFolder")
   if var0 then
      var0:Destroy()
   end
   local var1 = game.CoreGui:FindFirstChild("TempScreenGui")
   if var1 then
      var1:Destroy()
   end
end

function var5.getTempInstancesFolder()
   local var0 = workspace:FindFirstChild("TempInstancesFolder")
   if var0 then
      return var0
   end
   var0 = Instance.new("Folder")
   var0.Name = "TempInstancesFolder"
   var0.Parent = workspace
   return var0
end

function var5.getTempScreenGui()
   local var0 = game.CoreGui:FindFirstChild("TempScreenGui")
   if var0 then
      return var0
   end
   var0 = Instance.new("ScreenGui", game.CoreGui)
   var0.Name = "TempScreenGui"
   var0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   return var0
end

function var5.createInstance(arg1)
   local var0 = Instance.new(arg1)
   var0.Parent = var5.getTempInstancesFolder()
   return var0
end

function var5.createTestDraggerContext(arg1)
   arg1 = arg1 or var5.getTempScreenGui()
   local var78 = var4
   var78 = arg1
   return var78.new(var78, var2.Selection.new())
end

function var5.createTestStore()
   local var86 = var1
   return var1.Store.new(var3, nil, { var86.thunkMiddleware, var1 })
end

return var5
