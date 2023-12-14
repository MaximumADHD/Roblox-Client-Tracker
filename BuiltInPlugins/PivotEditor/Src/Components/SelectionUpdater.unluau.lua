-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("Selection")
local var2 = require(var0.Src.Utility.StatusMessage)
local function fun0(arg1)
   local var0 = arg1
   if var0 then
      if arg1:IsA("PVInstance") then
         local var0 = false
         if arg1 ~= workspace then
            if arg1 == "workspace" then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return var0
end

local var3 = require(var0.Packages.Roact).PureComponent:extend("SelectionUpdater")
function var3.init(arg1)
   assert(arg1.props.selectObjectForEditing, "selectObjectForEditing is required")
   assert(arg1.props.selectInvalidSelection, "selectInvalidSelection is required")
end

function var3.didMount(arg1)
   arg1._connection = var1.SelectionChanged:Connect(function(arg1)
      local var0 = arg1
      if var0 then
         if arg1:IsA("PVInstance") then
            local var0 = false
            if arg1 ~= workspace then
               if arg1 == "workspace" then
                  local var0 = false
               end
               local var0 = true
            end
         end
      end
      return var0
   end)
   arg1:_update()
end

function var3.willUnmount(arg1)
   arg1._connection:Disconnect()
end

function var3.render(arg1)
end

function var3._update(arg1)
   local var0 = var1:Get()
   if var0 == 1 then
      local var0 = var0[1]
      local var1 = arg1.props.targetObject
      if var1 ~= var0 then
         var1 = var0
         if var1 then
            if var0:IsA("PVInstance") then
               local var0 = false
               if var0 ~= workspace then
                  if var0 == "PVInstance" then
                     local var0 = false
                  end
                  local var0 = true
               end
            end
         end
         if var1 then
            local var79 = arg1.props
            var79 = var0
            var79.selectObjectForEditing(var79)
         end
         arg1.props.selectInvalidSelection(var2.InvalidTarget)
         if 1 < var0 then
            arg1.props.selectInvalidSelection(var2.MultipleSelection)
         end
         arg1.props.selectInvalidSelection(var2.NoSelection)
      end
   end
   if 1 < var0 then
      arg1.props.selectInvalidSelection(var2.MultipleSelection)
   end
   arg1.props.selectInvalidSelection(var2.NoSelection)
end

return var3
