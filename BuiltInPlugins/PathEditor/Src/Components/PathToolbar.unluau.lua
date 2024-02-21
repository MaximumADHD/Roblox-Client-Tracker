-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Packages.ViewportToolingFramework).Toolbar
local var5 = var0.Src.Actions
local var6 = require(var5.ToggleAddPointTool)
local var7 = require(var5.ToggleAddTangentTool)
local var8 = require(var5.ToggleDone)
local var9 = require(var5.ToggleMirrored)
local var10 = require(var5.ToggleMoveTool)
local var11 = require(var5.ToolbarHovered)
local var12 = var0.Src.Thunks
local var13 = require(var12.AddControlPointTangent)
local var14 = require(var12.ClearControlPointTangent)
local var15 = require(var12.RemoveControlPoint)
local var16 = require(var0.Src.Util.getShortcuts)()
local var17 = var2.PureComponent:extend("PathToolbar")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.PathToolbar
   local var2 = var0.Localization
   if not var0.SelectedObject then
      return nil
   end
   local var3 = {}
   local var80 = {}
   var80.Type = "Radio"
   var80.Value = var0.Path2DToolMode
   function var80.OnChange(arg1)
      if arg1 == "Move" then
         var0.dispatchToggleMoveTool()
      end
      if arg1 == "AddPoint" then
         var0.dispatchToggleAddPointTool()
      end
      if arg1 == "AddTangent" then
         var0.dispatchToggleAddTangentTool()
      end
   end
   
   local var90 = {}
   local var91 = {}
   local var92 = "Move"
   var91.Id = var92
   var92 = `{var2:getText("Info", "SelectTool")}(%*)`
   var91.Tooltip = var92
   var91.Icon = var1.MoveImage
   local var103 = {}
   local var104 = "AddPoint"
   var103.Id = var104
   var104 = `{var2:getText("Info", "AddPointTool")}(%*)`
   var103.Tooltip = var104
   var103.Icon = var1.AddPointImage
   local var8 = {}
   local var116 = "AddTangent"
   var8.Id = var116
   var116 = `{var2:getText("Info", "AddTangentTool")}(%*)`
   var8.Tooltip = var116
   var8.Icon = var1.AddTangentImage
   var80.Items = var90
   if var0.Path2DToolMode == "DoneEditing" then
      local var128 = {}
      var128.Type = "TextButton"
      var128.Text = var2:getText("Info", "Done")
      var128.OnClick = var0.dispatchToggleDone
      var90 = var3
      table.insert(var90, var128)
   end
   local var139 = {}
   var139.DisplayOrder = 4
   var139.HorizontalItems = var3
   return var2.createElement(var4, var139)
end

function var17.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.PathToolbar
   local var2 = var0.Localization
   if not var0.SelectedObject then
      return nil
   end
   local var3 = {}
   local var80 = {}
   var80.Type = "Radio"
   var80.Value = var0.Path2DToolMode
   function var80.OnChange(arg1)
      if arg1 == "Move" then
         var0.dispatchToggleMoveTool()
      end
      if arg1 == "AddPoint" then
         var0.dispatchToggleAddPointTool()
      end
      if arg1 == "AddTangent" then
         var0.dispatchToggleAddTangentTool()
      end
   end
   
   local var90 = {}
   local var91 = {}
   local var92 = "Move"
   var91.Id = var92
   var92 = `{var2:getText("Info", "SelectTool")}(%*)`
   var91.Tooltip = var92
   var91.Icon = var1.MoveImage
   local var103 = {}
   local var104 = "AddPoint"
   var103.Id = var104
   var104 = `{var2:getText("Info", "AddPointTool")}(%*)`
   var103.Tooltip = var104
   var103.Icon = var1.AddPointImage
   local var8 = {}
   local var116 = "AddTangent"
   var8.Id = var116
   var116 = `{var2:getText("Info", "AddTangentTool")}(%*)`
   var8.Tooltip = var116
   var8.Icon = var1.AddTangentImage
   var80.Items = var90
   if var0.Path2DToolMode == "DoneEditing" then
      local var128 = {}
      var128.Type = "TextButton"
      var128.Text = var2:getText("Info", "Done")
      var128.OnClick = var0.dispatchToggleDone
      var90 = var3
      table.insert(var90, var128)
   end
   local var139 = {}
   var139.DisplayOrder = 4
   var139.HorizontalItems = var3
   return var2.createElement(var4, var139)
