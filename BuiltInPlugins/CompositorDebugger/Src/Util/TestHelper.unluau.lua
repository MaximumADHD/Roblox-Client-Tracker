-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.ReactRoblox)
local var2 = require(var0.Packages.Dev.Rhodium)
local var3 = require(var0.Src.Util.debugFlags)
local var4 = {}
function var4.findDeepInstance(arg1, arg2)
   if arg1 then
      if arg2 then
         local var0 = 0
         if var0 < arg2 then
            var0 = arg2
            local var0 = table.remove(var0, 1)
            if var0 then
               local var0 = arg1:FindFirstChild(var0)
               if not var0 then
                  print(string.format("WARN: Cannot find child %s of instance %s", var0, arg1.Name))
                  return nil
               end
               local var45 = var4
               var45 = var0
               return var45.findDeepInstance(var45, arg2)
            end
            return nil
         end
      end
   end
   return arg1
end

function var4.getLayerView(arg1)
   local var51 = var4
   var51 = arg1
   local var0 = "Child"
   local var1 = "LayerData"
   return var51.findDeepInstance(var51, { "MainSplitPane", "Contents", "Pane 2" })
end

function var4.getLayerTree(arg1)
   local var61 = var4
   var61 = arg1
   local var0 = "Pane 1"
   local var1 = "Child"
   return var61.findDeepInstance(var61, { "MainSplitPane", "Contents" })
end

function var4.getLayerViewItem(arg1, arg2)
   if var3.ShowLayerID then
      local var0 = arg2 + 1
   end
   local var74 = var4
   var74 = arg1
   local var0 = "List"
   local var1 = "Child"
   local var2 = tostring(arg2)
   return var74.findDeepInstance(var74, { "Contents" })
end

function var4.getLayerViewLabel(arg1, arg2)
   local var86 = var4
   var86 = arg1
   local var90 = var4
   var90 = var86.getLayerViewItem(var86, arg2)
   local var1 = "1"
   local var2 = "Left"
   local var3 = "Text"
   return var90.findDeepInstance(var90, {})
end

function var4.getLayerViewValue(arg1, arg2)
   local var99 = var4
   var99 = arg1
   local var103 = var4
   var103 = var99.getLayerViewItem(var99, arg2)
   local var1 = "2"
   local var2 = "Left"
   local var3 = "Text"
   return var103.findDeepInstance(var103, {})
end

function var4.getLayerViewTextBox(arg1, arg2)
   local var112 = var4
   var112 = arg1
   local var116 = var4
   var116 = var112.getLayerViewItem(var112, arg2)
   local var1 = "TextInput"
   local var2 = "Contents"
   local var3 = "TextBox"
   local var4 = "TextBox"
   return var116.findDeepInstance(var116, { "2", "Left", "Text", "PropertyCell", "Content" })
end

function var4.getLayerViewCheckBox(arg1, arg2)
   local var131 = var4
   var131 = arg1
   local var135 = var4
   var135 = var131.getLayerViewItem(var131, arg2)
   local var1 = "Text"
   local var2 = "Content"
   local var3 = "Contents"
   local var4 = "TextButton"
   return var135.findDeepInstance(var135, { "2", "Left" })
end

function var4.getLayerViewDeleteButton(arg1, arg2)
   local var147 = var4
   var147 = arg1
   local var151 = var4
   var151 = var147.getLayerViewItem(var147, arg2)
   local var1 = "2"
   local var2 = "Right"
   local var3 = "Action 1"
   return var151.findDeepInstance(var151, {})
end

function var4.getLayerTreeItem(arg1, arg2)
   local var160 = var4
   var160 = arg1
   local var0 = "Contents"
   local var1 = "List"
   local var2 = tostring(arg2)
   return var160.findDeepInstance(var160, {})
end

function var4.clickComponent(arg1, arg2)
   local var172 = var2.Element
   var172 = arg1
   local var1 = var172.new(var172):getCenter()
   var1.act(function(arg1, arg2)
      if arg1 then
         if arg2 then
            local var0 = 0
            if var0 < arg2 then
               var0 = arg2
               local var0 = table.remove(var0, 1)
               if var0 then
                  local var0 = arg1:FindFirstChild(var0)
                  if not var0 then
                     print(string.format("WARN: Cannot find child %s of instance %s", var0, arg1.Name))
                     return nil
                  end
                  local var196 = var4
                  var196 = var0
                  return var196.findDeepInstance(var196, arg2)
               end
               return nil
            end
         end
      end
      return arg1
   end)
end

function var4.clearText(arg1)
   local var203 = var2.Element
   var203 = arg1
   local var0 = var203.new(var203)
   var1.act(function(arg1, arg2)
      if arg1 then
         if arg2 then
            local var0 = 0
            if var0 < arg2 then
               var0 = arg2
               local var0 = table.remove(var0, 1)
               if var0 then
                  local var0 = arg1:FindFirstChild(var0)
                  if not var0 then
                     print(string.format("WARN: Cannot find child %s of instance %s", var0, arg1.Name))
                     return nil
                  end
                  local var225 = var4
                  var225 = var0
                  return var225.findDeepInstance(var225, arg2)
               end
               return nil
            end
         end
      end
      return arg1
   end)
end

function var4.sendText(arg1, arg2)
   local var233 = var2.Element
   var233 = arg1
   local var0 = var233.new(var233)
   var1.act(function(arg1, arg2)
      if arg1 then
         if arg2 then
            local var0 = 0
            if var0 < arg2 then
               var0 = arg2
               local var0 = table.remove(var0, 1)
               if var0 then
                  local var0 = arg1:FindFirstChild(var0)
                  if not var0 then
                     print(string.format("WARN: Cannot find child %s of instance %s", var0, arg1.Name))
                     return nil
                  end
                  local var255 = var4
                  var255 = var0
                  return var255.findDeepInstance(var255, arg2)
               end
               return nil
            end
         end
      end
      return arg1
   end)
end

function var4.dragComponent(arg1, arg2)
   local var263 = var2.Element
   var263 = arg1
   local var1 = var263.new(var263):getCenter()
   var1.act(function(arg1, arg2)
      if arg1 then
         if arg2 then
            local var0 = 0
            if var0 < arg2 then
               var0 = arg2
               local var0 = table.remove(var0, 1)
               if var0 then
                  local var0 = arg1:FindFirstChild(var0)
                  if not var0 then
                     print(string.format("WARN: Cannot find child %s of instance %s", var0, arg1.Name))
                     return nil
                  end
                  local var287 = var4
                  var287 = var0
                  return var287.findDeepInstance(var287, arg2)
               end
               return nil
            end
         end
      end
      return arg1
   end)
end

function var4.checkLayerViewItemLabels(arg1, arg2, arg3, arg4)
   local var296 = var4
   var296 = arg1
   local var1 = var296.getLayerViewLabel(var296, arg2)
   assert(var1)
   if var1.Text ~= arg3 then
      return false
   end
   local var304 = var4
   var304 = arg1
   local var3 = var304.getLayerViewValue(var304, arg2)
   if arg4 then
      assert(var3)
      if var3.Text ~= arg4 then
         local var0 = false
      end
      return true
   end
   if var3 == "getLayerViewLabel" then
      local var0 = false
   end
   return true
end

return var4
