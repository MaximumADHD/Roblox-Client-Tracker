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
   local var367 = {}
   var367.LayoutOrder = var0.LayoutOrder
   var367.Size = var1.Size
   var367.Layout = Enum.FillDirection.Horizontal
   var367.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var367.Spacing = var1.Spacing
   var367.Padding = var1.PaddingIndented
   local var374 = {}
   local var378 = {}
   var378.LayoutOrder = var2:getNextOrder()
   var378.Size = var1.CheckboxSize
   local var382 = {}
   local var386 = {}
   var386.BackgroundStyle = "None"
   var386.LeftIcon = var1.AssignIcon
   var386.OnClick = arg1.onRegister
   var386.IconColor = var1.AssignIconColor
   var386.TooltipText = var0.Localization:getText("Tooltip", "RegisterTag")
   var382.RegisterGroupButton = var2.createElement(var8, var386)
   local var399 = {}
   var399.Cursor = "PointingHand"
   var382.HoverArea = var2.createElement(var7, var399)
   var374.CheckboxPane = var2.createElement(var9, var378, var382)
   local var406 = {}
   var406.LayoutOrder = var2:getNextOrder()
   var406.Text = var0.TagName
   var406.Size = var1.TextSize
   var406.TextXAlignment = Enum.TextXAlignment.Left
   var374.NameText = var2.createElement(var10, var406)
   return var2.createElement(var9, var367, var374)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.TagListUnknownRow
   local var2 = var11.new()
   local var367 = {}
   var367.LayoutOrder = var0.LayoutOrder
   var367.Size = var1.Size
   var367.Layout = Enum.FillDirection.Horizontal
   var367.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var367.Spacing = var1.Spacing
   var367.Padding = var1.PaddingIndented
   local var374 = {}
   local var378 = {}
   var378.LayoutOrder = var2:getNextOrder()
   var378.Size = var1.CheckboxSize
   local var382 = {}
   local var386 = {}
   var386.BackgroundStyle = "None"
   var386.LeftIcon = var1.AssignIcon
   var386.OnClick = arg1.onRegister
   var386.IconColor = var1.AssignIconColor
   var386.TooltipText = var0.Localization:getText("Tooltip", "RegisterTag")
   var382.RegisterGroupButton = var2.createElement(var8, var386)
   local var399 = {}
   var399.Cursor = "PointingHand"
   var382.HoverArea = var2.createElement(var7, var399)
   var374.CheckboxPane = var2.createElement(var9, var378, var382)
   local var406 = {}
   var406.LayoutOrder = var2:getNextOrder()
   var406.Text = var0.TagName
   var406.Size = var1.TextSize
   var406.TextXAlignment = Enum.TextXAlignment.Left
   var374.NameText = var2.createElement(var10, var406)
   return var2.createElement(var9, var367, var374)
end

fun12 = var4.withContext
local var414 = {}
var414.Analytics = var4.Analytics
var414.Localization = var4.Localization
var414.Stylizer = var3.Style.Stylizer
var12 = fun12(var414)(var12)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.assigningGroup = arg1.AssigningGroup
   return var0
end, function(arg1)
   return {}
end)(var12)
