-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(script.FieldTreeRow)
local var4 = var2.DeveloperTools.RoactInspectorApi
local var5 = require(var0.Packages.Dash)
local var6 = var5.flat
local var7 = var5.values
local var8 = table.sort
local var9 = var2.ContextServices
local var10 = var2.UI.TreeView
local var11 = var0.Src.Actions
local var12 = require(var11.RoactInspector.SelectField)
local var13 = require(var11.RoactInspector.ToggleField)
local var14 = var1.PureComponent:extend("FieldsTable")
function var14.init(arg1)
   function arg1.onToggleField(arg1)
      local var0 = arg1.item
      local var1 = arg1.props.Expansion[var0]
      arg1.item = var1
      arg1.props.toggleField({})
      if var1 then
         local var0 = arg1.props.Inspector:get():getTargetApi()
         local var71 = var4
         var71 = var0
         if var71.isInstance(var71) then
            var0:getFields(arg1.props.SelectedPath, arg1.props.SelectedNodeIndex, var0.Path)
         end
      end
   end
   
   function arg1.onSelectField(arg1)
   end
   
   function arg1.getRowProps(arg1, arg2, arg3, arg4)
      local var0 = {}
      var0.Row = arg1
      var0.OnSelect = arg1.onSelectField
      var0.OnToggle = arg1.onToggleField
      var0.IsExpanded = arg1.props.Expansion[arg1.item]
      var0.IsSelected = false
      var0.Position = arg3
      var0.Style = arg1.props.Stylizer
      var0.Size = arg4
      return var0
   end
   
end

local function var15(arg1)
   local var0 = var7(arg1.Children or {})
   var8(var0, function(arg1, arg2)
      if typeof(arg1) == "tostring" then
         if arg2.Name > arg1.Name then
            local var0 = false
         end
         return true
      end
      if tostring(arg2.Name) > tostring(arg1.Name) then
         local var0 = false
      end
      return true
   end)
   return var0
end

local function fun6(arg1)
   local var0 = arg1.props.Root.Children
   local var136 = {}
   var136.Name = "Props"
   var136.IsHeading = true
   local var143 = {}
   var143.Name = "State"
   var143.IsHeading = true
   local var148 = var15(var0.state)
   local var149 = {}
   local var150 = {}
   var150.Name = "Context"
   var150.IsHeading = true
   local var155 = var15(var0._context)
   local var160 = {}
   var160.Size = UDim2.new(1, 0, 1, 0)
   var160.Expansion = arg1.props.Expansion
   var160.RootItems = var6({ {}, var15(var0.props), {} })
   var160.RowComponent = var3
   var160.GetChildren = var15
   var160.GetRowProps = arg1.getRowProps
   var160.ScrollingDirection = Enum.ScrollingDirection.Y
   var160.Style = "BorderBox"
   return var1.createElement(var10, var160)
end

function var14.render(arg1)
   local var0 = arg1.props.Root.Children
   local var136 = {}
   var136.Name = "Props"
   var136.IsHeading = true
   local var143 = {}
   var143.Name = "State"
   var143.IsHeading = true
   local var148 = var15(var0.state)
   local var149 = {}
   local var150 = {}
   var150.Name = "Context"
   var150.IsHeading = true
   local var155 = var15(var0._context)
   local var160 = {}
   var160.Size = UDim2.new(1, 0, 1, 0)
   var160.Expansion = arg1.props.Expansion
   var160.RootItems = var6({ {}, var15(var0.props), {} })
   var160.RowComponent = var3
   var160.GetChildren = var15
   var160.GetRowProps = arg1.getRowProps
   var160.ScrollingDirection = Enum.ScrollingDirection.Y
   var160.Style = "BorderBox"
   return var1.createElement(var10, var160)
end

fun6 = var9.withContext
local var175 = {}
var175.Stylizer = var9.Stylizer
var175.Inspector = require(var0.Src.Util.InspectorContext)
var14 = fun6(var175)(var14)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SelectedPath = arg1.RoactInspector.selectedPath
   var0.SelectedNodeIndex = arg1.RoactInspector.selectedNodeIndex
   var0.Root = arg1.RoactInspector.fields
   var0.Selection = arg1.RoactInspector.selectedFields
   var0.Expansion = arg1.RoactInspector.expandedFields
   return var0
end, function(arg1)
   local var0 = {}
   function var0.selectField(arg1)
      local var0 = arg1.item
      local var1 = arg1.props.Expansion[var0]
      arg1.item = var1
      arg1.props.toggleField({})
      if var1 then
         local var0 = arg1.props.Inspector:get():getTargetApi()
         local var214 = var4
         var214 = var0
         if var214.isInstance(var214) then
            var0:getFields(arg1.props.SelectedPath, arg1.props.SelectedNodeIndex, var0.Path)
         end
      end
   end
   
   function var0.toggleField(arg1)
   end
   
   return var0
end)(var14)
