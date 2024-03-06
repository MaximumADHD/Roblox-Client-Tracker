-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = require(var0.Src.TagManager)
local var6 = var3.UI
local var7 = var6.HoverArea
local var8 = var6.IconButton
local var9 = var6.Pane
local var10 = var6.TextLabel
local var11 = var3.Util.LayoutOrderIterator
local var12 = var2.PureComponent:extend("TagListUnknownRow")
function var12.init(arg1)
   function arg1.onRegister()
      local var0 = arg1.props
      if var0.assigningGroup == "props" then
         if var0.assigningGroup == "" then
            local var0 = false
         end
         local var0 = true
      end
      var5.Get():AddTag(var0.TagName)
      if false then
         var5.Get():SetGroup(var0.TagName, var0.assigningGroup)
      end
   end
   
end

local function fun12(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.TagListUnknownRow
   local var2 = var11.new()
   local var360 = {}
   var360.LayoutOrder = var0.LayoutOrder
   var360.Size = var1.Size
   var360.Layout = Enum.FillDirection.Horizontal
   var360.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var360.Spacing = var1.Spacing
   var360.Padding = var1.PaddingIndented
   local var367 = {}
   local var371 = {}
   var371.LayoutOrder = var2:getNextOrder()
   var371.Size = var1.CheckboxSize
   local var375 = {}
   local var379 = {}
   var379.BackgroundStyle = "None"
   var379.LeftIcon = var1.AssignIcon
   var379.OnClick = arg1.onRegister
   var379.IconColor = var1.AssignIconColor
   var379.TooltipText = var0.Localization:getText("Tooltip", "RegisterTag")
   var375.RegisterGroupButton = var2.createElement(var8, var379)
   local var392 = {}
   var392.Cursor = "PointingHand"
   var375.HoverArea = var2.createElement(var7, var392)
   var367.CheckboxPane = var2.createElement(var9, var371, var375)
   local var399 = {}
   var399.LayoutOrder = var2:getNextOrder()
   var399.Text = var0.TagName
   var399.Size = var1.TextSize
   var399.TextXAlignment = Enum.TextXAlignment.Left
   var367.NameText = var2.createElement(var10, var399)
   return var2.createElement(var9, var360, var367)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.TagListUnknownRow
   local var2 = var11.new()
   local var360 = {}
   var360.LayoutOrder = var0.LayoutOrder
   var360.Size = var1.Size
   var360.Layout = Enum.FillDirection.Horizontal
   var360.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var360.Spacing = var1.Spacing
   var360.Padding = var1.PaddingIndented
   local var367 = {}
   local var371 = {}
   var371.LayoutOrder = var2:getNextOrder()
   var371.Size = var1.CheckboxSize
   local var375 = {}
   local var379 = {}
   var379.BackgroundStyle = "None"
   var379.LeftIcon = var1.AssignIcon
   var379.OnClick = arg1.onRegister
   var379.IconColor = var1.AssignIconColor
   var379.TooltipText = var0.Localization:getText("Tooltip", "RegisterTag")
   var375.RegisterGroupButton = var2.createElement(var8, var379)
   local var392 = {}
   var392.Cursor = "PointingHand"
   var375.HoverArea = var2.createElement(var7, var392)
   var367.CheckboxPane = var2.createElement(var9, var371, var375)
   local var399 = {}
   var399.LayoutOrder = var2:getNextOrder()
   var399.Text = var0.TagName
   var399.Size = var1.TextSize
   var399.TextXAlignment = Enum.TextXAlignment.Left
   var367.NameText = var2.createElement(var10, var399)
   return var2.createElement(var9, var360, var367)
end

fun12 = var4.withContext
local var407 = {}
var407.Analytics = var4.Analytics
var407.Localization = var4.Localization
var407.Stylizer = var3.Style.Stylizer
var12 = fun12(var407)(var12)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.assigningGroup = arg1.AssigningGroup
   return var0
end, function(arg1)
   return {}
end)(var12)