end

fun1 = var3.withContext
local var142 = {}
var142.Mouse = var3.Mouse
var142.Plugin = var3.Plugin
var142.Stylizer = var3.Stylizer
var142.Localization = var3.Localization
var17 = fun1(var142)(var17)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ControlPointStates = arg1.PathReducer.ControlPointStates
   var0.SelectedObject = arg1.PathReducer.SelectedObject
   var0.Path2DToolMode = arg1.PathReducer.Path2DToolMode
   var0.SelectedControlPointIndex = arg1.PathReducer.SelectedControlPointIndex
   var0.SelectedTangentSide = arg1.PathReducer.SelectedTangentSide
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchToggleAddPointTool(arg1)
      if arg1 == "Move" then
         var0.dispatchToggleMoveTool()
      end
      if arg1 == "AddPoint" then
         var0.dispatchToggleAddPointTool()
      end
      if arg1 == "AddTangent" then
         var0.dispatchToggleAddTangentTool()
      end
   end
   
   function var0.dispatchToggleAddTangentTool(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer.PathToolbar
      local var2 = var0.Localization
      if not var0.SelectedObject then
         return nil
      end
      local var3 = {}
      local var177 = {}
      var177.Type = "Radio"
      var177.Value = var0.Path2DToolMode
      function var177.OnChange(arg1)
         if arg1 == "Move" then
            var0.dispatchToggleMoveTool()
         end
         if arg1 == "AddPoint" then
            var0.dispatchToggleAddPointTool()
         end
         if arg1 == "AddTangent" then
            var0.dispatchToggleAddTangentTool()
         end
      end
      
      local var187 = {}
      local var188 = {}
      local var189 = "Move"
      var188.Id = var189
      var189 = `{var2:getText("Info", "SelectTool")}(%*)`
      var188.Tooltip = var189
      var188.Icon = var1.MoveImage
      local var200 = {}
      local var201 = "AddPoint"
      var200.Id = var201
      var201 = `{var2:getText("Info", "AddPointTool")}(%*)`
      var200.Tooltip = var201
      var200.Icon = var1.AddPointImage
      local var8 = {}
      local var213 = "AddTangent"
      var8.Id = var213
      var213 = `{var2:getText("Info", "AddTangentTool")}(%*)`
      var8.Tooltip = var213
      var8.Icon = var1.AddTangentImage
      var177.Items = var187
      if var0.Path2DToolMode == "DoneEditing" then
         local var225 = {}
         var225.Type = "TextButton"
         var225.Text = var2:getText("Info", "Done")
         var225.OnClick = var0.dispatchToggleDone
         var187 = var3
         table.insert(var187, var225)
      end
      local var236 = {}
      var236.DisplayOrder = 4
      var236.HorizontalItems = var3
      return var2.createElement(var4, var236)
   end
   
   function var0.dispatchToggleDone(arg1, arg2)
      local var0 = {}
      var0.ControlPointStates = arg1.PathReducer.ControlPointStates
      var0.SelectedObject = arg1.PathReducer.SelectedObject
      var0.Path2DToolMode = arg1.PathReducer.Path2DToolMode
      var0.SelectedControlPointIndex = arg1.PathReducer.SelectedControlPointIndex
      var0.SelectedTangentSide = arg1.PathReducer.SelectedTangentSide
      return var0
   end
   
   function var0.dispatchToggleMoveTool()
      arg1(var10())
   end
   
   function var0.dispatchRemoveControlPoint()
      arg1(var15())
   end
   
   function var0.dispatchClearControlPointTangent()
      arg1(var14())
   end
   
   function var0.dispatchClearControlPointTangents()
      arg1(var14())
   end
   
   function var0.dispatchToolbarHovered()
      arg1(var11())
   end
   
   function var0.dispatchAddControlPointTangent(arg1, arg2)
      arg1(var13(arg1, arg2))
   end
   
   function var0.dispatchToggleMirrored(arg1)
      arg1(var9(arg1, "Left"))
      arg1(var9(arg1, "Right"))
   end
   
   return var0
end)(var17)
